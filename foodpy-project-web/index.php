<?php

session_start();//funcion de php
error_reporting(0);
include('includes/config.php');
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
			header('location:index.php');
		}else{
			$message="Product ID is invalid";
		}
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

	    <title>foodpy</title>

	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/css/main.css">
		<link rel="stylesheet" href="assets/css/orange.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<link rel="stylesheet" href="assets/css/owl.theme.css">
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/cartastyle.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
		<!-- IMAGEN DE PESTAÑITA -->
		<link rel="shortcut icon" href="assets/images/sliders/foodpy.image.png" >


		<style>
    
    .cart-link{width: 100%;text-align: right;display: block;font-size: 22px;}
    </style>
		
	</head>

<body >
	
		
	
			<header class="header-style-1">
			<?php include('includes/top-header.php');?>
			<?php include('includes/main-header.php');?>
			<?php include('includes/menu-bar.php');?>
			</header>



	<!--Aqui estan los sliders o banners-->
	<div class="container-slider">
		<div class="slider_index" id="slider">
			<div class="slider__section">
				<img src="assets/images/sliders/sslider1.jpeg" alt="" class="slider__img">
			</div>
			<div class="slider__section">
				<img src="assets/images/sliders/slider2.jpg" alt="" class="slider__img">
			</div>
		</div>
		<div class="slider__btn slider__btn--right" id="btn-right">&#62;</div>
		<div class="slider__btn slider__btn--left" id="btn-left">&#60;</div>
	</div>


		<main class="main">
			<div class="container">
              <h3 class="testimonial__title">LO MEJOR DE LA GASTRONOMIA PERUANA</h3>
			  <section class="container-products">
			  	<?php
				$ret=mysqli_query($con,"select * from products");
				while ($row=mysqli_fetch_array($ret)) 
				{
				?>
              
					<div class="product">
						<img src="img/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" data-echo="img/productimages/<?php echo htmlentities($row['id']);?>/<?php echo htmlentities($row['productImage1']);?>" alt="" class="product__img"></a>
					
						<div class="product__description">
							<h3 class="product_title"><a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>"><?php echo htmlentities($row['productName']);?></a></h3>
							
							<span class="product__price">$<?php echo htmlentities($row['productPrice']);?></span>
						</div>
						<a href="product-details.php?pid=<?php echo htmlentities($row['id']);?>" class="product__icon fas fa-cart-plus"></a>
					</div>

             
			  <?php } ?> 
			</section>
              
            </div>
        </main>

	<br>	


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
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script src="js/slider.js"></script>

</body>
</html>