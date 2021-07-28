<?php
#Salir si alguno de los datos no está presente
if (!isset($_POST["names"]) || !isset($_POST["age"]) || !isset($_POST["birthday"]) || !isset($_POST["phone"])) {
    exit();
}

#Si todo va bien, se ejecuta esta parte del código...

    include_once "../conexion/base_de_datos.php";

    $names = $_POST["names"];
    $age = $_POST["age"];
    $birthday = $_POST["birthday"];
    $phone = $_POST["phone"];

/*
Al incluir el archivo "base_de_datos.php", todas sus variables están
a nuestra disposición. Por lo que podemos acceder a ellas tal como si hubiéramos
copiado y pegado el código
 */
$sentencia = $base_de_datos->prepare("INSERT INTO pacientes(names, age, birthday, phone) VALUES (?, ?, ?, ?);");
$resultado = $sentencia->execute([$names, $age, $birthday, $phone]); # Pasar en el mismo orden de los ?

#execute regresa un booleano. True en caso de que todo vaya bien, falso en caso contrario.
#Con eso podemos evaluar

if ($resultado === true) {
    # Redireccionar a la lista
	header("Location: lista_paciente.php");
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista";
}?>