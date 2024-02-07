<form method="post">
    <input type="text" name="NMaterial" id="NMaterial" required placeholder="Material">
    <select name="NAula" id="NAula" required>
        <?php
        include("./conexion_bd.php");
        $sql = "SELECT a.idAula FROM aula AS a INNER JOIN departec AS d ON a.idDepartamento = d.idDepartamento WHERE a.idDepartamento = $_SESSION[deparamento];";
        $resultado = mysqli_query($conexion, $sql); // Use $sql instead of $consulta
        if ($resultado) {
            while ($row = mysqli_fetch_assoc($resultado)) {
                $idAula = $row['idAula'];
                echo "<option value='$idAula'>$idAula</option>";
            }
        }
        ?>
    </select>
    <input type="number" name="NCantidad" id="NCantidad" required>
    <select name="NProeveedor" id="NProeveedor" required>
        <?php
        include("./conexion_bd.php");
        $sql = "SELECT * FROM prov";
        $resultado = mysqli_query($conexion, $sql); // Use $sql instead of $consulta
        if ($resultado) {
            while ($row = mysqli_fetch_assoc($resultado)) {
                $idProveedor = $row['idProveedor'];
                $NProveedor = $row['Nombre'];
                echo "<option value='$idProveedor'>$NProveedor</option>";
            }
        }
        ?>
    </select>
    <select name="NMarca" id="NMarca" required>
        <?php
        include("./conexion_bd.php");
        $sql = "SELECT * FROM marca";
        $resultado = mysqli_query($conexion, $sql); // Use $sql instead of $consulta
        if ($resultado) {
            while ($row = mysqli_fetch_assoc($resultado)) {
                $idMarca = $row['idMarca'];
                $NMarca = $row['NombreMarca'];
                echo "<option value='$idMarca'>$NMarca</option>";
            }
        }
        ?>
        <input type="submit" value="send" name="send">
</form>
<?php
include("./conexion_bd.php");

if (isset($_POST['send'])) {
    global $conexion;
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) 
       VALUES ('$_POST[NMaterial]', '$_POST[NAula]', $_POST[NCantidad], $_POST[NProeveedor], $_POST[NMarca], $_SESSION[deparamento])";
    mysqli_query($conexion, $sql);
}
?>