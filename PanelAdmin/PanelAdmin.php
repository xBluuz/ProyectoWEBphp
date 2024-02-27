<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleU.css">
    <link rel="shortcut icon" href="../Img/logo_salesianos.png">
    <title>Almacen</title>
    <?php
    session_start();
    if ($_SESSION['login']) {

    } else {
        header('Location: ../index.php');
    }
    ?>
</head>

<body onload='activarAnimacionRefresh()'>
    <header>
        <div class="logo_container">
            <img src="../Img/logo_salesianos.png" alt="" class="logo">
            <img src="../Img/logo_con_texto.png" alt="" class="texto_logo">
        </div>
        <div class="texto1">
            <strong>Panel Administrador</strong>
        </div>
        <div class="cs">
            <div class="cs-button">
                <a href="./cs2.php">Cerrar Sesion</a>
            </div>
        </div>
    </header>
    <main>
        <div class="filter_var" id='modal'>
            <div class="filtros">
                <div class="div_filtro_principal">
                    <h2>Ordenar por:</h2>
                    <select name="filtro_principal" id="filtro_principal" class="filtro_principal"
                        onchange="enviarValor(event)" required>
                        <option value="" selected>Todo</option>
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
                <div class="div_boton_crear">
                    <h2>Add Inventario:</h2>
                    <button class="boton_crear" name="boton_crear" id="boton_crear" onclick="activarAnadir()">+</button>
                </div>
            </div>
            <div class="div_boton_filtro">
                <button class="boton_filtro" id="boton_filtro" name="boton_filtro" onclick="activarAnimacion()">></button>
            </div>
        </div>
        <div class="principal">
            <?php include("./InformacionU.php") ?>
            <div class="add" id="anadir" style="display:none;">
                <?php include("./PanelAnadir.php") ?>
            </div>
            <div class="add" id="edit" style="display:none;">
                <?php include("./PanelEditar.php") ?>
            </div>
            <div class="add" id="aula" style="display:none">
                <?php include("./PanelAula.php") ?>
            </div>
            <div class="add" id="Prov" style="display:none">
            <?php include("./PanelProveedor.php") ?>
            </div>
            <div class="add" id="Marca" style="display:none">
            <?php include("./PanelMarca.php") ?>
            </div>
            <div class="add" id="Departs" style="display:none">
            <?php include("./PanelDepart.php") ?>
            </div>
        </div>
    </main>
</body>      
<script src="./PanelAdmin.js"></script>
</html>