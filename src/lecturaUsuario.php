<?php

    require_once 'autoload.php';

    $lista1 = new usuarios();

    $request = json_decode(file_get_contents('php://input'), true);
    // echo json_encode($request);

    $datos = $lista1->loginUser($request);

    echo $datos;

?>