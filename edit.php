<?php
include 'conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $usuario = $_POST['usuario'];
    $email = $_POST['email'];

    $sql = "UPDATE usuario SET nome='$nome', usuario='$usuario', email='$email' WHERE id=$id";
    mysqli_query($conn, $sql);

    header("Location: index.php");
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "SELECT * FROM usuario WHERE id=$id");
    $row = mysqli_fetch_array($result);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuário</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="logo.PNG" type="image/png">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>

    <h2>Editar Usuário</h2>

    <form method="post" action="">
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>">

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<?php echo $row['nome']; ?>" required>

        <label for="usuario">Usuário:</label>
        <input type="text" id="usuario" name="usuario" value="<?php echo $row['usuario']; ?>" required>

        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" value="<?php echo $row['email']; ?>" required>

        <button type="submit">Salvar</button>
    </form>

    <a href="index.php">Voltar para a lista de usuários</a>

</body>
</html>
