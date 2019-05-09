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

        <form class="form-home"  action ="register2" method="post">
            <h2 class="form-home-heading text-center" style="padding-left: 1cm; color: red; font-size: 5em">Thanh Toan Tien</h2>
            <div class="home-wrap text-center">
                <br>
                <br>
                <br>
                <!-- <br>
                <div>
                    <h2 class="text-center">Danh sach hang da chon</h2>
                    <ul>
                      <li><a href="#">Zurich</a></li>
                      <li><a href="#">Geneva</a></li>
                      <li><a href="#">Winterthur</a></li>
                      <li><a href="#">Lausanne</a></li>
                      <li><a href="#">Lucerne</a></li>
                    </ul>
                </div>
                <ol>
                    <li>1 con cho</li>
                    <li>husky</li>
                </ol> -->


                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>

                    </tr>
                    </thead>
                    <tbody>
                    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                    <c:forEach items="${listCheckedPet}" var="pet">
                        <tr>
                            <th scope="row">${pet.idboss}</th>
                            <td>${pet.bossname}</td>
                            <td>${pet.price}</td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
                <br>
                <button class="btn btn-block btn-primary "  type="button" data-toggle="modal" data-target="#modelId" >
                    <i class="fa fa-forward"></i>

                    <span>Thanh toan</span>
                </button>

                <br>
                <br>

                <br>


                <!----modal-->
                <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center " style="background-color: #d9534f">
                                <h3 class="modal-title">Charge Confirm</h3>
                                </button>
                            </div>
                            <div class="modal-body">
                                <h4>Are you sure ?</h4>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"> Khong  <i class="fa fa-heart"></i></button>

                                <button class="btn btn-primary " onclick="window.location='/register2';" type="button" >
                                    <i class="fa fa-plus-circle"></i>
                                    <span>Tinh tien nao ~~</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!---end modal-->


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
