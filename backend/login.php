<?php
require_once "conexion/conexion_dal.php";

$email=$_POST["email"];
$contraseña=$_POST["contraseña"];

$respuesta=mysqli_query(get_conexion(),"select * from usuarios where email='$email' and contraseña='$contraseña'");
$cantidad_de_filas=mysqli_num_rows($respuesta);
if($cantidad_de_filas>0){
    session_start();
    while($usuario = mysqli_fetch_array($respuesta) ){
        $_SESSION["cliente"]=$usuario["nombre_completo"];
        $_SESSION["id_cliente"]=$usuario["id"];
    }
    header("location:../FontEnd/html_y_css/pagina1.php");
}else{
    echo "<script>
    alert('error usuario o contraseña incorrectos.')
    location.href='../FontEnd/html_y_css/sesion.php';

</script>";
}


?>