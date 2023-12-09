<?php
// FILEPATH: /c:/Users/josea/Documents/php/Hunter-s-Trunk/html/database/conection.php

$host = 'db';
$dbname = 'monster_trunk';
$username = 'root';
$password = 'root';

try {
    $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8mb4";
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];

    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    die("Error al conectar a la base de datos: " . $e->getMessage());
}

// Aquí puedes realizar consultas y operaciones con la base de datos utilizando $pdo

$stmt = $pdo->prepare("SELECT * FROM tabla");
$stmt->execute();
$resultado = $stmt->fetchAll();

foreach ($resultado as $fila) {
    // Procesar cada fila de resultados
}
