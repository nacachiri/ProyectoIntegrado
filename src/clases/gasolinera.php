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
                    $logo = 'public/logosGasolineras/logoRepsol.png';
                }elseif (strpos($nombre, 'ALCAMPO') !== false) {
                    $logo = 'public/logosGasolineras/logoAlcampo.png';
                }elseif (strpos($nombre, 'CARREFOUR') !== false) {
                    $logo = 'public/logosGasolineras/logoCarrefour.png';
                }elseif (strpos($nombre, 'BP') !== false) {
                    $logo = 'public/logosGasolineras/logoBP.png';
                }elseif (strpos($nombre, 'CESPSA') !== false) {
                    $logo = 'public/logosGasolineras/logoCepsa.png';
                }elseif (strpos($nombre, 'GALP') !== false) {
                    $logo = 'public/logosGasolineras/logoGalp.png';
                }elseif (strpos($nombre, 'SHELL') !== false) {
                    $logo = 'public/logosGasolineras/logoShell.png';
                }elseif (strpos($nombre, 'AGRICAR') !== false) {
                    $logo = 'public/logosGasolineras/logoAgricar.png';
                }elseif (strpos($nombre, 'CAMPSA') !== false) {
                    $logo = 'public/logosGasolineras/logoCampsa.png';
                }elseif (strpos($nombre, 'EXOIL') !== false) {
                    $logo = 'public/logosGasolineras/logoExoil.png';
                }elseif (strpos($nombre, 'BZ') !== false) {
                    $logo = 'public/logosGasolineras/logoBZ.png';
                }elseif (strpos($nombre, 'BALLENOIL') !== false) {
                    $logo = 'public/logosGasolineras/logoBallenoil.png';
                }elseif (strpos($nombre, 'AVIA') !== false) {
                    $logo = 'public/logosGasolineras/logoAvia.png';
                }elseif (strpos($nombre, 'GASOLBEN') !== false) {
                    $logo = 'public/logosGasolineras/logoGasolben.png';
                }elseif (strpos($nombre, 'Q8') !== false) {
                    $logo = 'public/logosGasolineras/logoQ8.png';
                }elseif (strpos($nombre, 'BENZINA') !== false) {
                    $logo = 'public/logosGasolineras/logoBenzina.png';
                }elseif (strpos($nombre, 'BIOMAR') !== false) {
                    $logo = 'public/logosGasolineras/logoBiomar.png';
                }elseif (strpos($nombre, 'Bioner') !== false) {
                    $logo = 'public/logosGasolineras/logoBioner.png';
                }elseif (strpos($nombre, 'BURAN') !== false) {
                    $logo = 'public/logosGasolineras/logoBuranEnergy.png';
                }elseif (strpos($nombre, 'ELDISSER') !== false) {
                    $logo = 'public/logosGasolineras/logoEldisser.png';
                }elseif (strpos($nombre, 'PETROLUEM') !== false) {
                    $logo = 'public/logosGasolineras/logoPetroleum.png';
                }elseif (strpos($nombre, 'GASEXPRESS') !== false) {
                    $logo = 'public/logosGasolineras/logoGasexpress.png';
                }elseif (strpos($nombre, 'AGULLENT') !== false) {
                    $logo = 'public/logosGasolineras/logoAgullent.png';
                }elseif (strpos($nombre, 'GEST') !== false) {
                    $logo = 'public/logosGasolineras/logoGest.png';
                }elseif (strpos($nombre, 'MOLGAS') !== false) {
                    $logo = 'public/logosGasolineras/logoMolgas.png';
                }elseif (strpos($nombre, 'NATURGY') !== false) {
                    $logo = 'public/logosGasolineras/logoNaturgy.png';
                }elseif (strpos($nombre, 'OCTAPLUS') !== false) {
                    $logo = 'public/logosGasolineras/logoOctaplus.png';
                }elseif (strpos($nombre, 'PETROENERGY') !== false) {
                    $logo = 'public/logosGasolineras/logoPetroenergy.png';
                }elseif (strpos($nombre, 'PETROMAX') !== false) {
                    $logo = 'public/logosGasolineras/logoPetromax.png';
                }elseif (strpos($nombre, 'PETRONOR') !== false) {
                    $logo = 'public/logosGasolineras/logoPetronor.png';
                }elseif (strpos($nombre, 'PETROPASS') !== false) {
                    $logo = 'public/logosGasolineras/logoPetropass.png';
                }elseif (strpos($nombre, 'PETROPRIX') !== false) {
                    $logo = 'public/logosGasolineras/logoPetroprix.png';
                }elseif (strpos($nombre, 'PLENOIL') !== false) {
                    $logo = 'public/logosGasolineras/logoPlenoil.png';
                }elseif (strpos($nombre, 'TAMOIL') !== false) {
                    $logo = 'public/logosGasolineras/logoTamoil.png';
                }else {
                    $logo = 'public/logosGasolineras/logoDefault.png';
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

        public function pintarGasolineras(){


            $conn = $this->getConn();

            $sql = "SELECT id,logo, nombre, direccion, (SELECT municipio FROM municipios where municipios.id_municipio = gasolineras.id_municipio) As 'municipio', latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario FROM gasolineras";

            $query = $conn->query($sql);
            $arrGasolineras = $query->fetch_all(MYSQLI_ASSOC);

            return $arrGasolineras;

        }

        public function pintarMunicipios(){

            $conn = $this->getConn();

            $sql = "SELECT * FROM municipios";

            $query = $conn->query($sql);
            $arrMunicipios = $query->fetch_all(MYSQLI_ASSOC);

            return $arrMunicipios;

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