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
    <script>
        var estado_nav = 0;
        const busqueda = window.location.href.split("?")[0];
        const sig = document.getElementById('boton_filtro')
        function enviarValor(event) {
            let newUrl = busqueda + "?search=" + event.target.value
            window.location.href = newUrl
        }

        function send(event) {
            let newUrl = window.location.href.split("&")[0] + "&value=" + event.target.value
            window.location.href = newUrl
        }
        function activarAnimacion() {
            let filtros = document.getElementById('modal');
            if (localStorage.getItem('estado_nav') == 1) {
                filtros.classList.remove('animado');
                filtros.classList.toggle('pickUp');
                filtros.classList.remove('static');
                //sig.innerHTML = '>'
                localStorage.setItem('estado_nav', 0);
            } else {
                filtros.classList.remove('pickUp')
                filtros.classList.toggle('animado')
                filtros.classList.remove('static')
                //sig.innerHTML = '<'
                localStorage.setItem('estado_nav', 1);
            }



        }
        function activarAnimacionRefresh() {
            const filtros = document.getElementById('modal');
            let id = window.location.href.split("?")[1].split("=")[0];
            if (localStorage.getItem('estado_nav') == 1) {
                //sig.innerHTML = '>'
                filtros.classList.remove('animado')
                filtros.classList.toggle('static')
                filtros.classList.remove('pickUp')
            }
            if (localStorage.getItem('estado_edit') == 1 || id == "Editar") {
                let edit = document.getElementById('edit');
                edit.style.display = 'flex';
            }
        }
        function ConfirmDelete() {
            var respuesta = confirm("¿Estas seguro que deseas eliminar este registro?");
            if (respuesta == true) {
                return true;
            } else {
                return false;
            }
        }
        function activarAñadir() {
            let añadir = document.getElementById('añadir');
            if (añadir.style.display == 'none') {
                añadir.style.display = 'flex';
            } else {
                añadir.style.display = 'none';
            }
        }
        function cerrarAñadir() {
            let añadir = document.getElementById('añadir');
            if (añadir.style.display == 'flex') {
                añadir.style.display = 'none';
            } else {
                añadir.style.display = 'flex';
            }
            console.log('anadir cerrado');
        }
        function refresh() {
            refresh
        }
        function closeEditar() {
            let edit = document.getElementById('edit');
            if (edit.style.display == 'none') {
                localStorage.setItem('estado_edit', 1)
                edit.style.display = 'flex';
            } else {
                localStorage.setItem('estado_edit', 0)
                edit.style.display = 'none';
            }
        }

        function activarEditar(a) {
            var id = a;
            window.location = "PanelAdmin.php?Editar=" + id;

            let edit = document.getElementById('edit');
            if (edit.style.display == 'none') {
                localStorage.setItem('estado_edit', 1)
                edit.style.display = 'flex';
            } else {
                localStorage.setItem('estado_edit', 0)
                edit.style.display = 'none';
            }
            return false;
        }
    </script>
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
                    <h2>Añadir Inventario:</h2>
                    <button class="boton_crear" name="boton_crear" id="boton_crear" onclick="activarAñadir()">+</button>
                </div>
            </div>
            <div class="div_boton_filtro">
                <button class="boton_filtro" id="boton_filtro" name="boton_filtro"
                    onclick="activarAnimacion()">></button>
            </div>
        </div>
        <div class="principal">
            <?php include("./InformacionU.php") ?>
            <div class="add" id="añadir" style="display:none;">
                <?php include("./PanelAñadir.php") ?>
            </div>
            <div class="add" id="edit" style="display:none;">
                <?php include("./PanelEditar.php") ?>
            </div>
            <div class="add">
                <?php include("./PanelAula.php") ?>
            </div>
            <?php include("./PanelProveedor.php") ?>
            <?php include("./PanelMarca.php") ?>
            <?php include("./PanelDepart.php") ?>
        </div>
    </main>

</body>

</html>