<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleA.css">
    <link rel="shortcut icon" href="../Img/logo_salesianos.png">
    <title>Almacen</title>
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
    <div class="filter_var">
            <div class="filtros">
                <div class="div_filtro_principal">
                    <h2>Ordenar por:</h2>
                    <select name="filtro_principal" id="filtro_principal" class="filtro_principal"
                        onchange="enviarValor(event)" required>
                        <option value="all">Todo</option>
                        <?php include("./filtro_principal.php") ?>
                    </select>
                </div>
                <div class="div_filtro_secundario">
                    <h2>Seleccionar:</h2>
                    <select name="filtro_secundario" id="filtro_secundario" class="filtro_secundario"
                        onchange="send(event)">
                        <option value="all" selected>Todo</option>
                        <?php include("./filtro_secundario.php") ?>
                    </select>
                </div>
            </div>
            <div class="div_boton_filtro">
                <button class="boton_filtro" id="boton_filtro" name="boton_filtro"
                    onclick="activarAnimacion()">></button>
            </div>
        </div>
    </main>
</body>

</html>