<?php  //Conexion entre interfaz y Base de datos
 If(!empty($_POST)){//verifica que el formulario halla sido enviado con datos diligenciados
$serverName="PIPEV\SQLEXPRESS";//nombre del servidor de base de datos
$connectionInfo=array ("Database"=>"Prueba");// nombre de la base de datos
$con=sqlsrv_connect($serverName,$connectionInfo);//funcion para realizar la conexion
 }
?>