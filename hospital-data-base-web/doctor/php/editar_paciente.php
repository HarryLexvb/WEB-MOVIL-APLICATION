<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Paciente</title>
    <link rel="stylesheet" href="../css/style_menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
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
    </div><br><br><br><br><br>


	<?php

if (!isset($_GET["id"])) {
    exit();
}

$id = $_GET["id"];
include_once "../conexion/base_de_datos.php";
$sentencia = $base_de_datos->prepare("SELECT id, doctor_id, names, age, birthday, phone  FROM pacientes WHERE id = ?;");
$sentencia->execute([$id]);
$paciente = $sentencia->fetchObject();
if (!$paciente) {
    #No existe
    echo "¡No existe algun paciente con ese ID!";
    exit();
}


?>

<?php include_once "./header.php"?>

<div class="row">
	<div class="col-12">
		<h1>Editar</h1>
		<form action="guardar_datos.php" method="POST">
      
			<input type="hidden" name="id" value="<?php echo $paciente->id; ?>">
			
			<div class="form-group">
				<label for="names">Name</label>
				<input value="<?php echo $paciente->names; ?>" required name="names" type="text" id="names" placeholder="Ingrese nombre" class="form-control">
			</div>
			<div class="form-group">
				<label for="age">Age</label>
				<input value="<?php echo $paciente->age; ?>" required name="age" type="number" id="age" placeholder="Ingrese Edad" class="form-control">
			</div>
			<div class="form-group">
				<label for="birthday">Birthday</label>
				<input value="<?php echo $paciente->birthday; ?>" required name="birthday" type="date" id="birthday" placeholder="Ingrese fecha" class="form-control">
			</div>
			<div class="form-group">
				<label for="phone">Phone</label>
				<input value="<?php echo $paciente->phone; ?>" required name="phone" type="text" id="phone" placeholder="Ingrese celular" class="form-control">
			</div>


			<button type="submit" class="btn btn-danger">Guardar</button>
			<a href="./lista_paciente.php" class="btn btn-secondary">Volver</a>
		</form>
	</div>
</div>
<?php include_once "./footer.php"?>

  

    <script type="text/javascript">
    $(document).ready(function(){
      $('.nav_btn').click(function(){
        $('.mobile_nav_items').toggleClass('active');
      });
    });
    </script>

  </body>
</html>