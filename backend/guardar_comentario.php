<?php
include("conexion/conexion_dal.php");
$id_publicacion=$_GET["id_publicacion"];
$nombre_usuario=$_GET["nombre"];
$comentario=$_POST["comentario"];
$fecha=date("y-m-d");
mysqli_query(get_conexion(),"insert into comentarios (id_publicacion,nombre_usuario,comentario,fecha)values
($id_publicacion,'$nombre_usuario','$comentario','$fecha')");
echo("<script>alert('se agrego tu comentario con exito.'); window.location.href=document.referrer;</script>);");
?>
