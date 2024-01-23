<?php 
include("./conexion_bd.php");

$inc = true;

if ($inc){
    $consulta = "SELECT * FROM login1";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado ){
        while($row = $resultado->fetch_object()){
            $id = $row->id;
            $user = $row->user;
            $email = $row->email;
            ?>
        <div>
            <p>Id: <?php echo htmlspecialchars($id); ?></p>
            <p>Usuario: <?php echo htmlspecialchars($user); ?></p>
            <p>Email: <?php echo htmlspecialchars($email); ?></p>
        </div>
        <?php   
        }
        
    }
    
}
?>
