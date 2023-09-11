
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/1da5200486.js" crossorigin="anonymous"></script>
    </head>
    <body class="zoom-75">
        <div id="cuadro">
            <div class="Img2">
              <img src="../img/logoAgua.png" alt="Imagen" style="width: 150px; height: 150px;">
            </div>
            <form style="margin-left: 65px">
                
                <p id="titulo">BIENVENIDO</p>
                <br/>
                <input type="text" class="entrada" placeholder="Eje:Alex12@outlook.com"/>
                <br/><br>
                <input type="password"  class="entrada" placeholder="Eje:ContraseñaSegura"/>
                <br/><br>
                <input type="submit" value="Iniciar sesion" id="boton" name="login"/>
                <br/><br>
                <input type="submit" value="Registrarte" id="boton" name="register"/>
            </form>
            <div class="vertical-line"></div>
            <div class="Img1"style="width: 380px; height: 550px;">
                <img src="../img/tortuga.gif" width="100%" height="100%" style="position:absolute" frameBorder="0" class="giphy-embed" allowFullScreen/>
            </div>
            
        </div>
    </body>
</html>