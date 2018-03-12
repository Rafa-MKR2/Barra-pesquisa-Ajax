 
<?php
  include_once('server.php');


if(!isset($_POST)){
    die();
    }

  	  		

$pesquisa =$_POST["pesquisa"];

  
  	

function search($conexao,$pesquisa) {


	$produtos = array();
	$resultado = mysqli_query($conexao,"select * from produtos where nome = '{$pesquisa}' OR preco = '{$pesquisa}'
		OR quantidade = '{$pesquisa}' OR codigo = '{$pesquisa}' OR modelo = '{$pesquisa}'");

	while($produto = mysqli_fetch_assoc($resultado)) {

		array_push($produtos, $produto);
	}

	return $produtos;
}

   
	$produtos = search($conexao, $pesquisa);
		if(sizeof($produtos) <=0){
		echo "<p>Não existe produtos relacionado  a {$pesquisa}</p>";


			}else{

			echo '<table class="table striped bordered centered">
			<thead>
          <tr> 
              <th>Nome</th>
              <th>Modelo</th>
              <th>Quantidade</th>
              <th>Preço</th>
              <th>Codigo</th>
          </tr>
        </thead>
<tbody>';
}

		foreach($produtos as $produto) :
	?>
	<tr>
	<td><?= $produto['nome'] ?></td>
	<td><?= $produto['modelo'] ?></td>
	<td><?= $produto['quantidade'] ?></td>
	<td><span>$</span><?= $produto['preco'] ?><span>.00</span></td>

	<td><?= $produto['codigo'] ?></td>
	</tr>


	<?php
		endforeach
	?>	
	</tbody>
	   </table>		

