<?php
include "conexao.php";

$nome = $_GET['nome'];
$usuario = $_GET['usuario'];
$email = $_GET['email'];
$senha = $_GET['senha'];

//seleciona o banco de dados
mysqli_select_db ($connect, $banco) or die ("Erro na seleção do banco");

//inserir dados no banco
if (isset($_GET['salvar'])){
	$sql = "INSERT INTO usuario values(null, '".$nome."','".$usuario."','".$email."','".$senha."')";
	
	if(mysqli_query($connect, $sql)){
		$msg = "Gravado com sucesso!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
		
	}else {
		$msg = "Erro ao gravar!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
	}
}

if(isset($_GET['atualizar'])){
	// atualiza os dados pelo nome
	$sql = "UPDATE pessoa SET email='$email', login='$login', senha='$senha' WHERE nome='$nome'";
	
	if(mysqli_query($connect, $sql)){
		$msg = "Atualizado com sucesso!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
		
	}else {
		$msg = "Erro ao atualizar!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
	}
}

if(isset($_GET['apagar'])){
	// excluir dados por nome
	$sql = "DELETE FROM pessoa WHERE nome = '$nome'";
	
	if(mysqli_query($connect, $sql)){
		$msg = "Deletado com sucesso!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
		
	}else {
		$msg = "Erro ao deletar!";
		echo "<script type='text/javascript'>
		alert('$msg');
		window.location.href='formulario.html';</script>";
	}
}

//comando para fechar a conexão com o banco
mysqli_close($connect);
?>