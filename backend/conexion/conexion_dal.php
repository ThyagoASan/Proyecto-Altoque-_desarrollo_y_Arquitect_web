<?php
$conexion=mysqli_connect("localhost","root","","base_proyecto_wed");
function get_conexion(){
global $conexion;
    return $conexion;
}
?>
