<?php 
include("./conexion_bd.php");
    if (isset($_POST['DAñadir'])){
    $sql = "INSERT INTO `departec`(`NombreDepar`) VALUES ('$_POST[DDepartamento]')";
    //echo $sql;
    $conexion->query($sql);
    header("location:PanelAdmin.php");
    }
?>