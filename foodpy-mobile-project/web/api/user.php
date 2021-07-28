<?php

require_once('db.php');

//Obtener usuario logeado
if (isset($_GET['email']) && isset($_GET['password'])){
//    $db = new DB();
//    $users = [];
//    //$users = array();
//    $query = getUser($db, $_GET['email'], $_GET['password']);
//    if ($query->rowCount()){
//        while ($row = $query->fetch(PDO::FETCH_ASSOC)){
////            $item = array(
////                'id' => $row['id'],
////                'name' => $row['name']
////            );
////            array_push($item);
//            $users = [
//                'id' => $row['id'],
//                'name' => $row['name'],
//                'email' => $row['email']
//            ];
//        }
//    }else{
//        $users = [
//            'id' => null,
//            'name' => null,
//            'email' => null
//        ];
//        //echo json_encode(array());
//    }
//
//    echo json_encode($users);
    apiUser($_GET['email'], $_GET['password']);
}

function apiUser($email, $password){
    $db = new DB();
    $users = [];
    //$users = array();
    $query = getUser($db, $email, $password);
    if ($query->rowCount()){
        while ($row = $query->fetch(PDO::FETCH_ASSOC)){
            $users = [
                'id' => $row['id'],
                'name' => $row['name'],
                'email' => $row['email']
            ];
        }
    }else{
        $users = [
            'id' => null,
            'name' => null,
            'email' => null
        ];
        //echo json_encode(array());
    }

    echo json_encode($users);
}

//Registrar nuevo usuario
if (isset($_POST['name'])){
    $db = new DB();

    addUser($db, [
        'name' => $_POST['name'],
        'email' => $_POST['email'],
        'contactno' => $_POST['contactno'],
        'password' => $_POST['password']
    ]);
}







function getUser(DB $db, $email, $password){
    $query = $db->connect()->prepare('SELECT * FROM users WHERE email= :email AND password= :password');
    $query->execute(['email' => $email, 'password' => $password]);

    return $query;
}

function addUser(DB $db, $userArray){
    $query = $db->connect()->prepare('INSERT INTO users (name, email, contactno, password) VALUES (:name, :email, :contactno, :password)');
    $query->execute(['name' => $userArray['name'], 'email' => $userArray['email'], 'contactno' => $userArray['contactno'], 'password' => $userArray['password']]);

    apiUser($userArray['email'], $userArray['password']);

    //return $query;
}
