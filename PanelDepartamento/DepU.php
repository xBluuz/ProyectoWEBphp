<?php 
include("./conexion_bd.php");

$inc = true;
if ($inc){
    $consulta = "SELECT d.NombreDepar , l.idDepartamento FROM login AS l 
    LEFT JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    WHERE l.idUser = $_SESSION[id]";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado){
        while($row = $resultado->fetch_object()){
            $nombreDepar = $row->NombreDepar;
            ?>
            <?php echo htmlspecialchars($nombreDepar); ?>
        <?php   
         $_SESSION["idDepartamento"] = $row->idDepartamento;
        }
    }
}
?>
