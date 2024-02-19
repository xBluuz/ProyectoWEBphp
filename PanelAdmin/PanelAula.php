<form method="post" action="InformaAula.php">
    <select name="AUbi" id="AUbi" required>
        <option value="" disabled selected>Seleccione la Ubicacion</option>
                    <?php
                    include("./conexion_bd.php");
                    $sql = "SELECT * FROM ubi";
                    $resultado = mysqli_query($conexion, $sql);
                    if ($resultado) {
                        while ($row = mysqli_fetch_assoc($resultado)) {
                            $idUbi = $row['idUbicacion'];
                            $NUbi = $row['NombreUbicacion'];
                            echo "<option value='$idUbi'>$NUbi</option>";
                        }
                    }
                    ?>
    </select>
    <input type="text" name="AAula" id="AAula" required placeholder="Aula">
    <select name="ADepartamento" id="Adepartamento">
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
    <input type="submit" value="Añadir" name="AAñadir">
</form>
