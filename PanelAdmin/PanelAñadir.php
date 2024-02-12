<div class="add_pop">
    <form method="post" class="formulario_add" action="InformaAñadir.php">
        <input type="text" name="NMaterial" id="NMaterial" required placeholder="Material" class="input_add">
        <select name="NAula" id="NAula" class="select_add" required>
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
        <input type="number" name="NCantidad" id="NCantidad" required placeholder="Cantidad" class="input_add">
        <select name="NProeveedor" id="NProeveedor" class="select_add" required>
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
        <select name="NMarca" id="NMarca" class="select_add" required>
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
        </select>
        <select name="NDepartamento" id="NDepartamento" class="select_add" required>
            <?php
            include("./conexion_bd.php");
            $sql = "SELECT * FROM departec";
            $resultado = mysqli_query($conexion, $sql);
            if ($resultado) {
                while ($row = mysqli_fetch_assoc($resultado)) {
                    $idDepartamento = $row['idDepartamento'];
                    $NDepartamento = $row['NombreDepar'];
                    echo "<option value='$idDepartamento'>$NDepartamento</option>";
                }
            }
            ?>
        </select>
        <div class="submit_container">
            <input type="submit" value="Send" name="send" class="submit_add" onclick="refresh()">
        </div>
    
    </form>
</div>
