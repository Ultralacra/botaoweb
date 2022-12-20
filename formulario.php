<?php
    include_once 'db.php';

    class Formulario extends DB{
        
        function obtenerFormulario(){
            $query = $this->connect()->query('SELECT * FROM formulario');
            return $query;
        }
    }