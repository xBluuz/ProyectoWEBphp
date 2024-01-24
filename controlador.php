<?php
include("./conexion_bd.php");
session_start();

if (!empty($_POST['aceptar'])) {
    if (empty($_POST['usuario']) and empty($_POST['contraseña'])) {
        echo "Los Campos estas vacios";
    } else {
        $usuario = $_POST["usuario"];
        $contraseña = $_POST["contraseña"];


        $stmt = $conexion->prepare("SELECT * FROM login WHERE NombreUser=? AND password=?");

        $stmt->bind_param('ss', $usuario, $contraseña);
        $stmt->execute();

        $result = $stmt->get_result();
        if ($datos = $result->fetch_object()) {
            $nivel = $datos->nivel;
            $_SESSION['login'] = True;
            if ($nivel === 1) {
                header('Location: ./PanelAdmin/PanelAdmin.php');
            } else if ($nivel === 2) {
                header('Location: ./PanelUser/PanelUser.php');
            } else {
                echo "<div class='alerta1'>Aceso Denegado</div>";
            }

            
        } else {
            echo "<div class='alerta1'>Aceso Denegado</div>";
        }
    }
}
?>