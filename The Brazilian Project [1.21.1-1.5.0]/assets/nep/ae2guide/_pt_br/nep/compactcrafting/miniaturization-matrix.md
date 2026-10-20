---
navigation:
  title: Matriz de Miniaturização
  icon: nep:miniaturization_matrix
  parent: nep/compactcrafting/index.md
  position: 52
item_ids:
  - nep:miniaturization_matrix
  - nep:miniaturization_pattern
categories:
  - Matrices
---
# <Color id="gold">Matriz de Miniaturização</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Miniaturização</Color>

  <ItemImage id="nep:miniaturization_matrix" scale="2"/>

  Um bloco que executa uma fabricação de miniaturização inteira. Sem projetores, sem campo, sem pilha de blocos para construir: a Matriz recebe a forma de item de tudo que as camadas de uma receita pedem, mais o catalisador dela, e devolve o item concluído à rede.
</Column>

<Recipe id="nep:module_status/miniaturization_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:miniaturization_matrix"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e largue padrões <ItemLink id="nep:miniaturization_pattern"/> nele. A Matriz armazena os blocos e o catalisador conforme chegam.
* A Matriz é uma máquina ME, então ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.
* A fabricação por miniaturização não tem custo de energia próprio, então a energia da rede é tudo que a Matriz consome.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o que está sendo fabricado, quantos trabalhos estão na fila e quanto o atual demora.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens largados não conseguem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, seja qual for o empilhamento normal daquele item, então uma receita que pede uma pilha de ferramentas ou poções ainda cabe.
* **Limpar Receitas Pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela tem sob solicitação e cancela os trabalhos de fabricação na rede que estavam esperando por ela.
* **Esvaziar Buffers** devolve tudo que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, de vazio para nada preparado até o 15 completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de miniaturização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita cujo campo esteja acima do máximo configurado é recusada à mão exatamente como um padrão para ela seria.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="miniaturizationMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* Verifique se o tamanho de campo da receita está no máximo configurado ou abaixo dele. Acima, os padrões são recusados de cara.
* Uma linha vermelha de *Ingredientes faltando* significa que a solicitação automática não conseguiu obter algo. Passe o mouse sobre ela para a lista.
* Ligue o Registro Detalhado em Debug para que a Matriz registre todo padrão que ela recusa e por quê.
