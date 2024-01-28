<?php
session_start();
$_SESSION['login'] = false;
setcookie('estado_nav', '', time() - 3600, '/');
session_destroy();
header('Location: ../Login.PHP');
?>