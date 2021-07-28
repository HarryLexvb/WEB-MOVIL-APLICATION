<?php


session_start();
error_reporting(0);
include('includes/config.php');

$cid=intval($_GET['cid']);

if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:my-cart.php');
		}else{
			$message="Product ID is invalid";
		}
	}
}
// COde for Wishlist
if(isset($_GET['pid']) && $_GET['action']=="wishlist" ){
	if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else
{
mysqli_query($con,"insert into wishlist(userId,productId) values('".$_SESSION['id']."','".$_GET['pid']."')");
echo "<script>alert('Product aaded in wishlist');</script>";
header('location:my-wishlist.php');

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

	    <title>Product Category</title>

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
		<link rel="stylesheet" href="css/cartastyle.css">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
	

		
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- IMAGEN DE PESTAÑITA -->
		<link rel="shortcut icon" href="assets/images/sliders/foodpy.image.png" >
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

	</head>
    <body class="cnt-home">
	
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
		
			



<!--MOSTRAR SLIDERS DE CATEGORIAS-->



<div class="container-slider">

	<div class="slider" id="slider">
		<?php 
		
		$ret=mysqli_query($con,"select * from products where category='$cid'");
		while($row=mysqli_fetch_array($ret))
		{
		?>
		<div class="slider__section">
			
			<img src="assets/images/blank.gif" 
			data-echo="img/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>"  
			alt="" class="slider__img">
			<div class="slider__content">

				<h2 class="slider__title"><?php echo htmlentities($row['productName']);?></h2>
				
				<a href="AccionCarta.php?action=addToCart&id=<?php echo $row['id']; ?>" class="btn-shop">COMPRAR AHORA</a>
			</div>

		</div>
		
		<?php } ?>
	</div>

	
	<div class="slider__btn slider__btn--right" id="btn-right">&#62;</div>
	<div class="slider__btn slider__btn--left" id="btn-left">&#60;</div>
</div>


<!--MUESTRA CONTENIDO DE LA CATEGORIA  FACHERITOOOO falta el recuadro-->
<main class="main">
    <div class="container">
		<div class="body-content outer-top-xs"><!--DA ESPACIO ENTRE EL BANER Y LAS IMAGENES-->
		

		<div class="category-product  inner-top-vs"><!--DA ESPACIO ENTRE EL BANER Y LAS IMAGENES-->
			<div class="row"><!--	-->
				<section class="container-products">
				<?php
				$ret=mysqli_query($con,"select * from products where category='$cid'");
				$num=mysqli_num_rows($ret);
				if($num>0)
				{
				while ($row=mysqli_fetch_array($ret)) 
				{?>		
				
					<div class="product">
					<img  src="assets/images/blank.gif" data-echo="img/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt=""class="product__img">
					<div class="product__description">
						<h3 class="product__title"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
						<span class="product__price">$. <?php echo htmlentities($row['productPrice']);?>			</span>	
					</div>
					<i href="product-details.php?pid=<?php echo htmlentities($row['id']);?>" class="product__icon fas fa-cart-plus"></i>
					</div>
					<div class="product">
					<img  src="assets/images/blank.gif" data-echo="img/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt=""class="product__img">
					<div class="product__description">
						<h3 class="product__title"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
						<span class="product__price">$. <?php echo htmlentities($row['productPrice']);?>			</span>	
					</div>
					<i href="product-details.php?pid=<?php echo htmlentities($row['id']);?>" class="product__icon fas fa-cart-plus"></i>
					</div>
				
				<?php } } else {?>
				</section>
				</div>

				<div class="col-sm-6 col-md-4 wow fadeInUp"> <h3>No se encontraron productos</h3>
				</div>

				<?php } ?>	

			</div><!-- /.row -->
		</div><!-- /.category-product -->
				
	</div>
				<section class="container__testimonials">
                <h2 class="section__title">Testimonio</h2>
                <h3 class="testimonial__title">ACERCA DE NOSOTROS</h3>
                <p class="testimonial__txt">Somos un grupo de jovenes sin fines de lucro que se enorgullecen por la comida peruana, y buscan compartir cada comida.</p>
              </section>
            
              <div class="container-editor">
                <div class="editor__item">
                  <img src="img/mistura.jpg" alt="" class="editor__img">
				  <p class="editor__circle">AFILIATE AHORA</p>
                </div>
                <div class="editor__item">
                  <img src="img/rappi.jpeg" alt="" class="editor__img">
                  <p class="editor__circle">AFILIATE AHORA</p>
                </div>
              </div>

              <section class="container-tips">
			  <div class="tip">
                  <i class="fas fa-cog"></i>
                  <h2 class="tip__title">Variedad Cultural</h2>
                  <p class="tip__txt">En Mistura encontraras los platos mas representativos de las regiones del Peru.</p>
                  <a href="#" class="btn-shop">AFILIATE AHORA</a>
                </div>
              
			  
                <div class="tip">
                 <i class="fas fa-rocket"></i>
                  <h2 class="tip__title">Satisfaccion Garantizada</h2>
                  <p class="tip__txt">Perú es distinguido como mejor destino culinario por octavo año consecutivo.</p>
                  <a href="index.php" class="btn-shop">COMPRAR AHORA</a>
                </div>

                <div class="tip">
                  <i class="far fa-hand-paper"></i> 
                  <h2 class="tip__title">Compra Facil y Rapida</h2>
                  <p class="tip__txt">Con Rappi, tu comida llegara segura, y a tiempo, como recien salido del horno.</p>
                  <a href="#" class="btn-shop">AFILIATE AHORA</a>
                </div>
			</section>

	</div>
</main>
<!-- .... -->

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
	
	<script src="js/slider.js"></script>
					
</body>
</html>