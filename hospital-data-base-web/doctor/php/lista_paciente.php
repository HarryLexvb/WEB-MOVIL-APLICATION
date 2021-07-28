<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor</title>
    <link rel="stylesheet" href="../css/style_menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>-->
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->
  </head>
  
  <body>

  <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn" ></i>
      </label>
      <div class="left_area">
        <h3>DNA <span>CLINIC</span></h3>
      </div>

    </header>
    <!--header area end-->

    <!--sidebar start-->
    <div class="sidebar">
      <div class="profile_info">
        <img src="../img/vvv.png" class="profile_image" alt="">
        <h4>Dr. Strange</h4>
		<h5>ID: XXXXXX</h5>
      </div>
      <a href="#"><i class="fas fa-desktop"></i><span>Mi Perfil</span></a>
      <a href="./lista_paciente.php"><i class="fas fa-table"></i><span>Lista</span></a>
      <a href="./agregar_paciente.php"><i class="fas fa-user-plus"></i><span>Agregar</span></a>
	<a href="#"><i class="fas fa-sign-out-alt"></i><span>Log out</span></a>
    <!--sidebar end-->
    </div><br><br><br>


	<!--buscador start-->


<div class="container">

	<div class="main">
    <form role="form" method="POST">

	<div class="input-group">
    <input type="text" class="form-control" name="Documento" placeholder="Buscar paciente">
      <div class="input-group-append">
      <button class="btn btn-secondary" type="submit">
        <i class="fa fa-search"></i>
      </button>
    </div>
  </div>
    </form>

	</div>
	
	
	<?php

if($_POST){
include_once "../conexion/base_de_datos.php";

$names = $_POST['Documento'];
$stmt2 = $base_de_datos->prepare('SELECT id, doctor_id, names, age, birthday, phone FROM pacientes WHERE names = :Doc');
$result2 = $stmt2->execute(array(':Doc'=>$names));
$rows2 = $stmt2->fetchAll(\PDO::FETCH_OBJ);

if(count($rows2)){
	foreach ($rows2 AS $row2){
?>

<div class ="panel panel-primary">
<div class="table-responsive">
	<table class="table table-bordered">
		<tbody>
			<!--
			Atención aquí, sólo esto cambiará
			Pd: no ignores las llaves de inicio y cierre {}
			-->
				<tr>
					<td><?php echo $row2->id ?></td>
					<td><?php echo $row2->names ?></td>
					<td><?php echo $row2->age ?></td>
					<td><?php echo $row2->birthday ?></td>
					<td><?php echo $row2->phone ?></td>
					<td><a class="btn btn-primary" href="<?php echo "editar_paciente.php?id=" . $row2->id?>">📝</a></td>
					<td><a class="btn btn-danger" href="<?php echo "eliminar_paciente.php?id=" . $row2->id?>">🗑️</a></td>
				</tr>
			
		</tbody>
	</table>
</div>

<?php } ?>
<?php } 
 else{ ?>   
	<!--echo "NOT FOUND";-->
	<div class="alerta">
	<div class="alert alert-danger alert-dismissible fade show" role="alert">
		<strong>Not found!</strong> Por favor, ingresa el nombre completo.
		<a href="./lista_paciente.php" style="text-decoration:none"><button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true" style="color:black">&times;</span></a>
		</button>
	</div>
	</div>
	<?php } ?>
<?php } ?>

</div>
</div>

<!--buscador end-->

	<?php
	include_once "../conexion/base_de_datos.php";
	$sentencia = $base_de_datos->query("select id, doctor_id, names, age, birthday, phone from pacientes");
	$pacientes = $sentencia->fetchAll(PDO::FETCH_OBJ);
	?>
	<!--Recordemos que podemos intercambiar HTML y PHP como queramos-->
	<?php include_once "./header.php"; ?>
	<div class="row">
	<!-- Aquí pon las col-x necesarias, comienza el contenido, etc -->
		<div class="col-12">
			<h1>Lista de pacientes</h1>
			
			<br>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead class="thead-dark">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Age</th>
							<th>Birthday</th>
							<th>Phone</th>
							<th>Editar</th>
							<th>Eliminar</th>
						</tr>
					</thead>
					<tbody>
						<!--
						Atención aquí, sólo esto cambiará
						Pd: no ignores las llaves de inicio y cierre {}
						-->
						<?php foreach($pacientes as $paciente){ ?>
							<tr>
								<td><?php echo $paciente->id ?></td>
								<td><?php echo $paciente->names ?></td>
								<td><?php echo $paciente->age ?></td>
								<td><?php echo $paciente->birthday ?></td>
								<td><?php echo $paciente->phone ?></td>
								<td><a class="btn btn-primary" href="<?php echo "editar_paciente.php?id=" . $paciente->id?>">📝</a></td>
								<td><a class="btn btn-danger" href="<?php echo "eliminar_paciente.php?id=" . $paciente->id?>">🗑️</a></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<?php include_once "./footer.php" ?>

    <script type="text/javascript">
    $(document).ready(function(){
      $('.nav_btn').click(function(){
        $('.mobile_nav_items').toggleClass('active');
      });
    });
    </script>

  </body>
</html>