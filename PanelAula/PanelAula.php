<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleA.css">
    <link rel="shortcut icon" href="../Img/logo_salesianos.png">
    <title>Almacen</title>
</head>

<body>
    <header>
        <div class="logo_container">
            <img src="../Img/logo_salesianos.png" alt="" class="logo">
            <img src="../Img/logo_con_texto.png" alt="" class="texto_logo">
        </div>
        <div class="texto1">
            <strong>Aula
                <?php include("./DepA.php") ?>
            </strong>
        </div>
    </header>
    <main>
        <div class="principal">
            <?php include("./InformacionA.php") ?>
        </div>
    </main>
</body>

</html>