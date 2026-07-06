<?php
include("conexion/conexion_dal.php");
session_start();
header("Content-Type: text/plain");
if(!empty($_SESSION["cliente"])){
$id_publicacion=file_get_contents("php://input");
$idcliente=$_SESSION["id_cliente"];
mysqli_query(get_conexion(),"update publicaciones set disponible=false, id_cliente=$idcliente where id=$id_publicacion");
mysqli_query(get_conexion(),"update historico_publicaciones set disponible=false, id_cliente=$idcliente, estado='Contratado en proceso' where id_publicacion=$id_publicacion");
echo"Se realizo su contratación, el profecional ya tiene su email para ponerse en contacto con usted.";
}else{
echo"Usted tiene que inicio sesión para contratar.";
}
?>
