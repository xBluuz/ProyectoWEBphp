<?php
include("./conexion_bd.php");

function body($consulta, $conexion){

    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        while ($row = $resultado->fetch_object()) {
            $NombreMat = $row->NombreMat;
            $idAula = $row->idAula;
            $Cantidad = $row->Cantidad;
            $idProveedor = $row->Nombre;
            $idMarca = $row->NombreMarca;
            $idMateriales = $row->idMateriales;
            ?>
            <div class="card">
                <h3>Nombre del material:</h3>
                <?php echo htmlspecialchars($NombreMat) ?>
                <h3>Id del aula:</h3>
                <?php echo htmlspecialchars($idAula) ?>
                <h3>Cantidad:</h3>
                <?php echo htmlspecialchars($Cantidad) ?>
                <h3>Id del proveedor:</h3>
                <?php echo htmlspecialchars($idProveedor) ?>
                <h3>Id de la marca:</h3>
                <?php echo htmlspecialchars($idMarca) ?>
                <div class="card_icons">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" height="32" width="32" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"/></svg></a>
                    <a href="./PanelDepartamento.php?borrar=<?php echo $idMateriales; ?>"onclick="return ConfirmDelete()"><svg xmlns="http://www.w3.org/2000/svg" height="32" width="28" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"/></svg></a>
                </div>
            </div>
            <?php
        }
    }
    
}
if (isset($_GET['borrar'])) {
    $borrar_id = $_GET['borrar'];
    $borrar = "DELETE FROM materiales WHERE idMateriales = ?";
    $stmt = mysqli_prepare($conexion, $borrar);
    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "s", $borrar_id);
        $ejecutar = mysqli_stmt_execute($stmt);
        if ($ejecutar) {
            
        } else {
            echo "Error al ejecutar la consulta: " . mysqli_error($conexion);
        }
    } else {
        echo "Error al preparar la consulta: " . mysqli_error($conexion);
    }
}
if (isset($_GET['search']) && !empty($_GET['search']) || (isset($_GET['value']) && !empty($_GET['value']))) {
    $types = [
        'aula' => 'a.idAula',
        'prov' => 'p.Nombre',
        'marca' => 'ma.NombreMarca',
        'tipoprod' => 'tp.NombreTipo ',
        'ubi' => 'u.NombreUbicacion'
    ];
    $type = "";
    if($_GET['search'] != 'all' && isset($_GET['value']) && $_GET['value'] != 'all'){
        $types = $types[$_GET['search']];
        $type = "$types = '$_GET[value]' AND";
    }
    $consulta = "SELECT m.idMateriales,m.NombreMat, m.idAula, m.Cantidad,p.Nombre, ma.NombreMarca FROM login AS l 
    INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
    INNER JOIN materiales AS m ON a.idAula = m.idAula 
    INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
    INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
    INNER JOIN tipoprod AS tp ON tp.idTipo = p.idTipo 
    INNER JOIN ubi AS u ON u.idUbicacion = a.idUbicacion 
    WHERE $type d.idDepartamento  = $_SESSION[deparamento] AND l.idUser = $_SESSION[id]";
    //echo $consulta;
    body($consulta, $conexion);
} else {
    $consulta = "SELECT m.idMateriales,m.NombreMat, m.idAula, m.Cantidad,p.Nombre, ma.NombreMarca FROM login AS l 
    INNER JOIN departec AS d ON l.idDepartamento = d.idDepartamento 
    INNER JOIN aula AS a ON d.idDepartamento = a.idDepartamento 
    INNER JOIN materiales AS m ON a.idAula = m.idAula 
    INNER JOIN prov AS p ON m.idProveedor = p.idProveedor 
    INNER JOIN marca AS ma ON m.idMarca = ma.idMarca 
    INNER JOIN tipoprod AS tp ON tp.idTipo = p.idTipo 
    INNER JOIN ubi AS u ON u.idUbicacion = a.idUbicacion 
    WHERE d.idDepartamento  = $_SESSION[deparamento] AND l.idUser = $_SESSION[id]";
    body($consulta, $conexion);
}