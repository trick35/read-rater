<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "readrater";

// Criar a conexão
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verificar a conexão
if (!$conn) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}
?>
