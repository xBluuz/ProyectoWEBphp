<?php
function sqlconn(){
    $serverName= "localhost";
    $usernamebd="root";
    $passworddb="";
    $database = "proyectom";
    return new mysqli($serverName, $usernamebd, $passworddb, $database);
}

?>