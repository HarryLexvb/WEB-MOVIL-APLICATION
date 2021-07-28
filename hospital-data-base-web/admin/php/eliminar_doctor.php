<?php
/*

================================
Este archivo elimina un dato por ID sin
pedir confirmación. El ID viene de la URL
================================
*/
if (!isset($_GET["id"])) {
    exit();
}

$id = $_GET["id"];
include_once "../conexion/base_de_datos.php";
$sentencia = $base_de_datos->prepare("DELETE FROM doctores WHERE id = ?;");
$resultado = $sentencia->execute([$id]);
if ($resultado === true) {
    header("Location: lista_doctor.php");
} else {
    echo "Algo salió mal.";
}
?>