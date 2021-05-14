<?php
    session_start();

    if ($_SESSION['logged'] == false) {
        
        header('location:public/login.html');

    }
    
    echo 'Esta es la pagina de inicio';


?>

<form action='../src/destruirSesion.php'>
    <input type="submit" name="sesionDestroy" value="Cerrar sesion"/>
</form>


