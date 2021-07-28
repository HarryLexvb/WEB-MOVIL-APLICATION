<?php 
//echo intval($_POST["0"]);
$iterador = 0;
$suma = 0;
//echo $iterador; echo $ctr;
while($iterador <= $ctr)
{
    $value1 = intval($_POST[sprintf($iterador)]); $iterador = $iterador + 1;
    $value2 = intval($_POST[sprintf($iterador)]); $iterador = $iterador + 1;
    $value3 = intval($_POST[sprintf($iterador)]); $iterador = $iterador + 1;
    $cantidad = intval($_POST[sprintf($iterador)]); $iterador = $iterador + 1;
    $suma = $suma + ($value1+$value2+$value3)*$cantidad;
}
echo $suma;
$act_suma = true;
?>