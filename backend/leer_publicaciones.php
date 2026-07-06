<?php
include ("conexion/conexion_dal.php");
$valores=json_decode(file_get_contents("php://input"));
$respuesta=mysqli_query(get_conexion(),"select * from publicaciones where ".$valores[0]." like '".$valores[1]."%' and disponible=true");
$array=[];
while($publicacion=mysqli_fetch_array($respuesta)){
$array[]=["nombre" => $publicacion["nombre_completo"],
"categoria"=>$publicacion["categoria"],
"zona"=>$publicacion["zona"],
"descripcion"=>$publicacion["descripcion"],];
}
header("Content-Type: application/json");
echo(json_encode($array));
?>