<?php

require_once('db.php');

$db = new DB();
$products = [];
if (isset($_GET['id'])){
    $query = getProducts($db, $_GET['id']);

}else{
    $query = getAllProducts($db);

}
if ($query->rowCount()){
    while ($row = $query->fetch(PDO::FETCH_ASSOC)){
        array_push($products, [
            'id' => $row['id'],
            'productName' => $row['productName'],
            'productPrice' => $row['productPrice'],
            'productImage1' => $row['productImage1'],
            'shippingCharge' => $row['shippingCharge']
        ]);
    }
}
echo json_encode($products);

function getProducts(DB $db, $idCategory){
    $query = $db->connect()->prepare('SELECT * FROM products WHERE category= :idCategory');
    $query->execute(['idCategory' => $idCategory]);

    return $query;
}

function getAllProducts(DB $db){
    $query = $db->connect()->prepare('SELECT * FROM products');
    $query->execute();

    return $query;
}