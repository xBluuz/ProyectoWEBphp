<?php 
include("./conexion_bd.php");

$inc = true;
if ($inc){
    $consulta = "SELECT * FROM aula WHERE idAula = '$_GET[aula]'";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado){
        while($row = $resultado->fetch_object()){
            $idAula = $row->idAula;
            ?>
            <?php echo htmlspecialchars($idAula); ?>
        <?php   
        }
    }
}
?>