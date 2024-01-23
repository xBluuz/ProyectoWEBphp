<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styleL.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="https://images.vexels.com/media/users/3/155299/isolated/preview/1988d1faba4d059eb4461d955af5cf61-x-marca-garabato.png">
    <title>xBluuz - Login</title>
</head>

<body>
    <img src="./paisaje.jpg" width="100%" height="100%">
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
                <input class="miInput" type="password" size="32" placeholder="Enter the Password" required name="contraseña">
            </div>
            <?php include("./controlador.php")?>
            <div class="boton">
                <input class="miInputB" type="submit" name="aceptar" value="Sign in">
            </div>
        </div>
    </form>
</body>

</html>