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
                    return true;

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

        public function registerUser($arrDatos) {

            if (!empty($arrDatos['name']) && !empty($arrDatos['surnames']) && !empty($arrDatos['email']) && !empty($arrDatos['password']) && !empty($arrDatos['dni']) && !empty($arrDatos['cp'])) {

                $formatoDNI= preg_match('/[0-9]{7,8}[A-Z]/', $arrDatos['dni']);

                if ($formatoDNI == true) {

                    if(filter_var($arrDatos["email"] , FILTER_VALIDATE_EMAIL)){

                        if (strlen($arrDatos["password"]) > 8) {

                            if (strlen($arrDatos["cp"]) == 5) {
                                
                                $conn = $this->getConn();

                                $dniPost = $arrDatos['dni'];
                                $namePost = $arrDatos['name'];
                                $surnamesPost = $arrDatos['surnames'];
                                $emailPost = $arrDatos['email'];
                                $passwordPost = $this->encryptPassword($arrDatos['password']);
                                $cpPost = $arrDatos['cp'];
                
                                $sql = "INSERT INTO register_user (dni, nombre, apellidos, email, password, cp) VALUES ('$dniPost', '$namePost', '$surnamesPost', '$emailPost', '$passwordPost', '$cpPost');";
                                $query = $conn->query($sql);

                                return true;

                            }else {

                                return 'El cp es incorrecto su logitud tiene que ser 5';
    
                            }

                        }else {

                            return 'El password es incorrecto minimo 8 caracteres';

                        }

                    }else{

                        return 'El email es incorrecto';

                    }
                    
                    

                }else {
                    
                    return 'El dni es incorrecto';

                }

            }else {

                return 'Alguno de los campos es incorreto';

            }

        }

    }
    

?>