<?php
include("./conexion_bd.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['send']) && !empty($_POST["send"]) && isset($_POST['NMaterial']) && !empty($_POST["NMaterial"])) {
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) 
    VALUES ('$_POST[NMaterial]', '$_POST[NAula]', $_POST[NCantidad], $_POST[NProeveedor], $_POST[NMarca], $_POST[NDepartamento])";
    $conexion->query($sql);
    $_POST["NMaterial"]="";
    $_POST['send']="";
    }
    header("location:PanelAdmin.php");
}
?>