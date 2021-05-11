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

        public function importarMunicipios($arrGasolineras) {

            $conn = $this->getConn();

            $stmt = $conn->prepare("INSERT INTO municipios(id_municipio, municipio) VALUES (?, ?)");
            $stmt->bind_param('is', $idMunicipio, $nombreMunicipio);
            
            foreach ($arrGasolineras->ListaEESSPrecio as $gasolinera) {

                $idMunicipio = $gasolinera->IDMunicipio;
                $nombreMunicipio = $gasolinera->Municipio;
                $stmt->execute();

            }

            var_dump($stmt);

        }

        public function importar() {

            $conn = $this->getConn();

            $return = file_get_contents("https://sedeaplicaciones.minetur.gob.es/ServiciosRESTCarburantes/PreciosCarburantes/EstacionesTerrestres/FiltroProvincia/46");
            $arrGasolineras = json_decode($return);

            // $this->importarMunicipios($arrGasolineras);

            $stmt = $conn->prepare("INSERT INTO gasolineras(logo, nombre, direccion, id_municipio, latitud, longitud, gasolina95, gasolina98, diesel, diesel_premium, horario) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param('sssddidddds', $logo, $nombre, $direccion, $latitud, $longitud, $idMunicipio, $gasolina95, $gasolina98, $diesel, $dieselPremium, $horario);
                
            foreach ($arrGasolineras->ListaEESSPrecio as $gasolinera) {

                $logo = '';
                $nombre = $gasolinera->Rótulo;
                $direccion = $gasolinera->Dirección;
                $latitud = $gasolinera->Latitud;
                $longitud = generica::numberFormatBD($gasolinera->{'Longitud (WGS84)'});
                $idMunicipio = $gasolinera->IDMunicipio;
                $gasolina95 = generica::numberFormatBD($gasolinera->{'Precio Gasolina 95 E5'});
                $gasolina98 = generica::numberFormatBD($gasolinera->{'Precio Gasolina 98 E5'});
                $diesel = generica::numberFormatBD($gasolinera->{'Precio Gasoleo A'});
                $dieselPremium = generica::numberFormatBD($gasolinera->{'Precio Gasoleo Premium'});
                $horario = $gasolinera->Horario;
                $stmt->execute();

                var_dump($IDMunicipio);

            }

            $stmt->close();

    
            
        }

    }
    

?>