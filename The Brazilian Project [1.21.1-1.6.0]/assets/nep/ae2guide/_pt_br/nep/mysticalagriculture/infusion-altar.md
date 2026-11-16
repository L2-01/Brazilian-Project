---
navigation:
  title: Infusão
  icon: mysticalagriculture:infusion_altar
  parent: nep/mysticalagriculture/index.md
  position: 10
item_ids:
  - nep:infusion_pattern
---
# <Color id="gold">Infusão</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Infusão</Color>

  <ItemImage id="mysticalagriculture:infusion_altar" scale="2"/>

  Um Altar de Infusão recebe nove itens de uma vez: um no altar e um em cada um dos seus oito pedestais. Nenhum Provedor de Padrões alcança um pedestal, então a fabricação inteira é entregue num único envio.
</Column>

<Recipe id="nep:module_status/infusion_altar"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="mysticalagriculture:infusion_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Altar de Infusão**, com seus oito pedestais construídos ao redor
  </BlockAnnotation>
</GameScene>

* Construa o altar e seus oito pedestais exatamente como o Mystical Agriculture os quer. Os pedestais fazem parte da máquina, não são decoração.
* Coloque um Provedor de Padrões contra qualquer face do altar e insira nele padrões de <ItemLink id="nep:infusion_pattern"/>.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor. O altar deixa seu resultado no próprio espaço de saída, e o cartão é o que o traz de volta à rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona um Envio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega os nove itens de uma vez: o item central vai para o altar, e um ingrediente para cada pedestal. O altar então se inicia sozinho, então nenhum pulso de redstone nem clique direito é necessário.

> <Color id="yellow">A infusão executa uma fabricação por vez.</Color> O altar é uma máquina de fabricação única, então uma pilha de trabalhos enfileirados na rede chega um após o outro conforme cada um termina. Para volume, use a [Matriz de Infusão e Despertar](/nep/mysticalagriculture/infused-awakening-matrix.md) em vez disso.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de infusão no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:infusion_pattern"/>.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída casem com exatamente uma receita de infusão. Quando duas receitas cabem, o NEP recusa em vez de adivinhar, e o padrão precisa ser codificado pelo JEI.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o altar não puder receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O altar já segura uma entrada | Deixe a fabricação em andamento terminar |
| O espaço de saída ainda segura um item pronto | Colete-o; um Cartão de Importação faz isso sozinho |
| Um pedestal já está segurando um item | Limpe os restos à mão |
| A contagem de pedestais não casa com a receita | Construa exatamente tantos pedestais quanto a receita tem ingredientes |
