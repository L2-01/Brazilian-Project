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

  Um Altar de Infusão recebe nove itens de uma vez: um no altar e um em cada um de seus oito pedestais. Nenhum Provedor de Padrões consegue alcançar um pedestal, então a fabricação inteira é entregue num único envio.
</Column>

<Recipe id="nep:module_status/infusion_altar"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="mysticalagriculture:infusion_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Altar de Infusão**, com seus oito pedestais construídos ao redor dele
  </BlockAnnotation>
</GameScene>

* Construa o altar e seus oito pedestais exatamente como o Mystical Agriculture pede. Os pedestais são parte da máquina, não decoração.
* Coloque um Provedor de Padrões contra qualquer face do altar e largue padrões <ItemLink id="nep:infusion_pattern"/> nele.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor. O altar deixa seu resultado no próprio espaço de saída, e o cartão é o que o traz de volta à rede.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como um Envio Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega todos os nove itens de uma vez: o item central vai para o altar, e um ingrediente para cada pedestal. O altar então inicia sozinho, sem pulso de redstone e sem clique com o botão direito.

> <Color id="yellow">A infusão executa uma fabricação por vez.</Color> O altar é uma máquina de fabricação única, então uma pilha de trabalhos na fila da rede chega um após o outro conforme cada um termina. Para volume, use a [Matriz de Infusão e Despertar](/nep/mysticalagriculture/infused-awakening-matrix.md) em vez disso.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de infusão no JEI e pressione a seta de transferência. O padrão codifica como um <ItemLink id="nep:infusion_pattern"/>.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída correspondam a exatamente uma receita de infusão. Onde duas receitas se encaixam, o NEP recusa em vez de adivinhar, e o padrão tem que ser codificado a partir do JEI.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um envio é recusado, e tentado de novo depois, sempre que o altar não puder receber uma fabricação inteira:

| Recusa | O que fazer |
|---|---|
| O altar já contém uma entrada | Deixe a fabricação que ele está executando terminar |
| O espaço de saída ainda contém um item concluído | Recolha-o; um Cartão de Importação faz isso sozinho |
| Um pedestal já está segurando um item | Limpe as sobras à mão |
| A contagem de pedestais não corresponde à receita | Construa exatamente tantos pedestais quanto a receita tem ingredientes |
