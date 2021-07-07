<?php
include ("conexion.php");//conexion a el archivo conexion
$Materia=$_POST['materia'];//captura los datos de materia del formulario 
$Horario=$_POST['horario'];//captura los datos de horario del formulario 
//consulta para identificar si el horario esta en la BD
$consu="SELECT DISTINCT fk_idMateria,fk_idHorario FROM Materia_horario WHERE fk_idMateria='$Materia' AND fk_idHorario='$Horario'";
$resa=mysqli_query($con,$consu);  
	while($row =mysqli_fetch_array($resa)){ //recprrer y convertir la consulta en un arreglo
		//convertir cada columna en una variable para compararla
		$rmateria=$row[0];
		$rhorario=$row[1];
	} 
	//Condicion si no estan vacias las variables y son iguales a los datos digitados
if(!empty($rmateria)AND !empty($rhorario)AND $rmateria==$Materia AND $rhorario==$Horario){
	echo "Duplicado";
}else{// si no estan los datos digitados en la BD insertar los datos
$insert= "INSERT INTO Materia_horario(fk_idMateria,fk_idHorario)VALUES ('$Materia','$Horario')";
$res=mysqli_prepare($con,$insert);//funcion que hace la consulta a la BD
header("location:tercero.php");}//volver a la pagina de inicioo


?>    