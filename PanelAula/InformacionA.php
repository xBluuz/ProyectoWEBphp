<?php
include("./conexion_bd.php");
$consulta = "SELECT DISTINCT m.NombreMat, m.idAula, m.Cantidad, p.Nombre, ma.NombreMarca 
FROM login AS l 
INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
INNER JOIN materiales AS m ON a.idAula = m.idAula 
INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
INNER JOIN tipoprod AS tp ON tp.idTipo = p.idTipo 
INNER JOIN ubi AS u ON u.idUbicacion = a.idUbicacion 
WHERE a.idAula = '$_GET[aula]'"; 

    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        while ($row = $resultado->fetch_object()) {
            $NombreMat = $row->NombreMat;
            $idAula = $row->idAula;
            $Cantidad = $row->Cantidad;
            $idProveedor = $row->Nombre;
            $idMarca = $row->NombreMarca;
            ?>
            <div class="card">
                <h3>Nombre del material:</h3>
                <?php echo htmlspecialchars($NombreMat); ?>
                <h3>Id del aula:</h3>
                <?php echo htmlspecialchars($idAula); ?>
                <h3>Cantidad:</h3>
                <?php echo htmlspecialchars($Cantidad); ?>
                <h3>Id del proveedor:</h3>
                <?php echo htmlspecialchars($idProveedor); ?>
                <h3>Id de la marca:</h3>
                <?php echo htmlspecialchars($idMarca); ?>
            </div>
            <?php
        }
    }

?>