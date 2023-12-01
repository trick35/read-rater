<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD de Usuários</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="logo.PNG" type="image/png">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="scripts.js"></script>
</head>
<body>

    <?php
    // Include the database connection file
    include 'conexao.php';

    // Fetch all users from the database
    $result = mysqli_query($conn, "SELECT * FROM usuario");
    ?>

    <h2>CRUD de Usuários</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Usuário</th>
                <th>E-mail</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php
            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['nome'] . "</td>";
                echo "<td>" . $row['usuario'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
                echo "<td>
                        <a href='edit.php?id=$row[id]'>Editar</a>
                        <a href='delete.php?id=$row[id]' onclick='return confirm(\"Deseja realmente excluir o usuário?\")'>Excluir</a>
                      </td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

    <a href="add.php">Adicionar Usuário</a><br>
	<a href="consultas.php">Consultas SQL</a>
</body>
</html>
