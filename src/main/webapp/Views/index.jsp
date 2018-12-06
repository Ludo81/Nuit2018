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
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="Css/index.css" rel="stylesheet" id="css">
        <title>Index</title>
    </head>
    <body>
        <h2>CarryHealth</h2>

        <div class="card">
          <img src="img/giletjaune.jpg" alt="Logo" style="width:100%">
          <div class="container">
            <h4><b>Prout</b></h4> 
            <p>Caca du cul</p> 
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
                bodyy.style.backgroundColor = "rgba(0, 0, 0, 0.2)";
            }
			
            btn_nb.onclick = function() {
                bodyy.style.filter = "grayscale(100%)";
                bodyy.style.backgroundColor = "lightgray";
            }
            
             btn_c.onclick = function() {
                bodyy.style.filter = "hue-rotate(90deg)";
            }           
 
             btn_sep.onclick = function() {
                bodyy.style.filter = "sepia(90%)";
            } 
            
            cur.oninput = function() {
                bodyy.style.filter = "brightness("+this.value+")";
            }

        </script> 
    </body>
</html>
