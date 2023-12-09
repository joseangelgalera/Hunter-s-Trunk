<?php
class Usuario {
    public int $idUsuario;
    public string $nombre;
    public string $email;
    public string $contraseña;
    public int $idCazador;

    public function guardarEnBaseDeDatos() {
        // Conexión a la base de datos
        $conexion = new mysqli("localhost", "usuario", "contraseña", "basededatos");

        // Verificar si la conexión fue exitosa
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }

        // Preparar la consulta SQL
        $sql = "INSERT INTO usuarios (nombre, email, contraseña, idCazador) VALUES ('$this->nombre', '$this->email', '$this->contraseña', '$this->idCazador')";

        // Ejecutar la consulta
        if ($conexion->query($sql) === TRUE) {
            echo "Usuario guardado en la base de datos";
        } else {
            echo "Error al guardar el usuario: " . $conexion->error;
        }

        // Cerrar la conexión
        $conexion->close();
    }
}



?>