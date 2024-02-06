<?php    
include("../conexion_bd.php");

function addMateriales($NMaterial, $NAula, $NCantidad, $NProeveedor, $NMarca, $NDepartamento){
    global $conexion;
    $NMaterial = $_POST['NMaterial'];
    $NAula = $_POST['NAula'];
    $NCantidad = $_POST['NCantidad'];
    $NProeveedor = $_POST['NProeveedor'];
    $NMarca = $_POST['NMarca'];
    $NDepartamento = $_POST['NDepartamento'];
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) VALUES ('$NMaterial', ' $NAula', $NCantidad, $NProeveedor, $NMarca, $NDepartamento)";
    $resultado = mysqli_query($conexion, $sql); 
    if ($resultado) {
        return true;
    } else {
        return false;
    }

}
?>