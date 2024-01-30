<?php
include("./conexion_bd.php");

function body($consulta, $conexion)
{

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

            <div class="">
                <p>Nombre del material:
                    <?php echo htmlspecialchars($NombreMat); ?>
                </p>
                <p>Aula:
                    <?php echo htmlspecialchars($idAula); ?>
                </p>
                <p>Cantidad:
                    <?php echo htmlspecialchars($Cantidad); ?>
                </p>
                <p>Proveedor:
                    <?php echo htmlspecialchars($idProveedor); ?>
                </p>
                <p>Marca:
                    <?php echo htmlspecialchars($idMarca); ?>
                </p>
            </div>
            <?php
        }
    }
}

if (isset($_GET['search']) && !empty($_GET['search']) || (isset($_GET['value']) && !empty($_GET['value']))) {
    $types = [
        'aula' => 'a.idAula',
        'prov' => 'p.Nombre',
        'marca' => 'ma.NombreMarca',
        'tipoprod' => 'tp.NombreTipo ',
    ];
    if(isset($_GET['value']) ){
        $types = $types[$_GET['search']];
    }elseif($_GET['search'] == 'all'){
        $types = "";
    }
    // $types = isset($_GET['value']) || $_GET['search'] == 'all' ? '' : $types[$_GET['search']];
    $type = $_GET['search'] == 'all' || !isset($_GET['value']) ? "" : "$types = '$_GET[value]' AND";
    if (isset($_GET['value']) && $_GET['value'] == 'all') {
        $type = "$types = '$_GET[value]' AND";
    }
    $consulta = "SELECT m.NombreMat, m.idAula, m.Cantidad,p.Nombre, ma.NombreMarca FROM login AS l 
    INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
    INNER JOIN materiales AS m ON a.idAula = m.idAula 
    INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
    INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
    INNER JOIN tipoprod AS tp ON tp.idTipo = p.idTipo 
    WHERE $type d.idDepartamento  = $_SESSION[deparamento] AND l.idUser = $_SESSION[id]";
    echo $consulta;
    body($consulta, $conexion);

} else {
    $consulta = "SELECT m.NombreMat, m.idAula, m.Cantidad,p.Nombre, ma.NombreMarca FROM login AS l 
    INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
    INNER JOIN materiales AS m ON a.idAula = m.idAula 
    INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
    INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
    WHERE d.idDepartamento  = $_SESSION[deparamento] AND l.idUser = $_SESSION[id]";
    body($consulta, $conexion);
}
?>