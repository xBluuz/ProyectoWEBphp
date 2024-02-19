<?php 
include("./conexion_bd.php");
    if (isset($_POST['AAñadir'])){
    $sql = "INSERT INTO aula (idUbicacion, idAula, idDepartamento) VALUES ($_POST[AUbi], '$_POST[AAula]', $_POST[ADepartamento])";
    // echo $sql;
    $conexion->query($sql);
    }
header("location:PanelAdmin.php");
?>