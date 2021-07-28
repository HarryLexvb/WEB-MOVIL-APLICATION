<?php
//llamar a nuestra base de datos
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'shopping');
//cualquier dato llamado de la bse de datos se llama con '$con'
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// revisar conexion
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>