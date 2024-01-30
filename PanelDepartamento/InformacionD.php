<?php
include("./conexion_bd.php");

function body($consulta, $conexion) {
     
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        while ($row = $resultado->fetch_object()) {
            $NombreMat = $row->NombreMat;
            $idAula = $row->idAula;
            $Cantidad = $row->Cantidad;
            $idProveedor = $row->Nombre;
            $idMarca = $row->NombreMarca;
            ?>
            <div class="">
                <p>Nombre del material:
                    <?php echo htmlspecialchars($NombreMat); ?>
                </p>
                <p>Id del aula:
                    <?php echo htmlspecialchars($idAula); ?>
                </p>
                <p>Cantidad:
                    <?php echo htmlspecialchars($Cantidad); ?>
                </p>
                <p>Id del proveedor:
                    <?php echo htmlspecialchars($idProveedor); ?>
                </p>
                <p>Id de la marca:
                    <?php echo htmlspecialchars($idMarca); ?>
                </p>
                <button>Eliminar</button>
                <button>Editar</button>
            </div>
            <hr>
            <?php
        }
    }
}

if(isset($_GET['search']) && !empty($_GET['search']) || (isset($_GET['value']) && !empty($_GET['value']))){
    $types = [
        'aula' => 'a.idAula',
        'prov' => 'p.idProveedor',
        'marca' => 'm.idMarca',
        'tipoprod' => 'p.idProveedor ',
         'all' => '',
    ];
    $types = $types[$_GET['search']];

    $type = $_GET['search'] == 'all' || !isset($_GET['value']) ?"" : "$types = '$_GET[value]' AND";
    if(isset($_GET['value'])){
        $type =  $_GET['value'] == 'all' ?"" : "$types = '$_GET[value]' AND";
    }
    $consulta = "SELECT m.NombreMat, m.idAula, m.Cantidad,p.Nombre, ma.NombreMarca FROM login AS l 
    INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
    INNER JOIN materiales AS m ON a.idAula = m.idAula 
    INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
    INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
    WHERE $type d.idDepartamento  = $_SESSION[deparamento] AND l.idUser = $_SESSION[id]";
    body($consulta, $conexion);

}else{
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