<?php
    include("./conexion_bd.php");
    function seleccion($required){
        global $conexion;
        $sql="SELECT * FROM filtro_selec";
        $registros = mysqli_query($conexion,$sql) or die ("Error en la consulta");
        while($linea=mysqli_fetch_array($registros)){
        echo $required == $linea['value']?"<option value='$linea[value]' selected>$linea[Nombre_Selec]</option>":"<option value='$linea[value]'>$linea[Nombre_Selec]</option>";
    }
    }
    
    if(isset($_GET['search']) && !empty($_GET['search'])){
        seleccion($_GET['search']);
    }
    else{
        seleccion(0);
    }
?>