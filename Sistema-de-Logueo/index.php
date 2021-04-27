<?php 

	include_once('views/head.php');
	include_once('views/navbar.php');
?>
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
			</div>
			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 well">
				<form action="" name="f1" method="post">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" id="usuario" class="form-control">
					</div><br/>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input type="password" id="contrasena" class="form-control">
					</div><br/>
					<div class="input-group">
						<button type="button" class="btn btn-default" id="Iniciar">Iniciar Sesión</button>
					</div>
				</form>
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="mensaje">
				
				</div>
			</div>
			
<?php 
	include_once('views/footer.php');
?>