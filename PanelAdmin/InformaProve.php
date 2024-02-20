<?php 
include("./conexion_bd.php");
    if (isset($_POST['PAñadir'])){
    $sql = "INSERT INTO `prov`(`Nombre`, `Direccion`, `Municipio`, `Provincia`, `Telefono`, `idTipo`, `idDepartamento`) VALUES ('$_POST[PProv]', '$_POST[PDirec]', '$_POST[PMunic]', '$_POST[PProvi]', $_POST[PTelf], $_POST[PTipo], $_POST[PDepartamento])";
    //echo $sql;
    $conexion->query($sql);
    header("location:PanelAdmin.php");
    }
?>