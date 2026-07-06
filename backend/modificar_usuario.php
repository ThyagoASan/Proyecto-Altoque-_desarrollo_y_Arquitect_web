<?php 
include("conexion/conexion_dal.php");
$datos=json_decode(file_get_contents("php://input"),true);
$id=$datos["id"];
$contraseña=$datos["contraseña"];
$respuesta=mysqli_query(get_conexion(),"update usuarios set 
contraseña='$contraseña'
where id=$id
");
header("Content-Type: text/plain");
if($respuesta){
echo("Se modifico la contraseña del usuario con exito");
}else{
    echo("Error no se modifico la contraseña del usuario.");
}

?>