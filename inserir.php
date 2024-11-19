<?php
include "conexao.php";

$descricao = $_POST['descricao_servico'];
$responsavel = $_POST['func_responsavel'];
$categoria = $_POST['categoria'];
$preco = $_POST['preco'];
$pagamento = $_POST['pagamento'];
$status_os = $_POST['status_novo'];


$sql = "INSERT INTO tb_ordens_de_servicos 
        (descricao_servico, func_responsavel, categoria, preco, pagamento,status_os) 
        VALUES 
        ('$descricao',' $responsavel', '$categoria', '$preco',' $pagamento','$status_os')";


$inserir = $pdo->prepare($sql);

try {
    $inserir->execute();
    echo "Cadastrada com sucesso!";
} catch (PDOException $erro) {
    echo "Falha ao inserir! " . $erro->getMessage();
}
?>