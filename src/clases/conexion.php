<?php

class conexion {
    
    private $serverName;
    private $username;
    private $password;
    private $db;
    private $conn;

    function __construct(){

        $this->connect();

    }

    public function connect(){

        $myfile = fopen('conf.csv', 'r') or die('Unable to open file!');

            while(($line = fgetcsv($myfile)) !== false) {

                $this->serverName = $line[0];
                $this->username = $line[1];
                $this->password = $line[2];
                $this->db = $line[3];
            
            }

        fclose($myfile);
        
        try {

            $conn = new mysqli($this->serverName, $this->username, $this->password, $this->db);  

        } catch (mysqli_sql_exception $e) {
            
            die('He ocurrido un error: '.$e->getMessage());

        }

        $this->conn = $conn;

    }


    /**
     * Get the value of conn
     */ 
    public function getConn()
    {
        return $this->conn;
    }


}

?>