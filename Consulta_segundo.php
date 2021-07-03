<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Segundo</title>
  </head>
  <body>
  <form>
      <div class="container">
        <div class="row d-flex mt-5">
          <div class="col-7">
          <table class="table table-stripped table bordered">
                <th>Nombre departamento</th>
                <th>Numero empleados</th>
                <th> </th>
                <?php
                $serverName="PIPEV\SQLEXPRESS";//nombre del servidor de base de datos
                $connectionInfo=array ("Database"=>"BD");// nombre de la base de datos
                $con=sqlsrv_connect($serverName,$connectionInfo);//funcion para realizar la conexion
                //Consulta requerida
                $consulta="SELECT department_name,count(*) as empleados FROM UNIC_employee,UNIC_department  where department_id=UNIC_department.id GROUP BY department_id,department_name HAVING COUNT(*)>=2 ORDER BY department_name DESC";
                $res2=sqlsrv_query($con,$consulta);//realizacion de la consulta
                while($row =sqlsrv_fetch_array($res2)){    // convertir los datos en una matriz
                ?>
              <tr>
                <td><?=$row[0] //imprimir valores de la matriz?> </td>
                <td><?=$row[1]?> </td>
              </tr>
                <?php
                  }
                ?>
          </table>
          </div>
        </div>
      </div>
  </form>
  </body>
</html>
    
    
