<?php

class DB{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;

    public function __construct(){
        $this->host     = 'localhost';
        $this->db       = 'botaoweb';
        $this->user     = 'root';
        $this->password = //'password';
        $this->charset  = 'utf8mb4'; 
    }

    function connect(){
        try{
            $connection = "mysql:host=".$this->host.";dbname=" . $this->db . ";charset=" . $this->charset;
            $option = [
                PDO::ATTR_ERRMODE           => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES  => false,
            ]; 
            $pdo = new PDO($connection,$this->user,$this->password);

            return $pdo;
        }catch(PDOExcepcion $e){
            print_r('Error connection: ' . $e->getMessage);
        }
    }
}