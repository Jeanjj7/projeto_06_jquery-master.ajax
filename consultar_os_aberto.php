<?php
include "conexao.php";

$sql = "SELECT * FROM tb_ordens_de_servicos WHERE status_os='Aberta'";

$consultar = $pdo->prepare($sql);
try{
    $consultar->execute();
    $resultados = $consultar->fetchAll(PDO::FETCH_ASSOC);
    foreach ($resultados as $item) {
        $id_os = $item['id_os'];
        $data_abertura = $item['data_abertura'];
        $func_responsavel = $item['func_responsavel']; 
        $categoria = $item['categoria'];        
        $descricao_servico = $item['descricao_servico'];
        $preco = $item['preco'];
        $pagamento = $item['pagamento'];
        $status_os = $item['status_os'];

        $somente_data = date("d/m/Y", strtotime($data_abertura));
        $somente_hora = date("H:i:s", strtotime($data_abertura));

        echo "
    <div class='cartoes'>
        <h3>Ordem de Serviço Nº <span class='id_os'>$id_os</span></h3>
        <p>Data de Abertura: <span class='data_abertura'>$somente_data às $somente_hora</span></p>
        <p>Descrição: <span class='descricao_servico'>$descricao_servico</span></p>
        <p>Responsável: <span class='func_responsavel'>$func_responsavel</span></p>
        <p>Categoria: <span class='categoria'>$categoria</span></p>
        <p>Preço: R$ <span class='preco'>$preco</span></p>
        <p>Pagamento: <span class='pagamento'>$pagamento</span></p>
        <p>Status: <span class='status_os'>$status_os</span></p>
    </div>
        ";
    }
}catch(PDOException $erro) {
    echo "Falha ao consultar resultados! " . $erro->getMessage();
}


?>