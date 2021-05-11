<?php

    $return = file_get_contents("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/FiltroProvincia/46");
    var_dump(json_decode($return));
    
?>