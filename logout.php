<?php
include 'db/config.php';
$usuario = $_POST['usuario'];
session_start();//inicio de sesion
$_SESSION['user'] = array();
if(session_destroy()){
    header("location: index.php");

}


?>