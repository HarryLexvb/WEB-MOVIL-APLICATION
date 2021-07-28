<?php 
/*:3*/
?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

				<?php if(strlen($_SESSION['login']))
					{   ?>
					<li><a href="#"><i class="icon fa fa-user"></i>Bienvenido -<?php echo htmlentities($_SESSION['username']);?></a></li>
					<?php } ?>

						<li><a href="my-account.php"><i class="icon fa fa-user"></i>Mi cuenta</a></li>
						
						<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>Mi carrito</a></li>
						
				<?php if(strlen($_SESSION['login'])==0)
					{   ?>
				<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Iniciar sesión</a></li>
				<?php }
				else{ ?>
	
				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Cerrar sesión</a></li>
				<?php } ?>
					<li class="dropdown">
                                

                                <ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" class="changecolor orange-text" tabindex="-1" href="#" title="Orange color">Naranja</a></li>
                                    
                                </ul>
                        	</li>
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">

			</div>
			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->