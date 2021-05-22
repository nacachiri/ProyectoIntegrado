<?php

    class gasolinera extends conexion {
        
        private $id;
        private $logo;
        private $nombre;
        private $direccion;
        private $latitud;
        private $longitud;
        private $idMunicipio;
        private $gasolina95;
        private $gasolina98;
        private $diesel;
        private $dieselPremium;
        private $horaio;

        public function truncarTablas($tabla) {
            
            $conn = $this->getConn();

            $sql1 = "SET FOREIGN_KEY_CHECKS=0;";
            $query1 = $conn->query($sql1);

            $sql2 = "TRUNCATE TABLE $tabla;";
            $query2 = $conn->query($sql2);

            $sql3 = "SET FOREIGN_KEY_CHECKS=1;";
            $query3 = $conn->query($sql3);

            return $query3;
            
        }

        public function importarMunicipios($arrGasolineras) {

            var_dump($this->truncarTablas('gasolineras'));
            var_dump($this->truncarTablas('municipios'));

            $conn = $this->getConn();

            $stmt = $conn->prepare("INSERT INTO municipios(id_municipio, municipio) VALUES (?, ?)");
            $stmt->bind_param('is', $idMunicipio, $nombreMunicipio);
            
            foreach ($arrGasolineras->ListaEESSPrecio as $gasolinera) {

                $idMunicipio = $gasolinera->IDMunicipio;
                $nombreMunicipio = $gasolinera->Municipio;
                $stmt->execute();

            }

        }

        public function importar() {

            $conn = $this->getConn();

            $return = file_get_contents("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/FiltroProvincia/46");
            $arrGasolineras = json_decode($return);

            $this->importarMunicipios($arrGasolineras);

            $stmt = $conn->prepare("INSERT INTO gasolineras(logo, nombre, direccion, id_municipio, latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param('sssidddddds', $logo, $nombre, $direccion, $idMunicipio, $latitud, $longitud, $gasolina95, $gasolina98, $diesel, $dieselPremium, $horario);
                
            foreach ($arrGasolineras->ListaEESSPrecio as $gasolinera) {

                $logo = '';
                $nombre = $gasolinera->Rótulo;

                if (strpos($nombre, 'REPSOL') !== false) {
                    $logo = 'logosGasolineras/logoRepsol.png';
                }elseif (strpos($nombre, 'ALCAMPO') !== false) {
                    $logo = 'logosGasolineras/logoAlcampo.png';
                }elseif (strpos($nombre, 'CARREFOUR') !== false) {
                    $logo = 'logosGasolineras/logoCarrefour.png';
                }elseif (strpos($nombre, 'BP') !== false) {
                    $logo = 'logosGasolineras/logoBP.png';
                }elseif (strpos($nombre, 'CESPSA') !== false) {
                    $logo = 'logosGasolineras/logoCepsa.png';
                }elseif (strpos($nombre, 'GALP') !== false) {
                    $logo = 'logosGasolineras/logoGalp.png';
                }elseif (strpos($nombre, 'SHELL') !== false) {
                    $logo = 'logosGasolineras/logoShell.png';
                }elseif (strpos($nombre, 'AGRICAR') !== false) {
                    $logo = 'logosGasolineras/logoAgricar.png';
                }elseif (strpos($nombre, 'CAMPSA') !== false) {
                    $logo = 'logosGasolineras/logoCampsa.png';
                }elseif (strpos($nombre, 'EXOIL') !== false) {
                    $logo = 'logosGasolineras/logoExoil.png';
                }elseif (strpos($nombre, 'BZ') !== false) {
                    $logo = 'logosGasolineras/logoBZ.png';
                }elseif (strpos($nombre, 'BALLENOIL') !== false) {
                    $logo = 'logosGasolineras/logoBallenoil.png';
                }elseif (strpos($nombre, 'AVIA') !== false) {
                    $logo = 'logosGasolineras/logoAvia.png';
                }elseif (strpos($nombre, 'GASOLBEN') !== false) {
                    $logo = 'logosGasolineras/logoGasolben.png';
                }elseif (strpos($nombre, 'Q8') !== false) {
                    $logo = 'logosGasolineras/logoQ8.png';
                }elseif (strpos($nombre, 'BENZINA') !== false) {
                    $logo = 'logosGasolineras/logoBenzina.png';
                }elseif (strpos($nombre, 'BIOMAR') !== false) {
                    $logo = 'logosGasolineras/logoBiomar.png';
                }elseif (strpos($nombre, 'Bioner') !== false) {
                    $logo = 'logosGasolineras/logoBioner.png';
                }elseif (strpos($nombre, 'BURAN') !== false) {
                    $logo = 'logosGasolineras/logoBuranEnergy.png';
                }elseif (strpos($nombre, 'ELDISSER') !== false) {
                    $logo = 'logosGasolineras/logoEldisser.png';
                }elseif (strpos($nombre, 'PETROLUEM') !== false) {
                    $logo = 'logosGasolineras/logoPetroleum.png';
                }elseif (strpos($nombre, 'GASEXPRESS') !== false) {
                    $logo = 'logosGasolineras/logoGasexpress.png';
                }elseif (strpos($nombre, 'AGULLENT') !== false) {
                    $logo = 'logosGasolineras/logoAgullent.png';
                }elseif (strpos($nombre, 'GEST') !== false) {
                    $logo = 'logosGasolineras/logoGest.png';
                }elseif (strpos($nombre, 'MOLGAS') !== false) {
                    $logo = 'logosGasolineras/logoMolgas.png';
                }elseif (strpos($nombre, 'NATURGY') !== false) {
                    $logo = 'logosGasolineras/logoNaturgy.png';
                }elseif (strpos($nombre, 'OCTAPLUS') !== false) {
                    $logo = 'logosGasolineras/logoOctaplus.png';
                }elseif (strpos($nombre, 'PETROENERGY') !== false) {
                    $logo = 'logosGasolineras/logoPetroenergy.png';
                }elseif (strpos($nombre, 'PETROMAX') !== false) {
                    $logo = 'logosGasolineras/logoPetromax.png';
                }elseif (strpos($nombre, 'PETRONOR') !== false) {
                    $logo = 'logosGasolineras/logoPetronor.png';
                }elseif (strpos($nombre, 'PETROPASS') !== false) {
                    $logo = 'logosGasolineras/logoPetropass.png';
                }elseif (strpos($nombre, 'PETROPRIX') !== false) {
                    $logo = 'logosGasolineras/logoPetroprix.png';
                }elseif (strpos($nombre, 'PLENOIL') !== false) {
                    $logo = 'logosGasolineras/logoPlenoil.png';
                }elseif (strpos($nombre, 'TAMOIL') !== false) {
                    $logo = 'logosGasolineras/logoTamoil.png';
                }else {
                    $logo = 'logosGasolineras/logoDefault.png';
                }

                $direccion = $gasolinera->Dirección;
                $latitud = generica::numberFormatBD($gasolinera->Latitud);
                $longitud = generica::numberFormatBD($gasolinera->{'Longitud (WGS84)'});
                $idMunicipio = $gasolinera->{'IDMunicipio'};
                $gasolina95 = generica::numberFormatBD($gasolinera->{'Precio Gasolina 95 E5'});
                $gasolina98 = generica::numberFormatBD($gasolinera->{'Precio Gasolina 98 E5'});
                $diesel = generica::numberFormatBD($gasolinera->{'Precio Gasoleo A'});
                $dieselPremium = generica::numberFormatBD($gasolinera->{'Precio Gasoleo Premium'});
                $horario = $gasolinera->Horario;

                if ($nombre != 'E.S.+AGRICOLA+S.C.J.+DE+ALBAL%2C+C.V.') {
                    $stmt->execute();
                }
                

            }

            $stmt->close();

        }

        public function recibirFiltro($textoBuscar){
            
            $conn = $this->getConn();

            $sql = "SELECT id,logo, nombre, direccion, (SELECT municipio FROM municipios where municipios.id_municipio = gasolineras.id_municipio) As 'municipio', latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario FROM gasolineras HAVING municipio LIKE '%$textoBuscar%'";

            $query = $conn->query($sql);
            $arrGasolineras = $query->fetch_all(MYSQLI_ASSOC);

            return $arrGasolineras;

        }

        public function pintarGasolineras(){


            $conn = $this->getConn();

            $sql = "SELECT id,logo, nombre, direccion, (SELECT municipio FROM municipios where municipios.id_municipio = gasolineras.id_municipio) As 'municipio', latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario FROM gasolineras";

            $query = $conn->query($sql);
            $arrGasolineras = $query->fetch_all(MYSQLI_ASSOC);

            return $arrGasolineras;

        }

        public function añadirGasolineraFav($arrFavGaso){

            $conn = $this->getConn();

            session_start();
            $usuario = $_SESSION['usuario'];
            $id_gasolinera = $arrFavGaso['idGasolinera'];

            $sql = "SELECT * FROM gasolinera_fav WHERE id_gasolinera = '$id_gasolinera' AND id_usuario = '$usuario'";
            $query = $conn->query($sql);

            if($query->num_rows > 0) {
                return 'yaFavorita';
            }else {
                $sql = "INSERT INTO gasolinera_fav(id_gasolinera,id_usuario,conf) VALUES ($id_gasolinera, $usuario, 0)";
                $query = $conn->query($sql);

                return $query;
            }

        }

        public function pintarGasolinerasFav(){

            $conn = $this->getConn();
            session_start();
            $usuario = $_SESSION['usuario'];

            $sql = "SELECT id,logo, nombre, direccion, (SELECT municipio FROM municipios where municipios.id_municipio = gasolineras.id_municipio) As 'municipio', latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario FROM gasolineras WHERE id IN (SELECT id_gasolinera FROM gasolinera_fav WHERE id_usuario = $usuario)";

            $query = $conn->query($sql);
            $arrGasolineras = $query->fetch_all(MYSQLI_ASSOC);

            return $arrGasolineras;

        }

        public function idGasolineraConf() {

            $conn = $this->getConn();
            session_start();
            $usuario = $_SESSION['usuario'];

            $sql = "SELECT id_gasolinera FROM gasolinera_fav WHERE id_usuario = $usuario AND conf = 1";

            $query = $conn->query($sql);
            $arrGasoFavConf = $query->fetch_all(MYSQLI_ASSOC);

            return $arrGasoFavConf;

        }

    }
    

?>