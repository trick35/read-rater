<?php
include 'conexao.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM usuario WHERE id=$id";
    mysqli_query($conn, $sql);

    header("Location: index.php");
}
?>
