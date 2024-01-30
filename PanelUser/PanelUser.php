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
        header('Location: ../Login.php');
    }
    ?>
    <script>
        var estado_nav= 0;
        const busqueda = window.location.href.split("?")[0];
        const sig = document.getElementById('boton_filtro')
        function enviarValor(event){
            let newUrl = busqueda + "?search=" + event.target.value
            window.location.href = newUrl
        }

        function send(event){
            let newUrl = window.location.href.split("&")[0] + "&value=" + event.target.value
            window.location.href = newUrl
        }
        function activarAnimacion() {
            let filtros = document.getElementById('modal');
            if (localStorage.getItem('estado_nav') == 1) {
                filtros.classList.remove('animado')
                filtros.classList.toggle('pickUp')
                filtros.classList.remove('static')
                //sig.innerHTML = '>'
                localStorage.setItem('estado_nav', 0);
            } else {
                filtros.classList.toggle('animado')
                //sig.innerHTML = '<'
                localStorage.setItem('estado_nav', 1);
            }   
            
            
            
        }
        function activarAnimacionRefresh() {
            const filtros = document.getElementById('modal');
            if (localStorage.getItem('estado_nav') == 1) {
                //sig.innerHTML = '>'
                filtros.classList.toggle('static')
            }
        }
    </script>

</head>

<body onload='activarAnimacionRefresh()'>
    <header>
        <div class="texto1">
            <strong>Panel Usuario de
                <?php include("./DepU.php") ?>
            </strong>
        </div>
        <div class="cs">
            <a href="./cs2.php">Cerrar Sesion</a>
        </div>
    </header>
    <main>
        <div class="filter_var" id='modal'>
            <div class="filtros">
                <div class="div_filtro_principal">
                    <h2>Ordenar por:</h2>
                    <select name="filtro_principal" id="filtro_principal" class="filtro_principal" onchange="enviarValor(event)" required>
                        <option value="" selected>Todo</option>
                        <?php include("./filtro_principal.php") ?>
                    </select>
                </div>
                <div class="div_filtro_secundario">
                    <h2>Seleccionar:</h2>
                    <select name="filtro_secundario" id="filtro_secundario" class="filtro_secundario" onchange="send(event)" >
                        <option value="all" selected>Todo</option>
                        <?php include("./filtro_secundario.php") ?>
                    </select>
                </div>
            </div>
            <div class="div_boton_filtro">
                <button class="boton_filtro" id="boton_filtro" name="boton_filtro" onclick="activarAnimacion()">></button>
            </div>
        </div>
        <div class="principal">
            <?php include("./InformacionU.php") ?>
        </div>
    </main>
</body>

</html>