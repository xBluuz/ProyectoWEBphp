<div class="add_pop">
    <form method="post" class="formulario_add" action="InformaAula.php">
        <select name="AUbi" id="AUbi" required class="select_add">
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
        <input type="text" name="AAula" id="AAula" required placeholder="Aula" class="input_add">
        <select name="ADepartamento" id="Adepartamento" class="select_add">
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
        <div class="button_container">
            <div class="cerrar_container">
                <div class="cerrar_add_button">Cerrar</div>
            </div>
            <div class="submit_container">
                <input type="submit" value="Añadir" name="AAñadir" class="submit_add">
            </div>
        </div>
    </form>
</div>
