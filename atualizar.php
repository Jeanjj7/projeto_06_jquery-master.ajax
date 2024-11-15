<?php
include "conexao.php";

$id_os = $_POST['id_os'];
$data_abertura = $_POST['data_abertura'];
$descricao_servico = $_POST['desc_nova'];
$categoria = $_POST['cat_nova'];
$func_responsavel = $_POST['func_novo'];
$preco = $_POST['preco_novo'];
$pagamento = $_POST['pagamento_novo'];
$status_os = $_POST['status_novo'];


$sql = "UPDATE tb_ordens_de_servicos SET 
       descricao_servico = '$descricao_servico',
       categoria = '$categoria',
       data_abertura = '$data_abertura',
       func_responsavel = '$func_responsavel',
       preco = '$preco',
       pagamento = '$pagamento ',
       status_os = '$status_os'
       WHERE id_os = '$id_os'";


$atualizar = $pdo->prepare($sql);

try {
    $atualizar->execute();
    if ($atualizar->rowCount() >= 1) {
        echo "Atualizado com sucesso!";
    } else {
        echo "Nenhuma alteração foi feita.";
    }
} catch (PDOException $erro) {
    echo "Falha ao atualizar: " . $erro->getMessage();
}
?>