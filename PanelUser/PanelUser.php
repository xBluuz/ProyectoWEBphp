<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleU.css">
    <link rel="shortcut icon" href="./Img/logo_salesianos.png">
    <title>Document</title>
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
        function enviarValor(event){
            let newUrl = busqueda + "?search=" + event.target.value
            window.location.href = newUrl
        }
        function activarAnimacion() {
            var estado_nav = obtenerEstadoNav();

            if (estado_nav === "0") {
                var filtros = document.querySelector('.filter_var');
                filtros.classList.toggle('animado');
                estado_nav = "1";
                console.log(estado_nav);
                document.getElementById('boton_filtro').innerHTML = "<";
            } else {
                var filtros = document.querySelector('.filter_var');
                filtros.classList.remove('animado');
                estado_nav = "0";
                console.log(estado_nav);
                document.getElementById('boton_filtro').innerHTML = ">";
            }
            guardarEstadoNav(estado_nav);
        }
        function activarAnimacionRefresh() {
            var estado_nav = obtenerEstadoNav();

            if (estado_nav === "1") {
                var filtros = document.querySelector('.filter_var');
                filtros.classList.toggle('animado');
                document.getElementById('boton_filtro').innerHTML = "<";
            }
            if (estado_nav === "0") {
                var filtros = document.querySelector('.filter_var');
                filtros.classList.remove('animado');
                document.getElementById('boton_filtro').innerHTML = ">";
            }
            guardarEstadoNav(estado_nav);
        }
        function guardarEstadoNav(estado_nav) {
            document.cookie = "estado_nav=" + estado_nav + "; expires=Fri, 31 Dec 9999 23:59:59 GMT"+"path=/";
        }
        function obtenerEstadoNav() {
            var nombre = "estado_nav=";
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].trim();
                if (cookie.indexOf(nombre) === 0) {
                    return cookie.substring(nombre.length, cookie.length);
                }
            }

            return "";
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
        <div class="filter_var">
            <div class="filtros">
                <div class="div_filtro_principal">
                    <h2>Ordenar por:</h2>
                    <select name="filtro_principal" id="filtro_principal" class="filtro_principal" onchange="enviarValor(event)" required>
                        <option value="0">Todo</option>
                        <?php include("./filtro_principal.php") ?>
                    </select>
                </div>
                <div class="div_filtro_secundario">
                    <h2>Seleccionar:</h2>
                    <select name="filtro_secundario" id="filtro_secundario" class="filtro_secundario">
                        <option value="">Todo</option>
                        <?php include("./") ?>
                    </select>
                </div>
                <div class="div_boton_crear">
                    <h2>Añadir Inventario:</h2>
                    <button class="boton_crear" name="boton_crear" id="boton_crear">+</button>
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