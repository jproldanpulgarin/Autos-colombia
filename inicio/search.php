<?php

$sql = "SELECT * FROM tb_automoviles WHERE user=$user" ;
$query=mysqli_query($con,$sql);
$row=mysqli_fetch_array($query);

if($row){
    echo "va bien";
}

?>