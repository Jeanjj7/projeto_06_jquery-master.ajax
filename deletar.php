<?php
include "conexao.php";

$id_os = $_POST['id_os'];

$sql = "DELETE FROM tb_ordens_de_servicos WHERE id_os = '$id_os'";

$deletar = $pdo->prepare($sql);


try {
    $deletar->execute();
    echo "Deletado com sucesso!";
} catch (PDOException $erro) {
    echo "Falha ao deletar: " . $erro->getMessage();
}
?>
