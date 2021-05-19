<?php    
    session_start();
    require_once 'autoload.php';

    $usuario = new usuarios();

    $datos = $usuario->selectUsuario();
    
    echo json_encode($datos, JSON_UNESCAPED_UNICODE);

?>