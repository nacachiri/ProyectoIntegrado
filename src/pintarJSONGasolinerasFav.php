<?php    

    require_once 'autoload.php';

    $gasolineras = new gasolinera();

    $datos = $gasolineras->pintarGasolinerasFav();
    
    echo json_encode($datos, JSON_UNESCAPED_UNICODE);

?>