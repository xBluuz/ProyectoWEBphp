<div class="add_pop">
    <form method="post" class="formulario_add">
        <input type="text" name="NMaterial" id="NMaterial" required placeholder="Material" class="input_add">
        <select name="NAula" id="NAula" class="select_add" required>
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
        <input type="number" name="NCantidad" id="NCantidad" class="input_add" required>
        <select name="NProeveedor" id="NProeveedor" class="select_add" required>
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
        <select name="NMarca" id="NMarca" class="select_add" required>
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
        </select>
        <div class="button_container">
            <div class="cerrar_container">
                <div class="cerrar_add_button" onclick="cerrarAñadir()" id="cerrar_add_button">Cerrar</div>
            </div>
            <div class="submit_container">
                <input type="submit" value="Send" name="send" class="submit_add" onclick="refresh()">
            </div>
        </div>
    </form>
</div>
<?php
include("./conexion_bd.php");

if (isset($_POST['send'])) {
    global $conexion;
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) 
       VALUES ('$_POST[NMaterial]', '$_POST[NAula]', $_POST[NCantidad], $_POST[NProeveedor], $_POST[NMarca], $_SESSION[deparamento])";
    mysqli_query($conexion, $sql);
}
?>