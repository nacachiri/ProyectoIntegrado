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

                switch ($nombre) {
                    case 'REPSOL':
                        $logo = './public/logosGasolineras/logoRepsol.png';
                        break;
                    case 'BP':
                        $logo = './public/logosGasolineras/logoBp.png';
                        break;
                    case 'CEPSA':
                        $logo = './public/logosGasolineras/logoCepsa.png';
                        break;
                    case 'SHELL':
                        $logo = './public/logosGasolineras/logoShell.png';
                        break;
                    
                    default:
                        $logo = './public/logosGasolineras/logoDefault.png';
                        break;
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
                $stmt->execute();

            }

            $stmt->close();

        }

    }
    

?>