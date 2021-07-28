<?php 

// DETALLES DE LOS PRODUCTOS
session_start();
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
			header('location:my-cart.php');
		}else{
			$message="Product ID is invalid";
		}
	}
}
/////////////////
$cid=intval($_GET['cid']);
$pid=intval($_GET['pid']);




//GUARDA LOS PRECIOS EN UNA TABLA DE DATOS
if(isset($_POST['submit']))
{
	$qty=$_POST['quality'];
	$price=$_POST['price'];
	$value=$_POST['value'];
	$name=$_POST['name'];
	$summary=$_POST['summary'];
	$review=$_POST['review'];
	mysqli_query($con,"insert into productreviews(productId,quality,price,value,name,summary,review) values('$pid','$qty','$price','$value','$name','$summary','$review')");
}
////////////

?>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">
	    <title>Product Details</title>
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/orange.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<link rel="stylesheet" href="assets/css/config.css">
		<link rel="stylesheet" href="css/cartastyle.css">

		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="assets/images/sliders/foodpy.image.png" >
	</head>



<body class="cnt-home">
	
	<header class="header-style-1">
		<?php include('includes/top-header.php');?>
		<?php include('includes/main-header.php');?>
		<?php include('includes/menu-bar.php');?>
	</header>

<div class="container-slider">

<div class="slider_details" id="slider">
	<?php 
	
	$rat=mysqli_query($con,"select * from products where id='$pid'");
	while($rew=mysqli_fetch_array($rat))
	{
	?>
	<div class="slider__section__details">
		
		<img src="assets/images/blank.gif" data-echo="img/productimages/<?php echo htmlentities($rew['id']);?>/<?php echo htmlentities($rew['productImage1']);?>"  
		alt="" class="slider__img__details">
		
	</div>
	<div class="slider__section__details">
		
		<img src="assets/images/blank.gif" data-echo="img/productimages/<?php echo htmlentities($rew['id']);?>/<?php echo htmlentities($rew['productImage2']);?>"  
		alt="" class="slider__img">
		
	</div>
	<div class="slider__section">
		
		<img src="assets/images/blank.gif" data-echo="img/productimages/<?php echo htmlentities($rew['id']);?>/<?php echo htmlentities($rew['productImage3']);?>"  
		alt="" class="slider__img">
		
	</div>
	
	<?php } ?>
</div>


