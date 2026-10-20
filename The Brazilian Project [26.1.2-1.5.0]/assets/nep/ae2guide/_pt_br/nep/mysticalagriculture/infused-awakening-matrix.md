---
navigation:
  title: Matriz de Infusão e Despertar
  icon: nep:infused_awakening_matrix
  parent: nep/mysticalagriculture/index.md
  position: 30
item_ids:
  - nep:infused_awakening_matrix
categories:
  - Matrices
---
# <Color id="gold">Matriz de Infusão e Despertar</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Matriz de Infusão e Despertar</Color>

  <ItemImage id="nep:infused_awakening_matrix" scale="2"/>

  Um bloco que executa os dois altares. Sem pedestais, sem recipientes, sem anel para construir: a Matriz prepara os ingredientes por conta própria, armazena essência em quatro tanques e devolve o item concluído à rede.
</Column>

<Recipe id="nep:module_status/infused_awakening_matrix"/>

> <Color id="yellow">O bloco lê o próprio estado.</Color> A Matriz é uma moldura aberta com um núcleo facetado girando dentro, visível por todas as faces. O núcleo flutua enquanto a Matriz está ociosa, acelera e brilha conforme uma fabricação roda, e irradia quando a fabricação conclui. Uma Matriz travada escurece e treme no lugar, e sua moldura apaga. Matrizes vizinhas ficam defasadas entre si, então uma parede delas nunca gira em sincronia.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="5">
  <Block id="nep:infused_awakening_matrix" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Matriz de Infusão e Despertar**, conectada à rede ME
  </BlockAnnotation>
</GameScene>

* Coloque um Provedor de Padrões contra qualquer face e largue padrões <ItemLink id="nep:infusion_pattern"/> ou <ItemLink id="nep:awakening_pattern"/> nele. A Matriz armazena os ingredientes conforme chegam.
* A Matriz é uma máquina ME: ela entra na rede pela própria conexão de grid, consome um pequeno custo fixo de energia e devolve os itens concluídos ao Provedor por conta própria. Ela **não precisa de Cartão de Importação**.
* Ela não consome FE. Infusão e despertar custam tempo, não energia, e o único custo corrente é o consumo da rede ME.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Os Quatro Tanques de Essência</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

As quatro barras à direita da tela substituem os Recipientes de Essência. Essência é um item comum, então um tanque é na verdade um espaço de item desenhado como barra: ele recebe uma essência por vez, guarda uma pilha dela e fica livre para qualquer outra essência no momento em que esvazia. Nada é reservado, então os mesmos quatro tanques atendem toda receita de despertar sem serem avisados de antemão quais essências ela vai querer.

Um tanque comporta <nep:ConfigValue name="infusedAwakeningMatrixTankCapacity"/>, enquanto um Recipiente de Essência comporta 40 e a receita de despertar mais cara pega 40 por fabricação. Aumente até 512 na configuração para acumular essência para uma tiragem maior.

| Como colocar essência | Como |
|---|---|
| Automaticamente | Deixe a Solicitação Automática ligada e a Matriz puxa ou solicita o que uma fabricação na fila precisa |
| À mão | Largue essência no buffer de entrada; qualquer coisa que um Recipiente de Essência aceitaria flui para um tanque por conta própria |
| De um tubo ou ponto | Insira por qualquer face, igual a qualquer outro ingrediente |

> <Color id="yellow">Os tanques enchem pelo buffer de entrada.</Color> Não há porta separada. Essência cai no buffer como qualquer item e se move para um tanque no tique seguinte, o que significa que funis, pontos de exportação e a sua própria mão funcionam sem configuração especial.

> <Color id="yellow">Tanques cheios nunca recusam um padrão.</Color> Essência que um tanque não consegue receber espera no buffer de entrada como o item que é, e atravessa assim que uma fabricação na fila drena um tanque, então a Matriz não consegue se bloquear de uma receita.

> <Color id="yellow">Receitas de infusão nunca tocam os tanques.</Color> Só as essências que uma receita de despertar nomeia em seus recipientes são armazenadas. Uma receita de infusão que por acaso usa uma essência como ingrediente de pedestal a tira do buffer de entrada como um item comum.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o que está sendo fabricado e quantos trabalhos estão na fila atrás, com a barra de progresso embaixo.
* O buffer de entrada só aceita itens que uma fabricação pendente ainda precisa, mais essência até o espaço livre dos tanques, então itens largados não conseguem entupi-lo.
* Passe o mouse sobre um tanque para ver a essência que ele contém e o quão cheio está.
* **Limpar Receitas Pendentes** descarta toda fabricação que a Matriz ainda deve, cancela ingredientes que ela tem sob solicitação e cancela os trabalhos de fabricação na rede que estavam esperando por ela.
* **Esvaziar Buffers** devolve tudo que estava preparado, tanques incluídos, ao seu inventário.
* **Guia** abre esta página, e é sempre o botão mais à direita.
* Um Comparador ao lado do bloco lê o buffer de saída, de vazio para nada preparado até o 15 completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fabricando à Mão</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma receita de infusão ou despertar também pode ser iniciada a partir do seu próprio inventário, sem padrão e sem Provedor por perto. Abra a Matriz, encontre a receita no visualizador de receitas e pressione seu botão de transferência: todos os ingredientes saem do seu inventário de uma vez e a fabricação entra na fila como qualquer outra.

* É tudo ou nada. Se faltar, nada se move: o botão avisa e a receita marca em vermelho os ingredientes que estão faltando.
* Segurar shift enfileira tantas fabricações quanto o seu inventário consegue pagar, até sessenta e quatro, aparado ao que o buffer de entrada tem espaço para preparar.
* O item concluído espera no buffer de saída para você pegar. Nada vai para a rede, e nenhum trabalho de fabricação é criado.
* A essência de uma receita de despertar também é tirada do seu inventário, e se acomoda nos tanques sozinha uma vez dentro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* A Matriz precisa estar numa rede ME energizada, não apenas conectada a uma.
* A Matriz ocupa <nep:ConfigValue name="infusedAwakeningMatrixChannels"/> canais, e qualquer coisa acima de 8 precisa de um Controlador ME e de um cabo denso até ela. Uma rede que não consegue cedê-los a deixa offline.
* *Aguardando essência* significa que uma fabricação de despertar está preparada mas um tanque está curto. Alimente aquela essência pelo buffer de entrada; se ela já estiver parada ali, os tanques estão cheios e ela atravessa assim que uma fabricação na fila drenar um.
* Uma linha vermelha de *Ingredientes faltando* significa que a solicitação automática não conseguiu obter algo. Passe o mouse sobre ela para a lista.
* Ligue o Registro Detalhado em Debug para que a Matriz registre todo padrão que recusa e por quê.
