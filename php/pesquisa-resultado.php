  <?php include_once('pesquisa.php');

if(!isset($_POST)){
    echo $_POST."Resultado";
    die();
    }

  	  		

$pesquisa =$_POST["pesquisa"];

   ?>

<table class="table striped bordered centered">

 <thead>
          <tr> 
          	  <th># ID</th>
              <th>Name</th>
              <th>Preço</th>
              <th>Quantidade</th>
          </tr>
        </thead>
<tbody>
	<?php
		$produtos = search($conexao, $pesquisa);
		foreach($produtos as $produto) :
	?>
	<tr>
	<td><?= $produto['id']?></td>
	<td><?= $produto['nome'] ?></td>
	<td><?= $produto['preco'] ?></td>
	<td><?= $produto['quantidade'] ?></td>


	<?php
		endforeach
	?>	
	</tbody>
	   </table>		

