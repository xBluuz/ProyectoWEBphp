<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleA.css">
    <title>Document</title>
    <?php 
    session_start();
    if($_SESSION['login']){
        
    }else{
        header('Location: ../Login.php');
    }
    ?>
</head>

<body>

    <header>
        <div class="texto1">
            <strong>Panel Administrador de <?php include("./DepA.php")?></strong>
        </div>
        <div class="cs">
            <a href="./cs1.php">Cerrar Sesion</a>
        </div>
    </header>
    <main>
  
    </main>
</body>

</html>