<div class="slider__btn slider__btn--right" id="btn-right">&#62;</div>
<div class="slider__btn slider__btn--left" id="btn-left">&#60;</div>
</div>




		
							
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row single-product outer-bottom-sm '>
		<?php 
				$ret=mysqli_query($con,"select * from products where id='$pid'");
				while($row=mysqli_fetch_array($ret))
				{
				?>
					
							
					<div class='col-md-9'>


						<div class="row  wow fadeInUp">
								<!--<div class='col-sm-6 col-md-7 product-info-block'>-->
									<div class="product-info">
										
										<h1 class="name"><?php echo htmlentities($row['productName']);?></h1></br>
										
										
										<?php 
										$rt=mysqli_query($con,"select * from productreviews where productId='$pid'");
										$num=mysqli_num_rows($rt);
										
										?>	

										<div class="stock-container info-container m-t-10">
										<!--	<div class="row">
												<div class="col-sm-3">-->
													<div class="stock-box">
														<span class="label">Type :</span>
														<span class="value"><?php echo htmlentities($row['productCompany']);?></span>
													</div>	
												<!--</div>
												<div class="col-sm-9">
													<div class="stock-box">
														
													</div>	-->
												<!--</div>-->
											<!--</div> /.row--> 	
										</div>


										<div class="stock-container info-container m-t-10">
											<!--<div class="row">
												<div class="col-sm-3">-->
													<div class="stock-box">
														<span class="label">Costo de envío:</span>
														<span class="value">
														<?php 
														if($row['shippingCharge']==0)
														{
															echo "Gratis";
														}
														else
														{
															echo htmlentities($row['shippingCharge']);
														}

														?></span>
													</div>	
												<!-- </div>
												<div class="col-sm-9">
													<div class="stock-box">
														<span class="value">
														</span>
													</div>	
												</div>
											</div>/.row -->	
										</div>

										<div class="price-container info-container m-t-20">
											<!--<div class="row">
												

												<div class="col-sm-6">-->
													<div class="price-box">
														<span class="price">$. <?php echo htmlentities($row['productPrice']);?></span>
														<span class="price-strike">$.<?php echo htmlentities($row['productPriceBeforeDiscount']);?></span>
													</div>
												<!--</div>

											</div> /.row -->
										</div><!-- /.price-container -->

										<div class="quantity-container info-container">
												<div class="row">
													
													<div class="col-sm-4">
														<span class="label">Cantidad :</span>
													</div>
													
														<div class="col-sm-3">
															<div class="cart-quantity">
																<div class="quant-input">
																	<div class="arrows">
																	<div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
																	<div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
																</div>
																<input type="text" value="1">
															</div>
														</div>
												</div>

												<div class="col-sm-5">
													<a href="product-details.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart inner-right-vs"></i> Agregar a compras</a>
												</div>

												
										</div> <!-- /.quantity-container -->
									

										<div class="product-social-link m-t-20 text-right">
											<span class="social-label">Compartir:</span>
											<div class="social-icons">
												<ul class="list-inline">
													<li><a class="fa fa-facebook" href=""></a></li>
													<li><a class="fa fa-twitter" href=""></a></li>
													<li><a class="fa fa-linkedin" href=""></a></li>
													<li><a class="fa fa-rss" href=""></a></li>
													<li><a class="fa fa-pinterest" href=""></a></li>
												</ul><!-- /.social-icons -->
											</div>
										</div>
									<?php $cid=$row['category'];
									$subcid=$row['subCategory'];?>
									</div><!-- /product info -->
												
								<!--</div> /.col-sm-6 col-md-7 product-info-block -->
							</div><!-- /.col-sm-7 -->
						</div>
	

						
					
									<div class="clearfix">
										<div class="product-tabs   wow fadeInUp">
										<div class="row">
											<div class="col-sm-4">
												<ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
													<li class="active"><a data-toggle="tab" href="#description">DESCRIPCIÓN</a></li>
													<li><a data-toggle="tab" href="#review">INGREDIENTES</a></li>
												</ul><!-- /.nav-tabs #product-tabs -->
												</div>
											<div class="col-sm-7">
												<div class="tab-content">
													<div id="description" class="tab-pane in active">
														<div class="product-tab">
															<p class="text"><?php echo $row['productDescription'];?></p>
														</div>	
													</div><!-- /.tab-pane -->
													
													<!--AQUI EMPIEZA LA TABLAAA INGRESIDNETES-->
													<div id="review" class="tab-pane">
														<div class="product-tab">
															<form action="" method="post">
																<div class="product-add-review">
																	<h4 class="title">Ingredientes</h4>
																	<div class="review-table">
																		<div class="table-responsive">
																			<table class="table table-bordered">	
																				<thead>

																					<tr>
																						<th class="cell-label">&nbsp;</th>
																						<th><img src="img/logo-metro.png"width="70"height="70"></th>
																						<th><img src="img/logo-plazavea.png"width="70"height="30"></th>
																						<th><img src="img/logo-tottus.png"width="70"height="70"></th>
																						<th>CANTIDAD</th>
																					</tr>
																				</thead>
																				<tbody>
																						<?php 
																						//SALIOOOOOOO
																						
																						$ctr = 0;
																						$id=intval($row['id']);
																						$ret=mysqli_query($con,"select * from ingredientes where products_id={$id}");
																						$num=mysqli_num_rows($ret);
																						if($num>0)
																						{
																							while ($raw=mysqli_fetch_array($ret)) 
																							{?>
																							<tr>
																								
																								<td class="cell-label"><?php echo htmlentities($raw['ingrediente']);?></td>
																								<td><input type="checkbox" name=<?php echo $ctr ?> class="checkbox" value=<?php echo htmlentities($raw['precio_1']);?>>$<?php echo htmlentities($raw['precio_1']);?></td> <?php $ctr = $ctr + 1; ?>
																								<td><input type="checkbox" name=<?php echo $ctr ?> class="checkbox" value=<?php echo htmlentities($raw['precio_2']);?>>$<?php echo htmlentities($raw['precio_2']);?></td> <?php $ctr = $ctr + 1; ?>
																								<td><input type="checkbox" name=<?php echo $ctr ?> class="checkbox" value=<?php echo htmlentities($raw['precio_3']);?>>$<?php echo htmlentities($raw['precio_3']);?></td> <?php $ctr = $ctr + 1; ?>
																								<td><input type='number' name=<?php echo $ctr ?> required='required'value="1"> <?php $ctr = $ctr + 1; ?>
																								
																								
																							</tr>
																							<?php }
																						}?>
																				</tbody>
																			</table><!-- /.table .table-bordered -->
																		</div><!-- /.table-responsive -->
																	</div><!-- /.review-table -->

																	<!--NO BORRAR BOTOOOOOOON-->
																	<div class="action text-right">
																		<button name="submit" class="btn btn-primary btn-upper">AÑADIR A CARRITO</button>
																	</div>
																</div><!-- /.product-add-review -->
															</form><!-- /.cnt-form -->
															<?php include('sumar_ing.php');?>
														</div><!-- /.product-tab -->
													</div><!-- /.tab-pane -->
													
												</div><!-- /.tab-content -->
											</div><!-- /.col -->
										</div><!-- /.row -->
									</div><!-- /.product-tabs -->
									</div>

				</div><!-- /.col -->					
					
		<?php }?>
					
		
		

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

	<script src="js/slider.js"></script>

		
	

</body>
</html>