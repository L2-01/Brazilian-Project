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

  Um bloco que executa uma fabricação de miniaturização inteira. Sem projetores, sem campo, sem pilha de blocos para construir: a Matriz recebe a forma de item de tudo que as camadas de uma receita pedem, mais o catalisador, e devolve o item pronto à rede.
</Column>

<Recipe id="nep:module_status/miniaturization_matrix"/>

> <Color id="yellow">O bloco expõe seu próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro dela, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e clareia conforme uma fabricação anda e fulgura quando a fabricação termina. Uma Matriz parada escurece e treme no lugar, e sua moldura se apaga. Matrizes vizinhas são dessincronizadas entre si, então uma parede delas nunca gira em conjunto.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:miniaturization_matrix"/>
  <Block id="ae2:pattern_provider" z="1"/>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e insira nele padrões de <ItemLink id="nep:miniaturization_pattern"/>. A Matriz armazena em buffer os blocos e o catalisador conforme chegam.
* A Matriz é uma máquina ME, então se junta à rede pela própria conexão de grade, consome um pequeno custo fixo de energia e devolve itens prontos ao Provedor sozinho. Ela não precisa de **Cartão de Importação**.
* A fabricação por miniaturização não tem custo de energia próprio, então a energia de rede é tudo que a Matriz já queima.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o que está sendo fabricado, quantos trabalhos estão na fila e quanto o atual leva.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, então itens soltos não podem entupi-lo.
* Cada espaço do buffer comporta até 64 de qualquer item, não importa o quanto esse item normalmente empilhe, então uma receita que queira uma pilha de ferramentas ou poções ainda cabe.
* **Limpar receitas pendentes** descarta todas as fabricações que a Matriz ainda deve, cancela os ingredientes que ela requisitou e cancela os trabalhos de fabricação da rede que aguardavam por ela.
* **Esvaziar Buffers** retorna tudo o que estava preparado ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, vazio para nada preparado até um 15 cheio.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricação Manual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de miniaturização também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, ache a receita no visualizador de receitas e pressione o botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar algo, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira quantas fabricações seu inventário puder pagar, até sessenta e quatro, limitadas ao que o buffer de entrada consegue preparar.
* O item pronto espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* Uma receita cujo campo está acima do máximo configurado é recusada à mão exatamente como um padrão para ela seria.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="miniaturizationMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e um cabo denso até ela. Uma rede que não pode cedê-los a deixa offline.
* Confira se o tamanho de campo da receita está no máximo configurado ou abaixo. Acima dele, os padrões são recusados de cara.
* Uma linha vermelha de *Ingredientes ausentes* significa que a requisição automática não conseguiu obter algo. Passe o mouse sobre ela para ver a lista.
* Ative o Registro Detalhado em Depuração para que a Matriz registre cada padrão que recusa e o motivo.
