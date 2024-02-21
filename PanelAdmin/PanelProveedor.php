<div class="add_pop">
<form action="InformaProve.php" class="formulario_add" method="post">
    <input type="text" name="PProv" id="PProv" required placeholder="Proveerdor" class="input_add">
    <input type="text" name="PDirec" id="PDirec" required placeholder="Direccion" class="input_add">
    <input type="text" name="PMunic" id="PMunic" required placeholder="Municipio" class="input_add">
    <input type="text" name="PProvi" id="PProvi" required placeholder="Provincia" class="input_add">
    <input type="text" name="PTelf" id="PTelf" required placeholder="Telefono" class="input_add">
    <select name="PTipo" id="PTipo" class="select_add">
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
    <select name="PDepartamento" id="PDepartamento" class="select_add">
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
                <div class="cerrar_add_button" onclick="activarcerrarProv()">Cerrar</div>
            </div>
            <div class="submit_container">
            <input type="submit" value="Añadir" name="PAñadir" class="submit_add">
            </div>
        </div>
    
</form>
</div>