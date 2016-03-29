module.exports = function(app, passport) {

    // =====================================
    // HOME PAGE (with login links) ========
    // =====================================
    app.get('/', function(req, res) {
        res.render('index.ejs'); // load the index.ejs file
    });

    // =====================================
    // LOGIN ===============================
    // =====================================
    app.get('/sign_in', function(req, res) {

        // render the page and pass in any flash data if it exists
        res.render('sign_in.ejs', { message: req.flash('loginMessage') }); 
    });
    
    app.post('/sign_in', passport.authenticate('local-signin', {
        successRedirect: '/profile',
        failureRedirect: '/sign_in',
        failureFlash : true
    }));

    // =====================================
    // SIGNUP GET ==========================
    // =====================================
    app.get('/sign_up', function(req, res) {

        // render the page and pass in any flash data if it exists
        res.render('sign_up.ejs', { message: req.flash('signupMessage') });
    });
    
    // =====================================
    // SIGNUP POST ===============================
    // =====================================
    app.post('/sign_up', passport.authenticate('local-signup', {
        successRedirect: '/profile',
        failureRedirect: '/sign_up',
        failureFlash : true
    }));
    
    app.get('/profile', isLoggedIn, function(req, res) {
        res.render('profile.ejs', {
            user : req.user // get the user out of session and pass to template
        });
    });
    
    // =====================================
    // FORGOT ==============================
    // =====================================
    app.get('/forgot', function(req, res) {
        res.render('forgot.ejs', { message: req.flash('signupMessage') });
    });
    
    // =====================================
    // FORGOT ==============================
    // =====================================
    app.post('/forgot', function(req, res, next) {
  async.waterfall([
    function(done) {
      crypto.randomBytes(20, function(err, buf) {
        var token = buf.toString('hex');
        done(err, token);
      });
    },
    function(token, done) {
      User.findOne({ email: req.body.email }, function(err, user) {
        if (!user) {
          req.flash('error', 'No account with that email address exists.');
          return res.redirect('/forgot');
        }

        user.resetPasswordToken = token;
        user.resetPasswordExpires = Date.now() + 3600000; // 1 hour

        user.save(function(err) {
          done(err, token, user);
        });
      });
    },
    function(token, user, done) {
      var smtpTransport = nodemailer.createTransport('SMTP', {
        service: 'SendGrid',
        auth: {
          user: '!!! YOUR SENDGRID USERNAME !!!',
          pass: '!!! YOUR SENDGRID PASSWORD !!!'
        }
      });
      var mailOptions = {
        to: user.email,
        from: 'passwordreset@demo.com',
        subject: 'Node.js Password Reset',
        text: 'You are receiving this because you (or someone else) have requested the reset of the password for your account.\n\n' +
          'Please click on the following link, or paste this into your browser to complete the process:\n\n' +
          'http://' + req.headers.host + '/reset/' + token + '\n\n' +
          'If you did not request this, please ignore this email and your password will remain unchanged.\n'
      };
      smtpTransport.sendMail(mailOptions, function(err) {
        req.flash('info', 'An e-mail has been sent to ' + user.email + ' with further instructions.');
        done(err, 'done');
      });
    }
  ], function(err) {
    if (err) return next(err);
    res.redirect('/forgot');
  });
});

    // =====================================
    // LOGOUT ==============================
    // =====================================
    app.get('/logout', function(req, res) {
        req.logout();
        res.redirect('/');
    });


    // =====================================
    // SURVEYS ==============================
    // =====================================
    app.get('/surveys', function(req, res) {
        res.render('surveys.ejs');
        
    });
};

// route middleware to make sure a user is logged in
function isLoggedIn(req, res, next) {

    // if user is authenticated in the session, carry on 
    if (req.isAuthenticated())
        return next();

    // if they aren't redirect them to the home page
    res.redirect('/');
}
