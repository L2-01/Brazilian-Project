---
navigation:
  title: Despertar
  icon: mysticalagriculture:awakening_altar
  parent: nep/mysticalagriculture/index.md
  position: 20
item_ids:
  - nep:awakening_pattern
---
# <Color id="gold">Despertar</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Despertar</Color>

  <ItemImage id="mysticalagriculture:awakening_altar" scale="2"/>

  Um Altar de Despertar quer nove itens espalhados por três tipos de bloco: o item central no altar, quatro ingredientes nos Pedestais de Despertar e quatro pilhas de essência nos Recipientes de Essência. Todos os nove chegam num único envio.
</Column>

<Recipe id="nep:module_status/awakening_altar"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="mysticalagriculture:awakening_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, enviando padrões
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Altar de Despertar**, circundado por quatro pedestais e quatro recipientes
  </BlockAnnotation>
</GameScene>

* Construa o altar com seus quatro Pedestais de Despertar e quatro Recipientes de Essência no anel que o Mystical Agriculture espera. Todos os oito são parte da máquina.
* Coloque um Provedor de Padrões contra qualquer face do altar e largue padrões <ItemLink id="nep:awakening_pattern"/> nele.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor para que o item concluído saia do espaço de saída do altar de volta.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Essências São Ingredientes</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

As quatro essências de uma receita são parte do padrão como qualquer outra coisa, então a rede as obtém e o envio enche os recipientes por conta própria. Um recipiente comporta quarenta, que é exatamente uma fabricação da receita mais cara, então o altar pega sua essência uma fabricação por vez.

Os recipientes precisam estar **vazios** quando um padrão chega. Essência deixada neles à mão bloqueia o envio, porque o altar então consumiria mais do que o padrão pediu à rede.

> <Color id="yellow">Integre as essências à fabricação automática.</Color> As essências de Ar, Terra, Água e Fogo são gotas comuns de plantações, então uma fazenda alimentando o sistema ME permite que uma receita de despertar seja solicitada como qualquer outro item.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como um Envio Funciona</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega o item central, os quatro ingredientes dos pedestais e as quatro pilhas de essência juntos, e então o altar inicia sozinho. Nenhum pulso de redstone é necessário.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de despertar no JEI e pressione a seta de transferência. O padrão codifica como um <ItemLink id="nep:awakening_pattern"/>, essências e tudo.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída correspondam a exatamente uma receita de despertar.
* Receitas de equipamento carregam os dados do item antigo para o novo. A rede obtém um item novo e não encantado para o trabalho, então um despertar solicitado pelo sistema ME nunca vai atrás daquele carregado que você está portando.

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
| Um pedestal ou recipiente não está vazio | Limpe as sobras à mão |
| A contagem de pedestais ou recipientes está errada | Construa quatro de cada |
