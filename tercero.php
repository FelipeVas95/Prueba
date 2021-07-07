<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
    <title>Ingresar datos</title>
  </head>
  <body>
    <div class="container">
      <div class="modal" tabindex="-1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Materia cruzada</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>Modal body text goes here.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Guardar de todos modos</button>
            </div>
          </div>
        </div>
      </div>
        <div class="row d-flex mt-5">
        <div class="col-7">
          <div class="">
            <H1 class="text-center">Registra tu horario aqui</H1>
          </div>
          <!-- Formulario creacion de nuevo horario-->
          <div class="center-block">
            <form class=""  action="ingresar_datos.php" method="POST" >
              <div class="form-group">
               <label for="">Materia</label>
                <select  class="form-select" aria-label="Default select example" name="materia" required  >
                  <option selected >Selecciona tu materia</option>
                  <option value="1" >Matematicas discretas</option>
                  <option value="2">Calculo integral</option>
                  <option value="3">Fisica 2</option>
                  <option value="4">Bodega de datos</option>
                  <option value="5">Ing.software 1</option>
                  <option value="6">Matematicas especiales</option>
          
                </select>
                </div>
              <div class="form-group">
               <label for="">Horario</label>
               <select class="form-select" aria-label="Default select example" name="horario" required>
                  <option selected >Selecciona horario</option>
                  <option value="1" >LUNES 7-9 AM</option>
                  <option value="2">MARTES 2-4 PM</option>
                  <option value="3">MIERCOLES 3-6 PM</option>
                  <option value="4">JUEVES 2-5 PM</option>
                  <option value="5">VIERNES 9-11 PM</option>
                </select>
              </div>
              <!-- Alarma modal de cruce de materia-->
              <div class="modal fade" id="miModal" tabindex="-1" aria-hidden="true" aria-labelledby="modalTitle">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Materia cruzada</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <p>El horario de la materia seleccionada se cruza con otro horario!</p>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Guardar de todos modos</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- Botones guardar y borrar del formulario-->
            <br>
              <input type="submit" class="btn btn-success"value="Guardar" data-bs-toggle="modal" data-bs-target="#miModal">
              <input type="reset" value="Borrar" class="btn btn-success"></br>
            </form>
          </div>
        </div>
        <!-- Muestra de horarios creados-->
        <div class="col-7">
          <div class="center-block mb-5">
            <H1 class="text-center">Busca los horarios aqui</H1>
            <table class="table table-stripped table bordered">
              
              <th>Materia</th>
              <th>Docente</th>
             
              <?php
                $serverName="localhost";
                $user='root';
                $pass='root';
                $connectionInfo="Prueba";
                $con=mysqli_connect($serverName,$user,$pass,$connectionInfo);
                $sl="SELECT nom_materia,docente FROM Materia WHERE idMateria IN (SELECT fk_idMateria FROM materia_horario) UNION SELECT horario,salon FROM Horario WHERE idHorario IN (SELECT fk_idHorario FROM materia_horario)";
             echo $sl;
                $resa=mysqli_query($con,$sl);  
                while($row2 =mysqli_fetch_array($resa)){     
              ?>
              <tr>
                
                <td><?=$row2[0]?> </td>
                <td><?=$row2[1]?> </td>
               
              </tr>
              <?php
              }
              ?>
            </table>
      </div>
    </div>
  </body>
  <script src="js/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>
