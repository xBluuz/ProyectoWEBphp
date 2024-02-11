<div class="add_pop">
    <form method="post" class="formulario_add">
        <input type="text" name="NMaterial" id="NMaterial" required placeholder="Material" value="<?php echo $NombreMat ?>" class="input_add">
        <select name="NAula" id="NAula" required class="select_add">
            <option value="<?php echo $Aula ?>">
                <?php echo $Aula ?>
            </option>
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
        <input type="number" name="NCantidad" id="NCantidad" required value="<?php echo $Cantidad ?>" class="input_add">
        <select name="NProeveedor" id="NProeveedor" required class="select_add">
            <option value="<?php echo $idProveedor ?>">
                <?php echo $Proveedor ?>
            </option>
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
        <select name="NMarca" id="NMarca" required class="select_add">
            <option value="<?php echo $idMarca ?>">
                <?php echo $Marca ?>
            </option>
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
            <input type="submit" value="Editar" name="editarrr" class="submit_add">
    </form>
</div>
<?php
include("./conexion_bd.php");

if (isset($_POST['editarrr'])) {
    global $conexion;
    $sql = "UPDATE materiales SET NombreMat = '$_POST[NMaterial]', idAula = '$_POST[NAula]', Cantidad = $_POST[NCantidad], idProveedor = $_POST[NProeveedor], idMarca = $_POST[NMarca] WHERE idMateriales = $id";
    mysqli_query($conexion, $sql);
}
?>