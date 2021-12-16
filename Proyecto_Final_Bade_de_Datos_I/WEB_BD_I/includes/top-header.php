<?php 
//session_start();

?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))

    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Bienvenido <?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>Mi cuenta</a></li>
					<li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Lista de deseos</a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>Mi carrito</a></li>
					<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Iniciar sesión</a></li>
<?php }
else{ ?>
	
				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Cerrar sesión</a></li>
				<?php } ?>
					<li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#change-colors" aria-expanded="false">Colores</a>

                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" class="changecolor green-text" tabindex="-1" href="#" title="Green color">Verde</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor blue-text" tabindex="-1" href="#" title="Blue color">Azul</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor orange-text" tabindex="-1" href="#" title="Orange color">Naranja</a></li>
									<li role="presentation"><a role="menuitem" class="changecolor red-text" tabindex="-1" href="#" title="Red color">Rojo</a></li>                                    
                                    <li role="presentation"><a role="menuitem" class="changecolor navy-text" tabindex="-1" href="#" title="Navy color">Militar</a></li>
                                    <li role="presentation"><a role="menuitem" class="changecolor dark-green-text" tabindex="-1" href="#" title="Darkgreen color">Verde</a></li>
                                </ul>
                            </li>
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="track-orders.php" class="dropdown-toggle" ><span class="key">Seguimiento de pedidos</b></a>
						
					</li>

				
				</ul>
			</div>
			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->