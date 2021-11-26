
<?php
    error_reporting(0);

    $host="localhost";
    $user="root";
    $pass="";

    $bd="db_autoscolombia";

    $con=mysqli_connect($host,$user,$pass,$bd);
   
    if($con){
        Echo ("Conexion Exitosa");
    }else{
        echo "Ha ocurrido un error";
    }
?>