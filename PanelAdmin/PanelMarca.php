<form action="InformaMarca.php" method="post">
    <input type="text" name="MMarca" id="MMarca" required placeholder="Marca">
    <select name="MDepartamento" id="MDepartamento">
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
    <input type="submit" value="Añadir" name="MAñadir">
</form>