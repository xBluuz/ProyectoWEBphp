<div class="add_pop">
    <form method="post" class="formulario_add">
        <input type="text" name="NMaterial" id="NMaterial" required placeholder="Material"
            value="<?php echo $NombreMat ?>" class="input_add">
        <select name="NAula" id="NAula" required class="select_add">
            <option value="<?php echo $Aula ?>">
                <?php echo $Aula ?>
            </option>
            <?php
            include("./conexion_bd.php");
            $sql = "SELECT * FROM aula";
            $resultado = mysqli_query($conexion, $sql);
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
            $resultado = mysqli_query($conexion, $sql);
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
            $resultado = mysqli_query($conexion, $sql);
            if ($resultado) {
                while ($row = mysqli_fetch_assoc($resultado)) {
                    $idMarca = $row['idMarca'];
                    $NMarca = $row['NombreMarca'];
                    echo "<option value='$idMarca'>$NMarca</option>";
                }
            }
            ?>
            <div class="online">
                <input type="submit" value="Editar" name="editarrr" class="submit_add">
                <div class="cerrar_container" onclick="closeEditar()">
                    <div class="cerrar_add_button" class="submit_add" id="cerrar_add_button" style="display:flex; justify-content: center; align-items: center;">Cerrar
                </div>
            </div>
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