<?php
include ("conexion.php");//conexion a el archivo conexion
$Materia=$_POST['materia'];//captura los datos de materia del formulario 
$Horario=$_POST['horario'];//captura los datos de horario del formulario 
$insert= "INSERT INTO Materia_horario(fk_idMateria,fk_idHorario)VALUES ('$Materia','$Horario')"; 
$res=sqlsrv_prepare($con,$insert);//funcion que hace la consulta a la BD
//evaluacion si se realiza la consulta
if(sqlsrv_execute($res)){
	header("location:tercero.php");//Regresar a pantalla inicial si se realiza el registro con exito
   }
 else{ 
	header("location:tercero.php");
 }

?>    