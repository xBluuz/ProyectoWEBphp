<?php 
include("./conexion_bd.php");

$inc = true;

if ($inc){
    $consulta = "SELECT departec.NombreDepar FROM login JOIN departec ON login.idDepartamento = departec.idDepartamento WHERE login.Nivel = 2";
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
