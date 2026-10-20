---
navigation:
  title: Envase
  icon: create:spout
  parent: nep/create/index.md
  position: 62
---
# <Color id="gold">Envase</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Envase</Color>

  <ItemImage id="create:spout" scale="2"/>

  Automatize a Bica para receitas `create:filling` e para o enchimento genérico de baldes e garrafas do Create. Como na Aplicação, o Depósito é a máquina: o item base é preparado nele e uma Bica dois blocos acima despeja sobre ele.
</Column>

<Recipe id="nep:module_status/filling"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="create:depot" y="0"/>
  <Block id="create:spout" y="2"/>

  <BlockAnnotation y="2" color="#ffaa00">
    **Bica**, tanque vazio no início
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#00ccff">
    **Depósito**, e o Provedor vai aqui
  </BlockAnnotation>
</GameScene>

* Bica dois blocos acima do Depósito.
* O Provedor vai no <ItemLink id="create:depot"/>, não na Bica.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um <ItemLink id="nep:andesite_crafting_pattern"/>. Procure a receita no JEI, abra um <ItemLink id="ae2:pattern_encoding_terminal"/> e clique no **+** da receita: o padrão em branco volta como um Padrão de Fabricação em Andesito, nomeando a receita `create:filling` exata a executar. As entradas são o item base mais o fluido na quantidade <Color id="red">exata</Color> que a receita usa.

Um padrão de processamento comum com as mesmas entradas e resultado ainda funciona, e é a única opção para o enchimento genérico de baldes e garrafas do Create, que não tem receita para nomear.

> <Color id="yellow">A quantidade de fluido precisa ser exata.</Color> Uma quantidade diferente nunca corresponde, e o envio é rejeitado.

Uma [Matriz de Montagem](/nep/create/sequenced-assembly-matrix.md) aceita o mesmo padrão e enche o item dentro de si, sem Depósito e sem Bica. É a mesma receita e o mesmo padrão, então nada na codificação muda.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O tanque da Bica precisa estar vazio quando a fabricação começa.
* O item base e a quantidade de fluido precisam corresponder exatamente à receita.
