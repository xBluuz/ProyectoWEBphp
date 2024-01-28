<?php
if (isset($_GET['search']) && !empty($_GET['search'])) {
    $sql = "SELECT * FROM $_GET[search] WHERE (idDepartamento =  $_SESSION[idDepartamento] OR idDepartamento = 0)";
    $result = mysqli_query($conexion, $sql);
    while ($row = mysqli_fetch_array($result)) {
        $key = array_keys($row);
        $all = $row[$key[2]];
        echo "
        <option value='$all'>$all</option>";
    }
}
?>