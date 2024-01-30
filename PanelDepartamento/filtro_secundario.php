<?php
if (isset($_GET['search']) && !empty($_GET['search']) ||  (isset($_GET['value']) && !empty($_GET['value']))) {
    $sql = "SELECT * FROM $_GET[search] WHERE (idDepartamento =  $_SESSION[idDepartamento] OR idDepartamento = 0)";
    $result = mysqli_query($conexion, $sql);
    echo "<script> cons </script>";
    while ($row = mysqli_fetch_array($result)) {
        $key = array_keys($row);
        $all = $row[$key[2]];

       echo $all == $_GET['value'] ? "<option value='$all' selected>$all</option>" : "<option value='$all'>$all</option>";
  
    }
}
?>