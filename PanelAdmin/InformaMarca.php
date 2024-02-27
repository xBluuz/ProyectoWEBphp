<?php 
include("./conexion_bd.php");
    if (isset($_POST['MAnadir'])){
    $sql = "INSERT INTO `marca`(`NombreMarca`, `idDepartamento`) VALUES ('$_POST[MMarca]', $_POST[MDepartamento])";
    //echo $sql;
    $conexion->query($sql);
    header("location:PanelAdmin.php");
    }
?>