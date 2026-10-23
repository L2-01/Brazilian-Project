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

  Um Altar do Despertar pede nove itens espalhados por três tipos de bloco: o item central no altar, quatro ingredientes nos Pedestais do Despertar, e quatro pilhas de essência nos Receptáculos de Essência. Os nove chegam num único envio.
</Column>

<Recipe id="nep:module_status/awakening_altar"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="mysticalagriculture:awakening_altar" y="0"/>
  <Block id="ae2:pattern_provider" y="1"/>

  <BlockAnnotation y="1" color="#00ccff">
    **Provedor de Padrões**, empurrando padrões para dentro
  </BlockAnnotation>
  <BlockAnnotation y="0" color="#88cc00">
    **Altar do Despertar**, cercado por quatro pedestais e quatro receptáculos
  </BlockAnnotation>
</GameScene>

* Construa o altar com seus quatro Pedestais do Despertar e quatro Receptáculos de Essência no anel que o Mystical Agriculture espera. Todos os oito fazem parte da máquina.
* Coloque um Provedor de Padrões contra qualquer face do altar e insira nele padrões de <ItemLink id="nep:awakening_pattern"/>.
* Adicione um <ItemLink id="nep:import_card"/> a esse Provedor para que o item pronto volte do espaço de saída do altar.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Essências São Ingredientes</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

As quatro essências de uma receita fazem parte do padrão como qualquer outra coisa, então a rede as obtém e o envio enche os receptáculos sozinho. Um receptáculo comporta quarenta, que é exatamente uma fabricação da receita mais cara, então o altar recebe sua essência uma fabricação por vez.

Os receptáculos precisam estar **vazios** quando um padrão chega. Essência deixada neles à mão bloqueia o envio, porque o altar então consumiria mais do que o padrão pediu à rede.

> <Color id="yellow">Amarre as essências à fabricação automática.</Color> Essências de Ar, Terra, Água e Fogo são drops comuns de plantações, então uma fazenda alimentando o sistema ME permite que uma receita de despertar seja requisitada como qualquer outro item.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Funciona um Envio</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Provedor entrega o item central, os quatro ingredientes de pedestal e as quatro pilhas de essência juntos, depois o altar se inicia sozinho. Nenhum pulso de redstone é necessário.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Codificação de Padrões</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Num Terminal de Codificação de Padrões, escolha uma receita de despertar no JEI e aperte a seta de transferência. O padrão codifica como um <ItemLink id="nep:awakening_pattern"/>, essências e tudo.
* Um padrão de processamento comum também funciona, desde que suas entradas e saída casem com exatamente uma receita de despertar.
* Receitas de equipamento carregam os dados do item antigo para o novo. A rede obtém um item novo e desencantado para o trabalho, então um despertar requisitado pelo sistema ME nunca alcança o carregado que você está portando.

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
| Um pedestal ou receptáculo não está vazio | Limpe os restos à mão |
| A contagem de pedestais ou receptáculos está errada | Construa quatro de cada |
