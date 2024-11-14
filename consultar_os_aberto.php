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
    <b> Nº do Serviço:</b>   <span class='id_os'><h1>$id_os</h1></span>
    <b>Data de Abertura:</b> <span class='data_abertura' data_original='$data_abertura'>
    $somente_data às $somente_hora</span> <br>
    <b>Descrição:</b>  <span class='descricao_servico'>$descricao_servico</span><br>
    <b>Responsável:</b> <span class='func_responsavel'>$func_responsavel</span><br>
    <b>Categoria:</b>  <span class='categoria'>$categoria</span><br>
    <b>Preço: R$ </b> <span class='preco'>$preco</span><br>
    <b>Pagamento:</b>  <span class='pagamento'>$pagamento</span><br>
    <b>Status:</b> <span class='status_os'>$status_os</span><br>
        <button id='bntfechaOs' id_os='$id_os'>Fecha OS</button>
    </div>
        ";
    }
}catch(PDOException $erro) {
    echo "Falha ao consultar resultados! " . $erro->getMessage();
}


?>