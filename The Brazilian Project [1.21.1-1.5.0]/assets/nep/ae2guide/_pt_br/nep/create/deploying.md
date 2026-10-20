---
navigation:
  title: Aplicação
  icon: create:deployer
  parent: nep/create/index.md
  position: 61
item_ids:
  - nep:andesite_crafting_pattern
---
# <Color id="gold">Aplicação</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Aplicação</Color>

  <ItemImage id="create:deployer" scale="2"/>

  Automatize o Implantador para receitas `create:deploying`, `create:item_application` e `create:sandpaper_polishing`. O Depósito é a máquina de fabricação: o item base é preparado nele, e um Implantador dois blocos acima pressiona sobre ele.
</Column>

<Recipe id="nep:module_status/deploying"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="create:depot" y="0"/>
  <Block id="create:deployer" y="2" p:facing="down"/>

  <BlockAnnotation y="2" color="#ffaa00">
    **Implantador**, virado para baixo, sempre girando
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#00ccff">
    **Depósito**, e o Provedor vai aqui
  </BlockAnnotation>
</GameScene>

* Implantador dois blocos acima do Depósito, virado para baixo, com velocidade rotacional.
* O Provedor vai no <ItemLink id="create:depot"/>, não no Implantador.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:andesite_crafting_pattern"/>. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Fabricação em Andesito, nomeando a receita `create:deploying` ou `create:item_application` exata a executar. As entradas são o item base mais o item aplicado.

Um padrão de processamento comum com as mesmas entradas e resultado ainda funciona; o Depósito simplesmente precisa procurar uma correspondência na lista de receitas em vez de ser informado qual executar.

> <Color id="yellow">Ferramentas reutilizáveis são devolvidas.</Color> Quando a receita mantém seu item aplicado, aquele espaço é marcado como <Color id="yellow">retido</Color> no terminal de codificação. A rede empresta a ferramenta para a fabricação e a recebe de volta depois, então ela nunca é gasta, e um Provedor a entrega direto ao Implantador em vez de você carregar uma à mão.

Se o Implantador já estiver segurando uma ferramenta correspondente, aquela é usada e a cópia emprestada volta direto ao Provedor intacta. Um padrão com a ferramenta deixada de fora também funciona, mas aí o Implantador precisa ser carregado à mão e os envios são rejeitados até que seja.

> <Color id="yellow">Ferramentas que um Implantador desgasta voltam usadas.</Color> A lixa, e qualquer ferramenta que uma receita aplica sem consumir, perde um ponto de durabilidade por fabricação em vez de ser gasta inteira. Esses padrões pedem a ferramenta de volta um ponto pior, então a rede pode emprestar uma parcialmente usada e recebe essa mesma de volta. Uma ferramenta no último ponto quebra no Implantador e nada volta, o que é exatamente o que o padrão pediu.

Uma ferramenta desgastada é sempre emprestada nova para cada fabricação, então o Implantador precisa estar vazio quando o padrão chega. Envios são recusados enquanto ele ainda estiver segurando algo, porque a rede tem a receber de volta a ferramenta que o padrão entregou, não o que quer que tenha sobrado no Implantador.

Uma [Matriz de Montagem](/nep/create/sequenced-assembly-matrix.md) aceita o mesmo padrão e aplica dentro de si, sem Depósito e sem Implantador. Ela não segura nada à mão, então lá a ferramenta precisa estar no padrão, e ela recusa a receita rara cuja ferramenta um Implantador desgasta em vez de consumir.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Lixamento</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="create:rose_quartz" scale="1.5"/>
  <ItemImage id="create:sand_paper" scale="1.5"/>
  <ItemImage id="create:polished_rose_quartz" scale="1.5"/>
</Row>

Um Implantador segurando <ItemLink id="create:sand_paper"/> lixa o que estiver no Depósito, mas o Create registra essas receitas sob seu próprio tipo `create:sandpaper_polishing` em vez de Aplicação, então um padrão não tinha o que nomear e o **+** no JEI devolvia um padrão de processamento comum que nenhum Depósito aceitava. O NEP agora lê toda receita de polimento como uma de Aplicação, e o **+** na entrada **Sandpaper Polishing** do Create dá um <ItemLink id="nep:andesite_crafting_pattern"/> como qualquer outro.

* O padrão carrega o item base e uma folha, com a folha <Color id="yellow">retida</Color>. Tanto <ItemLink id="create:sand_paper"/> quanto <ItemLink id="create:red_sand_paper"/> a satisfazem.
* Um Implantador desgasta sua folha um ponto por polimento, diferente dos machados com que descasca. O padrão portanto nomeia a folha como uma ferramenta que volta um ponto pior, e o Implantador é esvaziado de novo após cada polimento.
* Qualquer nível de dano satisfaz o padrão, então uma folha parcialmente usada no estoque é estoque como qualquer outro, e a rede só fabrica uma nova depois que toda folha que ela guarda se desgastar. Uma folha ainda custa um polimento por ponto, oito ao todo.
* O polimento que gasta o último ponto de uma folha a quebra no Implantador, e o padrão não pediu nada de volta, então a fabricação se resolve só com o item base.
* Uma [Matriz de Montagem](/nep/create/sequenced-assembly-matrix.md) recusa o polimento pelo mesmo motivo que recusa qualquer receita que desgasta sua ferramenta: ela devolve as entradas retidas exatamente como chegaram.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Descascando Troncos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Row>
  <ItemImage id="minecraft:oak_log" scale="1.5"/>
  <ItemImage id="minecraft:iron_axe" scale="1.5"/>
  <ItemImage id="minecraft:stripped_oak_log" scale="1.5"/>
</Row>

O JEI lista o descascamento em **Item Application**, mas o Create mostra isso apenas como lembrete do clique direito do vanilla: não há receita por trás, então um Implantador normalmente ignora um tronco parado num Depósito. A opção **Log Stripping** adiciona a receita que falta para cada tronco que um machado consegue descascar, e a lista em **Deploying** junto das receitas que um Implantador já consegue executar.

* O machado não é consumido nem danificado, exatamente como nas próprias receitas de machado do Create para desoxidar cobre, então a rede empresta o mesmo para toda fabricação.
* O padrão carrega o tronco e o machado, com o machado retido. Codifique-o de qualquer entrada do JEI com **+**, ou à mão como um padrão de processamento que pega o tronco e entrega o tronco descascado, com o machado deixado no Implantador.
* Funciona também para um Depósito abastecido à mão, não só um dirigido por um Provedor.
* Um tronco ao qual uma receita carregada já aplica um machado é deixado em paz, então um pacote pode substituir o que o descascamento faz simplesmente trazendo sua própria receita `create:deploying` ou `create:item_application`.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O Implantador precisa estar virado para baixo e girando.
* O Depósito precisa estar vazio quando a fabricação começa.
* Apenas receitas únicas e de resultado garantido são automatizadas.
