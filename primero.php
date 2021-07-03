<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Primero</title>
  </head>
  <body>
    <form>
    <div class="container">
      <div class="row d-flex mt-5">
        <div class="col-7">
          <table class="table table-stripped table bordered">
    <?php
    //declaracion variables que guardaran la cantidad de veces de repeticion de un numero
    $uno="";
    $dos="";
    $tres="";
    $cuatro="";
    $cinco= "";
    $myArray=array("1","2","1","3","3","1","2","1","5","1");//Creacion del array
    for($i=0;$i<=9;$i++){ //Recorrido del array
    switch($myArray[$i]){
      case 1: // Primer condicion si se encuentra el numero 1 dentro del array
      $uno=$uno."*"; //contador que suma un "*"por cada vez que se cumpla la condicion
      break;
      case 2: //Primer condicion si se encuentra el numero 2 dentro del array
        $dos=$dos."*";
        break;
      case 3: //Primer condicion si se encuentra el numero 3 dentro del array
        $tres=$tres."*";
        break;
      case 4: //Primer condicion si se encuentra el numero 4 dentro del array
        $cuatro=$cuatro."*";
        break;
      case 5: //Primer condicion si se encuentra el numero 5 dentro del array
        $cinco=$cinco."*";
        break;
        default: //Condicion por default o si no es ninguna
      } 
      }
      //Muestra de la variable contador que almacena la repeticion por cada numero
      echo "1: ".$uno."<br />"; 
      echo "2: ".$dos."<br />";
      echo "3: ".$tres."<br />";
      echo "4: ".$cuatro."<br />";
      echo "5: ".$cinco."<br />";
    ?>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
    
    