<?php    
include("../conexion_bd.php");

if(isset($_POST['send'])){
    global $conexion;
    $sql= "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) 
    VALUES ('$_POST[NMaterial]', '$_POST[NAula]', $_POST[NCantidad], $_POST[NProeveedor], $_POST[NMarca], $_POST[NDepartamento])";
    mysqli_query($conexion, $sql);  
}
  
    


?>