<?php    

    require_once 'autoload.php';

    $gasolineras = new gasolinera();

    $datos = $gasolineras->idGasolineraConf();
    
    echo json_encode($datos, JSON_UNESCAPED_UNICODE);

?>