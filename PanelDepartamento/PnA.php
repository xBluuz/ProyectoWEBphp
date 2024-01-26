<?php 
include("./conexion_bd.php");

$inc = true;
// echo $_SESSION['nivel'];
if ($inc){
    $consulta = "SELECT d.NombreDepar FROM login AS l 
    LEFT JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    WHERE l.idUser = $_SESSION[nivel]";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado){
        while($row = $resultado->fetch_object()){
            $nombreDepar = $row->NombreDepar;
            ?>
        
            <?php echo htmlspecialchars($nombreDepar); ?>
       
        <?php   
        }
    }
}
?>
