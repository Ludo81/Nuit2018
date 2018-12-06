<%-- 
    Document   : index
    Created on : 6 déc. 2018, 20:35:34
    Author     : Taffoureau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <link href="Css/index.css" rel="stylesheet" id="css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        
        <title>Index</title>
    </head>
    <body>
        <!------------------ Tiles --------------->
        <div class="container mt-40">
            <div class="row mt-30">
                <div class="col-md-4 col-sm-6">
                    <div class="tiles">
                        <img src="img/sante.png" alt="sante">
                        <div class="box-content">
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                            <h3 class="title">Santé</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="tiles">
                        <img src="img/meteo.png" alt="meteo">
                        <div class="box-content">
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                            <h3 class="title">Météo</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="tiles">
                        <img src="img/position.png" alt="position">
                        <div class="box-content">
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-search"></i></a></li>
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                            <h3 class="title">Localisation</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
