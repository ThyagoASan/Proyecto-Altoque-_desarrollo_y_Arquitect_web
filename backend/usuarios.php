<?php 
require_once "conexion/conexion_dal.php";
$dato_recibido=json_decode(file_get_contents("php://input"),true);
header("Content-Type: application/json");
switch($dato_recibido["accion"]){
    case ("leer_usuarios"):{
        echo json_encode(leer_tabla("select * from usuarios"));
    };
    case ("agregar_usuario"):{
        escribir_tabla("insert into usuarios(nombre_completo,email,contraseña) values 
        ({$dato_recibido['datos']['nombre_completo']},
        {$dato_recibido['datos']['email']},
        {$dato_recibido['datos']['contraseña']})");
    };
}
$conexion=mysqli_connect("localhost","root","","base_proyecto_wed");
$respuesta= mysqli_query($conexion,"select * from usuarios");
if(!$respuesta){
    ?>
    <h2>error</h2>
    <?php 
echo "error";
}
echo json_encode($respuesta);

?>
