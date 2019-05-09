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
<div id="home-page">
    <div class="container">

        <form class="form-home"  action ="login" method="post">
            <h2 class="form-home-heading text-center" style="padding-left: 1cm; color: red; font-size: 5em">WELLCOM TO MY STORE</h2>
            <div class="home-wrap text-center">

                <br>
                <br>

                <button type="submit"  class="btn btn-theme " ><i class="fa fa-lock"></i>  DANG NHAP</button>


                <br>
                <br>
                <li>
                    <button class="btn btn-primary " onclick="window.location='/admin/pets?guest=FRIENDZ';" type="button" >
                        <i class="fa fa-forward"></i>
                        <span>Show pets store </span>
                    </button>
                </li>

                <br>
                <br>
                <div class="registration">
                    Don't have an account yet?<br/>
                    <a class="" href="/register">
                        Create an account
                    </a>
                </div>
                <br>
                <div>
                    How can you use this web?<br/>
                    <a class="" href="/huongdan">
                        --> Huong dan su dung
                    </a>
                </div>
                <div class="card" >
                    <img class="card-img-top" src="../../resources/static/img/dashboard.png" alt="padding-right">
                    <div class="card-body">
                        <h4 class="card-title">WELCOM TO MY WEBSIZE! WE HAVE A LOT OF PETS FOR YOUR CHOICE</h4>
                        <p class="card-text"></p>
                    </div>
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
