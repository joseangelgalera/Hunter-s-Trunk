<?php
class Usuario {
    protected $conn;
    private $nombre;
    private $email;
    private $contrasena;

    public function __construct($db){
        $this->conn = $db;
    }

    public function register( $nombre, $email, $contrasena ){

        $this->nombre = $nombre;
        $this->email = $email;
        $this->contrasena = $contrasena;


        try {
            $hash_contrasena = password_hash($this->contrasena, PASSWORD_DEFAULT);
            $stmt = $this->conn->prepare("INSERT INTO Usuario( nombre, email, contrasena) VALUES( :nombre, :email, :contrasena)");
            $stmt->bindparam(":nombre", $this->nombre);
            $stmt->bindparam(":email", $this->email);
            $stmt->bindparam(":contrasena", $hash_contrasena);

            $stmt->execute(); 
            return $this->conn->lastInsertId();  
        } catch(PDOException $e) {
            echo $e->getMessage();
        }    
    }
}
