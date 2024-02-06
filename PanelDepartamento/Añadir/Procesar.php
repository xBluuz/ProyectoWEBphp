<?php    
include("../conexion_bd.php");

function addMateriales($NMaterial, $NAula, $NCantidad, $NProeveedor, $NMarca, $NDepartamento)
{
    global $conexion;
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("siiiss",$NMaterial, $NAula, $NCantidad, $NProeveedor, $NMarca, $NDepartamento);

    try {
        $stmt->execute();
        if ($stmt->affected_rows > 0) {
            return true;
        } else {
            return false;
        }
    } catch (mysqli_sql_exception $e) {

        if ($e->getCode() == 1062) {
            return false;
        } else {
            throw $e;
        }
    }
}
?>