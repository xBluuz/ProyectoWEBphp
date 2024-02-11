<div class="add_pop">
    <form method="post" class="formulario_add">
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
        <input type="number" name="NCantidad" id="NCantidad" required required placeholder="Cantidad" class="input_add">
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
            <input type="submit" value="Send" name="send" class="submit_add">


        </div>
    </form>
</div>
<script>
    function cerrarAñadir(){
            let añadir = document.getElementById('añadir');
            if (añadir.style.display != '') {
                añadir.style.display = 'none';
            } else {
                añadir.style.display = 'flex';
            }
            console.log('anadir cerrado');
        }
</script>
<?php
include("./conexion_bd.php");

if (isset($_POST['send'])) {
    global $conexion;
    $sql = "INSERT INTO materiales (NombreMat ,idAula, Cantidad, idProveedor, idMarca, idDepartamento) 
        VALUES ('$_POST[NMaterial]', '$_POST[NAula]', $_POST[NCantidad], $_POST[NProeveedor], $_POST[NMarca], $_POST[NDepartamento])";
    mysqli_query($conexion, $sql);
}
?>