<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Pet-Store</title>

    <!-- Favicons -->
    <link href="../../resources/static/img/favicon.png" rel="icon">
    <link href="../../resources/static/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="../../resources/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!--external css-->
    <link href="../../resources/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../../resources/static/css/style.css?v=1.0" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="../../resources/static/lib/gritter/css/jquery.gritter.css" />
    <!-- Custom styles for this template -->

    <link href="../../resources/static/css/style-responsive.css" rel="stylesheet">
    <script src="../../resources/static/lib/chart-master/Chart.js"></script>

   </head>

<body>
<!-- **********************************************************************************************************************************************************
    MAIN CONTENT
    *********************************************************************************************************************************************************** -->
<div id="login-page">
    <div class="c8ontainer">

        <form class="form-login"  action ="admin" method="post">
            <h2 class="form-login-heading">sign in now</h2>
            <div class="login-wrap">
                <input type="text" class="form-control" name="id" placeholder="User ID" autofocus>
                <br>
                <input type="password" class="form-control" name="pass"  placeholder="Password">
                <label class="checkbox">
            <span class="pull-right">
              <input type="checkbox" value="remember-me"> Remember me

            </span>
                    <span class="float:left" >
                        <span style="color: red; ">${loginStatus}</span>

                    </span>

                    <span class="float:left">

            </span>
                </label>
              <button  type="submit" class="btn btn-theme btn-block" ><i class="fa fa-lock"></i> SIGN IN</button>
                <hr>

                <div class="registration">
                    Don't have an account yet?<br/>
                    <a class="" href="/register">
                        Create an account
                    </a>
                    <p>${canhbao}</p>
                </div>
            </div>

        </form>
    </div>
</div>
<!-- js placed at the end of the document so the pages load faster -->
<script src="../../resources/static/lib/jquery/jquery.min.js"></script>
<script src="../../resources/static/lib/bootstrap/js/bootstrap.min.js"></script>
<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="../../resources/static/lib/jquery.backstretch.min.js"></script>
<script>
    $.backstretch("../../resources/static/img/login-bg.jpg", {
        speed: 500
    });
</script>
</body>

</html>
