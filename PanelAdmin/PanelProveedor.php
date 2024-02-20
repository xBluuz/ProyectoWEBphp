<form action="InformaProve.php" method="post">
    <input type="text" name="PProv" id="PProv" required placeholder="Proveerdor">
    <input type="text" name="PDirec" id="PDirec" required placeholder="Direccion">
    <input type="text" name="PMunic" id="PMunic" required placeholder="Municipio">
    <input type="text" name="PProvi" id="PProvi" required placeholder="Provincia">
    <input type="text" name="PTelf" id="PTelf" required placeholder="Telefono">
    <select name="PTipo" id="PTipo">
        <option value="" disabled selected>Seleccione el tipo de Producto</option>
                    <?php
                    include("./conexion_bd.php");
                    $sql = "SELECT * FROM tipoprod";
                    $resultado = mysqli_query($conexion, $sql);
                    if ($resultado) {
                        while ($row = mysqli_fetch_assoc($resultado)) {
                            $idTipo = $row['idTipo'];
                            $NTipo = $row['NombreTipo'];
                            echo "<option value='$idTipo'>$NTipo</option>";
                        }
                    }
                    ?>
    </select>
    <select name="PDepartamento" id="PDepartamento">
        <option value="" disabled selected>Seleccione un departamento</option>
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
    <input type="submit" value="Añadir" name="PAñadir">
</form>