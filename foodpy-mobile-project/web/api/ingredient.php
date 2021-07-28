<?php

require_once('db.php');

if (isset($_GET['id'])){
    $db = new DB();
    $products = [];
    $query = getIngredients($db, $_GET['id']);

    if ($query->rowCount()){
        while ($row = $query->fetch(PDO::FETCH_ASSOC)){
//            $users = [
//                'id' => $row['id'],
//                'name' => $row['name'],
//                'email' => $row['email']
//            ];
            array_push($products, [
                'name' => $row['ingrediente'],
                'priceMetro' => $row['precio_1'],
                'pricePlazaVea' => $row['precio_2'],
                'priceTottus' => $row['precio_3']
            ]);
        }
    }else{
//        $users = [
//            'id' => null,
//            'name' => null,
//            'email' => null
//        ];
        //echo json_encode(array());
    }

    echo json_encode($products);
}

function getIngredients(DB $db, $idProduct){
    $query = $db->connect()->prepare('SELECT * FROM ingredientes WHERE products_id= :idProduct');
    $query->execute(['idProduct' => $idProduct]);

    return $query;
}