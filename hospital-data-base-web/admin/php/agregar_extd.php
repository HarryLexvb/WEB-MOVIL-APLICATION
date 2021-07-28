<?php
#Salir si alguno de los datos no está presente
if (!isset($_POST["names"]) || !isset($_POST["email"]) || !isset($_POST["id_licencia"]) || !isset($_POST["especialidad"])) {
    exit();
}

#Si todo va bien, se ejecuta esta parte del código...

    include_once "../conexion/base_de_datos.php";
    
    $names = $_POST["names"];
    $email = $_POST["email"];
    $id_licencia = $_POST["id_licencia"];
    $especialidad = $_POST["especialidad"];
    
/*
Al incluir el archivo "base_de_datos.php", todas sus variables están
a nuestra disposición. Por lo que podemos acceder a ellas tal como si hubiéramos
copiado y pegado el código
 */
$sentencia = $base_de_datos->prepare("INSERT INTO doctores(names, email, id_licencia, especialidad) VALUES (?, ?, ?, ?);");
$resultado = $sentencia->execute([$names, $email, $id_licencia, $especialidad]); # Pasar en el mismo orden de los ?

#execute regresa un booleano. True en caso de que todo vaya bien, falso en caso contrario.
#Con eso podemos evaluar

if ($resultado === true) {
    # Redireccionar a la lista
	header("Location: lista_doctor.php");
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista.";
}?>



