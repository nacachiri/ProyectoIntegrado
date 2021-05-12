<?php

    class usuarios extends conexion {
       
        public function loginUser($arrDatos){
            
            if (!empty($arrDatos['email']) && !empty($arrDatos['password'])) {

                $conn = $this->getConn();

                $emailPost = $arrDatos['email'];

                $sql = "SELECT email, password FROM register_user WHERE email = '$emailPost'";
                $query = $conn->query($sql);
                $user = $query->fetch_assoc();

                if (password_verify($arrDatos['password'], $user['password']) && $arrDatos['email'] == $user['email']) {

                    session_start();
                    $_SESSION['logged'] = true;
                    // header('location:../index.php');
                    return 'Todo OK Loggeado';

                } else {

                    $_SESSION['logged'] = false;
                    return 'Algo ha fallado no estas loggedao';

                }

            }else {

                throw new Exception("Alguno de los campos esta vacio", 2);

            }

        }

        public function encryptPassword($password){
           
            $hash = password_hash($password, PASSWORD_BCRYPT, ['cost' => 4]);

            return $hash;

        }

    }
    

?>