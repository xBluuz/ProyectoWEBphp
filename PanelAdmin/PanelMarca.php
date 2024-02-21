<div class="add_pop">
<form action="InformaMarca.php"  class="formulario_add" method="post">
    <input type="text" name="MMarca" id="MMarca" required placeholder="Marca" class="input_add">
    <select name="MDepartamento" id="MDepartamento" class="select_add">
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
                <div class="cerrar_add_button" onclick="activarcerrarMarca()">Cerrar</div>
            </div>
            <div class="submit_container">
            <input type="submit" value="Añadir" name="MAñadir" class="submit_add">
            </div>
        </div>
    
</form>
</div>