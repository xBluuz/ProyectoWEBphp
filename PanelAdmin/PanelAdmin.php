<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleA.css">
    <link rel="shortcut icon" href="./Img/logo_salesianos.png">
    <title>Document</title>
    <?php 
    include("../conexion_bd.php");
    session_start();
    if($_SESSION['login']){
        
    }else{
        header('Location: ../Login.php');
    }
    ?>
    <script>
        const busqueda = window.location.href.split("?")[0];
        function enviarValor(event){
            let newUrl = busqueda + "?search=" + event.target.value
            window.location.href = newUrl
        }
    </script>
</head>

<body>

    <header>
        <div class="texto1">
            <strong>Panel de Administrador</strong>
        </div>
        <div class="cs">
            <a href="./cs1.php">Cerrar Sesion</a>
        </div>
    </header>
    <main>  
        <div class="filtros">
            <div class="div_filtro_principal">
                <h2>Ordenar por:</h2>
                <select name="filtro_principal" id="filtro_principal" class="filtro_principal" onchange="enviarValor(event)" required>
                    <option value="">Todo</option>
                        <?php
                            include ("seleccionar_filtro.php");
                        ?>
                </select>
            </div>
            <div>
                <h2>Seleccionar:</h2>
                <select name="filtro_secundario" id="filtro_secundario" class="filtro_secundario">

                </select>
            </div>
        </div>
    </main>
</body>

</html>