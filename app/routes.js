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
    app.get('/create_account', function(req, res) {

        // render the page and pass in any flash data if it exists
        res.render('create_account.ejs', { message: req.flash('signupMessage') });
    });
    
    // =====================================
    // SIGNUP POST ===============================
    // =====================================
    app.post('/create_account', passport.authenticate('local-signup', {
        successRedirect: '/profile',
        failureRedirect: '/create_account',
        failureFlash : true
    }));
    
    app.get('/profile', isLoggedIn, function(req, res) {
        res.render('profile.ejs', {
            user : req.user // get the user out of session and pass to template
        });
    });

    // =====================================
    // LOGOUT ==============================
    // =====================================
    app.get('/logout', function(req, res) {
        req.logout();
        res.redirect('/');
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
