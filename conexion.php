<?php  //Conexion entre interfaz y Base de datos
 If(!empty($_POST)){//verifica que el formulario halla sido enviado con datos diligenciados
$serverName="localhost";//nombre del servidor de base de datos
$user='root';
$pass='root';
$connectionInfo="Prueba";// nombre de la base de datos
$con=mysqli_connect($serverName,$user,$pass,$connectionInfo);//funcion para realizar la conexion
 }
?>