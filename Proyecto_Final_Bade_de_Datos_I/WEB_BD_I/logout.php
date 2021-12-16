<?php
session_start();
include("includes/config.php");
$_SESSION['login']=="";
date_default_timezone_set('America/Lima');
$ldate=date( 'd-m-Y h:i:s A', time () );
mysqli_query($con,"UPDATE userlog  SET logout = '$ldate' WHERE userEmail = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");
session_unset();
$_SESSION['errmsg']="¡Regrese pronto! Ud ha cerrado sesión!";
?>
<script language="javascript">
document.location="index.php";
</script>
