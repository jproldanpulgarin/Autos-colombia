<?php
 $usuario = $_POST['usuario'];
 $contraseña = $_POST['contraseña'];
 session_start();//inicio de sesion
 $_SESSION['user'] = $usuario;

 $host="localhost";
 $user="root";
 $pass="";
 $bd="db_autoscolombia";

 $conexion=mysqli_connect($host,$user,$pass,$bd);
 $sql="SELECT * FROM tb_usuarios WHERE user = '$usuario' and password = '$contraseña'";

 $result= mysqli_query($conexion,$sql);

 $row = mysqli_num_rows($result);
 if($row){
    header("location:insertar.php");
    
 }else{
    ?>
    <?php
    include 'index.php';
    ?>
    <script>alert("Error autenticacion");</script>
    <?php
}
mysqli_free_result($result);
mysqli_close($conexion);

