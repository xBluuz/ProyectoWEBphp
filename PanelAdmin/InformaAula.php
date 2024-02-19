<?php 
include("./conexion_bd.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['AAñadir'])){
    $sql = "INSERT INTO aula (idUbicacion, NombreAula, idDepartamento) VALUES ($_POST[AUbi], '$_POST[AAula]', $_POST[ADepartamento])";
    echo $sql;
    $conexion->query($sql);
    }
    header("location:PanelAdmin.php");
}
?>