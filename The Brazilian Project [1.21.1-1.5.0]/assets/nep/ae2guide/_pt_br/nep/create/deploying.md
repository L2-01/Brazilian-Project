---
navigation:
  title: Posicionamento
  icon: create:deployer
  parent: nep/create/index.md
  position: 61
item_ids:
  - nep:andesite_crafting_pattern
---
# <Color id="gold">Posicionamento</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Posicionamento</Color>

  <ItemImage id="create:deployer" scale="2"/>

  Automatize o Posicionador para receitas `create:deploying`, `create:item_application` e `create:sandpaper_polishing`. O Depósito é a máquina de fabricação: o item base é preparado nele, e um Posicionador dois blocos acima pressiona sobre ele.
</Column>

<Recipe id="nep:module_status/deploying"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="create:depot" y="0"/>
  <Block id="create:deployer" y="2" p:facing="down"/>

  <BlockAnnotation y="2" color="#ffaa00">
    **Posicionador**, virado para baixo, mantido girando
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#00ccff">
    **Depósito**, e o Provedor vai aqui
  </BlockAnnotation>
</GameScene>

* Posicionador dois blocos acima do Depósito, virado para baixo, com velocidade de rotação.
* O Provedor vai no <ItemLink id="create:depot"/>, não no Posicionador.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:andesite_crafting_pattern"/>. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Fabricação em Andesito, nomeando a receita `create:deploying` ou `create:item_application` exata a executar. As entradas são o item base mais o item posicionado.

Um padrão de processamento comum com as mesmas entradas e resultado ainda funciona; o Depósito simplesmente precisa procurar um casamento na lista de receitas em vez de ser dito qual executar.

> <Color id="yellow">Ferramentas reutilizáveis são devolvidas.</Color> Quando a receita preserva seu item posicionado, aquele espaço é marcado como <Color id="yellow">retido</Color> no terminal de codificação. A rede empresta a ferramenta para a fabricação e a recebe de volta depois, então ela nunca é gasta, e um Provedor a entrega direto ao Posicionador em vez de você carregar uma à mão.

Se o Posicionador já estiver segurando uma ferramenta correspondente, essa é usada e a cópia emprestada volta direto ao Provedor intacta. Um padrão sem a ferramenta ainda funciona também, mas aí o Posicionador precisa ser carregado à mão e envios são rejeitados até isso acontecer.

> <Color id="yellow">Ferramentas que um Posicionador desgasta voltam usadas.</Color> Lixa, e qualquer ferramenta que uma receita posicione sem preservar, perde um ponto de durabilidade por fabricação em vez de ser gasta inteira. Esses padrões pedem a ferramenta de volta um ponto pior, então a rede pode emprestar uma parcialmente usada e recebe essa mesma de volta. Uma ferramenta no último ponto quebra no Posicionador e nada volta, que é exatamente o que o padrão pediu.

Uma ferramenta de desgaste é sempre emprestada nova para cada fabricação, então o Posicionador precisa estar vazio quando o padrão chega. Envios são recusados enquanto ele ainda estiver segurando algo, porque a rede deve receber de volta a ferramenta que o padrão entregou, não o que quer que tenha sobrado no Posicionador.

Uma [Matriz de Montagem](/nep/create/sequenced-assembly-matrix.md) aceita o mesmo padrão e posiciona dentro de si, sem Depósito e sem Posicionador. Ela não segura nada à mão, então ali a ferramenta precisa estar no padrão, e ela recusa a receita rara cuja ferramenta um Posicionador desgasta em vez de consumir.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sanding</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="create:rose_quartz" scale="1.5"/>
  <ItemImage id="create:sand_paper" scale="1.5"/>
  <ItemImage id="create:polished_rose_quartz" scale="1.5"/>
</Row>

Um Posicionador segurando <ItemLink id="create:sand_paper"/> poli o que estiver no Depósito, mas o Create arquiva essas receitas no próprio tipo `create:sandpaper_polishing` em vez de Posicionamento, então um padrão não tinha o que nomear e o **+** do JEI devolvia um padrão de processamento comum que nenhum Depósito aceitaria. O NEP agora lê toda receita de polimento como uma de Posicionamento, e o **+** na entrada de **Polimento com Lixa** do Create dá um <ItemLink id="nep:andesite_crafting_pattern"/> como qualquer outro.

* O padrão comporta o item base e uma lixa, com a lixa <Color id="yellow">retida</Color>. Tanto <ItemLink id="create:sand_paper"/> quanto <ItemLink id="create:red_sand_paper"/> satisfazem.
* Um Posicionador desgasta sua lixa um ponto por polimento, diferente dos machados com que desbasta. O padrão então nomeia a lixa como ferramenta que volta um ponto pior, e o Posicionador é esvaziado de novo após cada polimento.
* Qualquer nível de dano satisfaz o padrão, então uma lixa parcialmente usada no estoque é estoque como qualquer outro e a rede só fabrica uma nova quando toda lixa que ela guarda tiver se desgastado. Uma lixa ainda custa um polimento por ponto, oito no total.
* O polimento que gasta o último ponto de uma lixa a quebra no Posicionador, e o padrão não pediu nada de volta, então a fabricação se acerta só com o item base.
* Uma [Matriz de Montagem](/nep/create/sequenced-assembly-matrix.md) recusa polimento pelo mesmo motivo que recusa qualquer receita que desgasta sua ferramenta: ela devolve entradas retidas exatamente como chegaram.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Stripping Logs</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="minecraft:oak_log" scale="1.5"/>
  <ItemImage id="minecraft:iron_axe" scale="1.5"/>
  <ItemImage id="minecraft:stripped_oak_log" scale="1.5"/>
</Row>

O JEI lista desbastar em **Aplicação de Item**, mas o Create mostra isso só como lembrete do clique direito vanilla: não há receita por trás, então um Posicionador normalmente ignora um tronco parado num Depósito. A configuração **Desbaste de Troncos** adiciona a receita faltante para cada tronco que um machado pode desbastar, e a lista em **Posicionamento** junto das receitas que um Posicionador já pode executar.

* O machado não é consumido nem danificado, exatamente como as receitas de machado do próprio Create para desoxidizar cobre, então a rede empresta o mesmo para cada fabricação.
* O padrão comporta o tronco e o machado, com o machado retido. Codifique-o de qualquer entrada do JEI com **+**, ou à mão como padrão de processamento levando o tronco e dando o tronco desbastado, com o machado deixado no Posicionador.
* Funciona para um Depósito preenchido à mão também, não só um dirigido por um Provedor.
* Um tronco ao qual uma receita carregada já aplica um machado é deixado em paz, então um pack pode substituir o que o desbaste faz simplesmente trazendo a própria receita `create:deploying` ou `create:item_application`.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Posicionador precisa estar virado para baixo e girando.
* O Depósito precisa estar vazio quando a fabricação começa.
* Só receitas de saída única e garantida são automatizadas.
