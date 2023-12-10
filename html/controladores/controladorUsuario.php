<?php
require_once '../database/conexion.php';
require_once '../modelos/usuario.php';
require_once '../modelos/cazador.php';

class UserController extends Usuario
{
    protected $user;

    public function __construct($user_model)
    {
        $this->user = $user_model;
    }

    public function register($nombre, $email, $contrasena)
    {
        if ($this->user->register($nombre, $email, $contrasena)) {
            echo 'Usuario registrado con éxito';
        } else {
            echo 'Hubo un error al registrar el usuario';
        }
    }
}



class CazadorController extends Cazador
{
    protected $cazador;

    public function __construct($cazador_model)
    {
        $this->cazador = $cazador_model;
    }

    public function registerCazador($nombreCazador, $idUsuario)
    {
        if ($this->cazador->registerCazador($nombreCazador, $idUsuario)) {
            echo 'Cazador registrado con éxito';
        } else {
            echo 'Hubo un error al registrar el cazador';
        }
    }
}

$db = new Database();
$db_conn = $db->dbConnection();
$cazador_model = new Cazador($db_conn);
$cazador_controller = new CazadorController($cazador_model);
$user_model = new Usuario($db_conn);
$user_controller = new UserController($user_model);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $contrasena = $_POST['contrasena'];
    $nombreCazador = $_POST['nombreCazador'];

    $idUsuario = $user_controller->register($nombre, $email, $contrasena);

    if ($idUsuario !== null) {
        $idCazador = $cazador_controller->registerCazador($nombreCazador, $idUsuario);
    } else {
        // Manejar el error aquí
    }
}
?>

