<?php 
//llamando desde login 
//REGISTROO
require_once("includes/config.php");
//Compruebas si el email ingresado ya existe

//si el llenado no es vacio
if(!empty($_POST["email"])) {
	$email= $_POST["email"];
	
		$result =mysqli_query($con,"SELECT  email FROM  users WHERE  email='$email'");
		$count=mysqli_num_rows($result);//si se enuntra el email en la tabla users entonces count ya no vale 0
if($count>0)
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:orange'> Email available for Registration .</span>";
	//echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
