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
    !isset($_POST["age"]) ||
    !isset($_POST["birthday"]) ||
    !isset($_POST["phone"]) ||

    !isset($_POST["id"]) 

    
) {
    exit();
}

#Si todo va bien, se ejecuta esta parte del código...

include_once "../conexion/base_de_datos.php";
$id = $_POST["id"];

$names = $_POST["names"];
$age = $_POST["age"];
$birthday = $_POST["birthday"];
$phone = $_POST["phone"];

$sentencia = $base_de_datos->prepare("UPDATE pacientes SET doctor_id = ?, names = ?, age = ?, birthday = ?, phone = ? WHERE id = ?;");
$resultado = $sentencia->execute([$doctor_id, $names, $age, $birthday, $phone, $id]); # Pasar en el mismo orden de los ?
if ($resultado === true) {
    header("Location: lista_paciente.php");
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista, así como el ID del usuario.";
}