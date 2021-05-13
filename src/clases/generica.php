<?php

    class generica{
        
        public static function numberFormatBD($stringnumero) {
            
            $string = str_replace(',', '.', $stringnumero);

            return $string;

        }

    }
    

?>