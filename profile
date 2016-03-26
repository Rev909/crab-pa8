<!DOCTYPE html>
<html lang="en">
    
<!-- JAIME PAS TROP LES VOLEURS ET LES FILS DE SALOPES -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRAB</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img class="crab-header" href="#" src="img/crab-logo.png">
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        Bonjour <%= login._id %>
                    </li>
                    <li>
                        <a href="#map">Carte</a>
                    </li>
                    <li>
                        <a href="/logout" class="btn btn-default btn-sm">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>CRAB</h1>
                        <hr class="intro-divider">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pulvinar urna non eros lacinia, ut cursus lectus imperdiet. Ut vitae porta felis, sit amet scelerisque orci. Etiam pellentesque consectetur turpis. Vestibulum ac consectetur nisi, sit amet facilisis arcu. In vel molestie lacus, at tincidunt enim. Duis libero orci, aliquam non rutrum ac, pellentesque ac enim. Mauris pulvinar accumsan ipsum vitae laoreet. Curabitur sed maximus lacus, in aliquet ante. Donec feugiat nunc porttitor sagittis viverra. Duis semper odio ac vestibulum ultricies. Phasellus blandit lectus vitae mi vulputate, sed malesuada tortor tincidunt. Suspendisse ac leo turpis.</p>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->
        <button type="button" class="btn btn-secondary btn-lg">Rejoins-nous !</button>
    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

	<a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Main dans la main,<br>ensemble</h2>
                    <p class="lead">Une équipe de médecins vous accompagne au quotidien pour un mode de vie plus sain. Vous n'êtes pas tous seul dans votre combat.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" id="hands" src="img/hands.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Des programmes riches et<br>adaptés à votre besoin</h2>
                    <p class="lead">Après vous être confronté à notre questionnaire santé, vous pourrez suivre des programmes sportifs, alimentaires ou de désintoxication spécialement étudiés pour vous.</p>
                </div>
                <div class="col-lg-5 col-sm-pull-4  col-sm-6">
                    <img class="img-responsive" src="img/steth.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Suivez votre évolution et<br>reprenez confiance en vous</h2>
                    <p class="lead">Vous pouvez suivre en permanence les fruits de nouveau mode de vie grâce à un tableau de bord détaillé de vos activités.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/ham.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

	<a  name="contact"></a>
    <div class="banner">

        <div class="container">

            <div class="row">
                <div class="col-lg-6">
                    <h2>Keep in touch !</h2>
                </div>
                <div class="col-lg-6">
                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="email.address@example.com">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                    <li>
                        <a href="#map">Carte</a>
                    </li>
                        <li class="footer-menu-divider">&sdot;</li>
                    <li>
                        <a href="create_account.html">Inscription</a>
                    </li>
                        <li class="footer-menu-divider">&sdot;</li>
                    <li>
                        <a href="sign_in.html">Connectez-vous</a>
                    </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; crab.io 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
