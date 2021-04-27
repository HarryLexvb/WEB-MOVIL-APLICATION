<?php
	include_once('conexion.php');
	$mensajeOk=false;
	$mensajeError='El sistema no se encuentra disponible';
	if(isset($_POST['Usuario'],$_POST['Contrasena'])):
		if($_POST['Usuario']!=""):
			if($_POST['Contrasena']!=""):
				$Usuario=$_POST['Usuario'];
				$Contrasena=$_POST['Contrasena'];
				$consulta=pg_query($conexion,("Select * from Usuario where Usuario='$Usuario' and Contrasena='$Contrasena'"));
				if(pg_num_rows($consulta)>0):
					$mensajeOk=true;
					$Usua=pg_fetch_array($consulta);
					session_start();
					$_SESSION['Id']=$Usua[0];
					$_SESSION['Usuario']=$Usua[1];
					$mensajeError='Logueado correctamente ok.';
				else:
					$mensajeError='Usuario o contraseña incorrecta.';
				endif;
			else:
				$mensajeError='Contraseña incorrecta.';
			endif;
		else:
			$mensajeError='Usuario no existe ok.';
		endif;
	else:
		$mensajeError='Todos los datos son requeridos.';
	endif;
	$salidaJson=array('respuesta' => $mensajeOk, 'mensaje' =>$mensajeError);
	echo json_encode($salidaJson);
?>