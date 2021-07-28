<?php
/*
================================
Este archivo guarda los datos del formulario
en donde se editan
================================
*/
?>

<?php

#Salir si alguno de los datos no está presente
if (

    !isset($_POST["names"]) ||
    !isset($_POST["email"]) ||
    !isset($_POST["id_licencia"]) ||
    !isset($_POST["especialidad"]) ||

    !isset($_POST["id"]) 

    
) {
    exit();
}

#Si todo va bien, se ejecuta esta parte del código...


include_once "../conexion/base_de_datos.php";
$id = $_POST["id"];

$names = $_POST["names"];
$email = $_POST["email"];
$id_licencia = $_POST["id_licencia"];
$especialidad = $_POST["especialidad"];

$sentencia = $base_de_datos->prepare("UPDATE doctores SET names = ?, email = ?, id_licencia = ?, especialidad = ? WHERE id = ?;");
$resultado = $sentencia->execute([$names, $email, $id_licencia, $especialidad, $id]); # Pasar en el mismo orden de los ?
if ($resultado === true) {
    header("Location: lista_doctor.php");
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista, así como el ID del usuario.";
}