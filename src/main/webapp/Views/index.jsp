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
                                    <li><a data-title="meteoactuelle" data-toggle="modal" data-target="#meteoactuelle"><img class ="icone" src="img/brightness-max.svg"></a></li>
                                    <li><a data-title="meteodemain" data-toggle="modal" data-target="#meteodemain"><img class ="icone" src="img/brightness-med.svg"></a></li>
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
                                    <li><a data-title="meteodemain" data-toggle="modal" data-target="#position"><img class ="icone" src="img/map.svg"></i></a></li>
                                    <li><a href="#"><img class ="icone" src="img/direction.svg"></a></li>
                                </ul>
                                <h3 class="title">Localisation</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="modal fade" id="meteoactuelle" tabindex="-1" role="dialog" aria-labelledby="meteoactuelle" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Heading">Météo actuelle</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <p>Temps : </p>
                        </div>
                        <div class="form-group">
                            <p>Température : </p>
                        </div>
                        <div class="form-group">
                            <p>Pression : </p>
                        </div>
                        <div class="form-group">
                            <p>Taux d'humidité</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="modal fade" id="meteodemain" tabindex="-1" role="dialog" aria-labelledby="meteodemain" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Heading">Météo pour demain</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <p>Temps : </p>
                        </div>
                        <div class="form-group">
                            <p>Température : </p>
                        </div>
                        <div class="form-group">
                            <p>Pression : </p>
                        </div>
                        <div class="form-group">
                            <p>Taux d'humidité</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="position" tabindex="-1" role="dialog" aria-labelledby="position" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title custom_align" id="Heading">Position actuelle</h4>
                    </div>
                    <div class="modal-body">
                        <iframe width="450" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=iut%20paul%20sabatier%20rangeuil&key=AIzaSyBIJMcD8XxmKegQZQM1CE7mDhzGDgpuAI0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
        
  <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modif" id="btnM">Mode nuit</button>
        
         <div id="modif" class="modal fade" tabindex="-1" role="dialog"  >
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Mode nuit</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" id="close">&times; </span>
                  </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                    <div class="btn-group-vertical" id="dark_theme"> 
                        <button type="button" class="btn btn-light" id="btn_lumi"> Baisser la luminosité </button>
                        <button type="button" class="btn btn-light" id="btn_g"> Griser </button>
                        <button type="button" class="btn btn-light" id="btn_nb"> Mettre en noir et blanc </button>
                        <button type="button" class="btn btn-light" id="btn_c"> Changer les couleurs </button>
                        <button type="button" class="btn btn-light" id="btn_sep"> Sépia </button>
                    </div>
                    </div>
                    </div> 
                    <input type="range" class="custom-range" min="0" max="1" step="0.01" id="curseur_l">
                </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-dark" id="btn_annuler"> Annuler </button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close1">Fermer</button>
                    </div>
                </div>
            </div> 
           </div>

	<script>
            var bodyy = document.body;
            var btn_l = document.getElementById("btn_lumi");
            var btn_g = document.getElementById("btn_g");
            var btn_nb = document.getElementById("btn_nb");
            var btn_c = document.getElementById("btn_c");
            var btn_sep = document.getElementById("btn_sep");
            var btn_annuler = document.getElementById("btn_annuler");
            var cur = document.getElementById("curseur_l");

        //quand on clique sur le bouton ca passe en mode nuit
            
            var modal = document.getElementById('modif');
            var btn = document.getElementById("btnM");
            var fermer = document.getElementById("close");
            var fermer1 = document.getElementById("close1");
        //ouverture quand on clique sur le bouton
            btn.onclick = function() {
                modal.style.display = "block";
            }
        //fermeture quand on clique sur la croix   
            fermer.onclick = function() {
                modal.style.display = "none";
            }
        //fermeture quand on clique sur fermer   
            fermer1.onclick = function() {
                modal.style.display = "none";
            }
            
            
            
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
            
            btn_annuler.onclick = function() {
                bodyy.style.filter = "brightness(1) sepia(0%) hue-rotate(0deg) grayscale(0%)";
                bodyy.style.backgroundImage = "url('../Views/img/fond.jpg')";
            }
            
            

        </script>
        
        
        
        
    </body>
</html>
