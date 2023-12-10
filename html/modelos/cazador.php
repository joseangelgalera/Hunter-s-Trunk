<?php
    class Cazador {
        protected $conn;
        public int $idCazador;
        public string $nombreCazador;
        public string $foto;
        public int $idArma;
        public int $idCasco;
        public int $idPechera;
        public int $idGuante;
        public int $idFaja;
        public int $idBota;
        public int $idCigua;
        public int $idUsuario;
        public int $idCamarada;

        public function __construct($db){
            $this->conn = $db;
        }
    
        public function registerCazador( $nombreCazador, $idUsuario){
    
            $this->nombreCazador = $nombreCazador;
            $this->idUsuario = $idUsuario;
        
            try {
                $stmt = $this->conn->prepare("INSERT INTO Cazador( nombreCazador, idUsuario) VALUES( :nombreCazador, :idUsuario)");
                $stmt->bindparam(":nombreCazador", $this->nombreCazador);
                $stmt->bindparam(":idUsuario", $this->idUsuario);
        
                $stmt->execute(); 
                return $this->conn->lastInsertId(); 
            } catch(PDOException $e) {
                echo $e->getMessage();
            }    
        }
        
    }
?>