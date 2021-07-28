<?php
session_start();
error_reporting(0);
include('includes/config.php');
// Registrar
if(isset($_POST['submit']))//envia informacion
{
//toma valores del html y los envia al databases
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$contactno=$_POST['contactno'];
$password=md5($_POST['password']);//md5 es un tipo de cifrado , aqui enviamos password para que lo cifre
$query=mysqli_query($con,"insert into users(name,email,contactno,password) values('$name','$email','$contactno','$password')");
//avisa si el registro a sido exitoso
if($query)
{
	echo "<script>alert('You are successfully register');</script>";
}
else{
echo "<script>alert('Not register something went worng');</script>";
}
}

//ingreso a cuenta
if(isset($_POST['login']))
{
	//obtiene tanto el password como el email
   $email=$_POST['email'];
   $password=md5($_POST['password']);//descifra y verifica si es el password
   //selecciona la tabla para verificar si el usuario existe
$query=mysqli_query($con,"SELECT * FROM users WHERE email='$email' and password='$password'");
$num=mysqli_fetch_array($query);//guarda array con fila econtrada en query
if($num>0)
{
$extra="my-cart.php";
//$SESSION es como crear una varibale global , aqui obtiene los datos del usuario que ha iniciado sesion
$_SESSION['login']=$_POST['email'];
$_SESSION['id']=$num['id'];
$_SESSION['username']=$num['name'];
//$_SERVER es un array que tiene el sistema
		//'REMOTE_ADDR' :La dirección IP desde la cual está viendo la página actual el usuario
$uip=$_SERVER['REMOTE_ADDR'];
$status=1;
//se inserta en la tabla user log donde guardas datos de cada usuario que entra
$log=mysqli_query($con,"insert into userlog(userEmail,userip,status) values('".$_SESSION['login']."','$uip','$status')");
//'HTTP_HOST': Contenido de la cabecera Host: de la petición actual, si existe.
$host=$_SERVER['HTTP_HOST'];
//damos varibales para que al juntarlas nos redireccione a otro html
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
else
{
//redireccina para mandar mensaje de email invalido o password
$extra="login.php";
$email=$_POST['email'];
$uip=$_SERVER['REMOTE_ADDR'];
$status=0;
$log=mysqli_query($con,"insert into userlog(userEmail,userip,status) values('$email','$uip','$status')");
$host  = $_SERVER['HTTP_HOST'];
$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
//errmsg->error de mensaje
$_SESSION['errmsg']="Invalid email id or Password";
exit();
}
}


?>


<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Tienda Online FOODPY | Signi-in | Signup</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/orange.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">

		
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
<script type="text/javascript">
	//hacemos funcion en javascript confirmaremos que la caontraseña sea igual a confirmar contraseña 
		//si es diferente llamara denuevo a la funcion registrar
function valid()
{
 if(document.register.password.value!= document.register.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.register.confirmpassword.focus();
return false;
}
return true;
}
</script>
    	<script>
function userAvailability() {
$("#loaderIcon").show();
//jquery.ajax realiza una solicitud  HTTP
jQuery.ajax({
	//llama para evaluar si el  email de registro ya existe o no
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
//da una respuesta en caso 
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>



	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

	<!-- ============================================== TOP MENU ============================================== -->
<?php include('includes/top-header.php');?>
<!-- ============================================== TOP MENU : END ============================================== -->
<?php include('includes/main-header.php');?>
	<!-- ============================================== NAVBAR ============================================== -->
<?php include('includes/menu-bar.php');?>
<!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<!--<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="home.html">Inicio</a></li>
				<li class='active'>Authentication</li>
			</ul>-->
		<!--</div>--><!-- /.breadcrumb-inner -->
	<!--</div>--><!-- /.container -->
<!--</div>--><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">
	<h4 class="">Iniciar Sesión</h4>
	<p class="">Hola, bienvenido de vuelta!</p>
	<form class="register-form outer-top-xs" method="post">
	<span style="color:red;" >
<?php
echo htmlentities($_SESSION['errmsg']);
?>
<?php
echo htmlentities($_SESSION['errmsg']="");
?>
	</span>
		<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Correo electrónico <span>*</span></label>
		    <input type="email" name="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Contraseña <span>*</span></label>
		 <input type="password" name="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
		</div>
		<div class="radio outer-xs">
		  	<a href="forgot-password.php" class="forgot-password pull-right">¿Olvidaste tu contraseña?</a>
		</div>
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button" name="login">Iniciar Sesión</button>
	</form>					
</div>
<!-- Sign-in -->

<!-- create a new account -->
<div class="col-md-6 col-sm-6 create-new-account">
	<h4 class="checkout-subtitle">registrate</h4>
	<p class="text title-tag-line">Crear nueva cuenta.</p>
	<form class="register-form outer-top-xs" role="form" method="post" name="register" onSubmit="return valid();">
<div class="form-group">
	    	<label class="info-title" for="fullname">Nombre completo <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" id="fullname" name="fullname" required="required">
	  	</div>


		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Correo electrónico <span>*</span></label>
	    	<input type="email" class="form-control unicase-form-control text-input" id="email" onBlur="userAvailability()" name="emailid" required >
	    	       <span id="user-availability-status1" style="font-size:12px;"></span>
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="contactno">Teléfono/Celular. <span>*</span></label>
	    	<input type="text" class="form-control unicase-form-control text-input" id="contactno" name="contactno" maxlength="10" required >
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="password">Contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" id="password" name="password"  required >
	  	</div>

<div class="form-group">
	    	<label class="info-title" for="confirmpassword">Confirmar contraseña. <span>*</span></label>
	    	<input type="password" class="form-control unicase-form-control text-input" id="confirmpassword" name="confirmpassword" required >
	  	</div>


	  	<button type="submit" name="submit" class="btn-upper btn btn-primary checkout-page-button" id="submit">Registrarse</button>
	</form>
	<span class="checkout-subtitle outer-top-xs">Registrate ahora y obten nuestros beneficios :  </span>
	<div class="checkbox">
	  	<label class="checkbox">
		  	Rapidez y seguridad en tu forma de pagos.
		</label>
		<label class="checkbox">
		Seguimiento de pedidos.
		</label>
		<label class="checkbox">
			Revisa tu Historial de pedidos.
		</label>
	</div>
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div>
</div>
</div>
<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	
</body>
</html>