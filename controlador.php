<?php
include("./conexion_bd.php");

if (!empty($_POST['aceptar'])) {
    if (empty($_POST['usuario']) and empty($_POST['contraseña'])) {
        echo "Los Campos estas vacios";
    } else {
        $usuario = $_POST["usuario"];
        $contraseña = hash("sha256", $_POST["contraseña"]);

        $stmt = $conexion->prepare("SELECT * FROM login1 WHERE user=? AND password=?");

        $stmt->bind_param('ss', $usuario, $contraseña);
        $stmt->execute();

        $result = $stmt->get_result();
        if ($datos = $result->fetch_object()) {
            setcookie('login', "True", time() + 0 * 24 * 60 * 60, '/');

            
            if ($usuario == 'Administrador') {
                header('Location: ./Paneles/PanelAdmin.php');
            } else if ($usuario == 'Juan') {
                header('Location: juan.php'); 
            } else {
                echo "<div class='alerta1'>Aceso Denegado</div>";
            }
        }
    }
}
?>