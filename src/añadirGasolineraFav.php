<?php

    require_once 'autoload.php';

    $lista1 = new gasolinera();

    $request = json_decode(file_get_contents('php://input'), true);
    // echo json_encode($request);

    $datos = $lista1->añadirGasolineraFav($request);

    echo $datos;

?>