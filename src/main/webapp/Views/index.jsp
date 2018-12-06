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
        <link rel="stylesheet" media="screen" href="Css/index.css" type="text/css" />

        
        <title>Index</title>
    </head>
    <body>
        <!------------------ Tiles --------------->  
        <div class="container mt-40">
            <div class="row mt-30">
                <div class="card">
                    <div class="box">
                        <div class="tiles">
                        <img src="img/sante.png" alt="sante">
                            <div class="box-content">
                                <ul class="icon">
                                    <li><a href="#"><img class ="icone" src="img/heart.svg"></a></li>
                                    <li><a href="#"><img class ="icone" src="img/pulse.svg"></a></li>
                                </ul>
                                <h3 class="title">Santé</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="tiles">
                            <img src="img/meteo.png" alt="meteo">
                            <div class="box-content">
                                <ul class="icon">
                                    <li><a href="#"><img class ="icone" src="img/brightness-max.svg"></a></li>
                                    <li><a href="#"><img class ="icone" src="img/brightness-med.svg"></a></li>
                                </ul>
                                <h3 class="title">Météo</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <div class="tiles">
                            <img src="img/position.png" alt="position">
                            <div class="box-content">
                                <ul class="icon">
                                    <li><a href="#"><img class ="icone" src="img/map.svg"></i></a></li>
                                    <li><a href="#"><img class ="icone" src="img/direction.svg"></a></li>
                                </ul>
                                <h3 class="title">Localisation</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="dark_theme" >
            <button type="button" class="btn btn-dark" id="btn_lumi"> Baisser la luminosité </button>
            <button type="button" class="btn btn-dark" id="btn_g"> Griser </button>
            <button type="button" class="btn btn-dark" id="btn_nb"> Mettre en noir et blanc </button>
            <button type="button" class="btn btn-dark" id="btn_c"> Changer les couleurs </button>
            <button type="button" class="btn btn-dark" id="btn_sep"> Sépia </button>
            <input type="range" class="custom-range" min="0" max="1" step="0.01" id="curseur_l">
	</div>
		
		
	<script>
            var bodyy = document.body;
            var btn_l = document.getElementById("btn_lumi");
            var btn_g = document.getElementById("btn_g");
            var btn_nb = document.getElementById("btn_nb");
            var btn_c = document.getElementById("btn_c");
            var btn_sep = document.getElementById("btn_sep");
            var cur = document.getElementById("curseur_l");
            $('#curseur').attr('data-slider');
        //quand on clique sur le bouton ca passe en mode nuit
		
            btn_l.onclick = function() {
                bodyy.style.filter = "brightness(0.5)";
                bodyy.style.backgroundColor = "rgb(128,128,128)";
            }
            
            btn_g.onclick = function() {
                bodyy.style.filter = "grayscale(50%)";
                bodyy.style.backgroundImage = "url('../Views/img/fond_g.jpg')";
            }
			
            btn_nb.onclick = function() {
                bodyy.style.filter = "grayscale(100%)";
                bodyy.style.backgroundImage = "url('../Views/img/fond_nb.jpg')";
            }
            
             btn_c.onclick = function() {
                bodyy.style.filter = "hue-rotate(90deg)";
                bodyy.style.backgroundImage = "url('../Views/img/fond_c.jpg')";
            }           
 
             btn_sep.onclick = function() {
                bodyy.style.filter = "sepia(100%)";
                bodyy.style.backgroundImage = "url('../Views/img/fond_sep.jpg')";
            } 
            
            cur.oninput = function() {
                bodyy.style.filter = "brightness("+this.value+")";
            }

        </script> 
    </body>
</html>
