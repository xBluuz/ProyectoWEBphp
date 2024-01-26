<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleL.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="./Img/logo_salesianos.png">
    <title>Login Almacen</title>

</head>

<body>
    <div class="mainContainer">
    <img src="./Img/fondo.jpg" width="100%" height="100%">
    <form method="post">
        <div class="inicio">
            <div class="login">
                Login
            </div>
            <div class="informacion">
                User
                <br>
                <input class="miInput" type="text" size="32" placeholder="Enter the User" name="usuario">
                <br>
                <br>
                Password
                <br>
                <input class="miInput" type="password" size="32" placeholder="Enter the Password" required
                    name="contraseña">
            </div>

            <div class="boton">
                <input class="miInputB" type="submit" name="aceptar" value="Sign in">
            </div>
        </div>
    </form>
    
    </div>
    <?php include("./controlador.php") ?>
   
</body>
<script>
   document.querySelector('.X').addEventListener('click', function() {
    document.querySelector('.alerta1').classList.add('hide');
}); 
</script>
</html>