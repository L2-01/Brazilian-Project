---
navigation:
  title: Estrutura do Apiário
  parent: index.md
  icon: minecraft:honeycomb_block
  position: 1
---

# Estrutura do Apiário

O Mystian Apiary é um **multibloco 3x3x3** que mantém suas Productive Bees trabalhando no lugar, então nenhuma abelha sai dele.

No coração fica um **Bloco de Favo de Mel**, envolto num cubo de **troncos**, com as quatro caixas embutidas nas laterais.

## A Construção

De dentro para fora:

- **Centro**: um Bloco de Favo de Mel
- **Norte, sul, leste e oeste** dele: uma de cada - a [Caixa de Abelhas](modules.md#bee-box), a [Caixa de Flores](modules.md#flower-box), o [Armazenamento](modules.md#storage) e o [Controlador](modules.md#controller), em qualquer arranjo
- **Todas as outras posições** do cubo: quaisquer troncos, normais ou descascados

<GameScene zoom="6">
  <Block x="0" y="0" z="0" id="minecraft:oak_log" />
  <Block x="1" y="0" z="0" id="minecraft:oak_log" />
  <Block x="2" y="0" z="0" id="minecraft:oak_log" />
  <Block x="0" y="0" z="1" id="minecraft:oak_log" />
  <Block x="1" y="0" z="1" id="minecraft:oak_log" />
  <Block x="2" y="0" z="1" id="minecraft:oak_log" />
  <Block x="0" y="0" z="2" id="minecraft:oak_log" />
  <Block x="1" y="0" z="2" id="minecraft:oak_log" />
  <Block x="2" y="0" z="2" id="minecraft:oak_log" />
  <Block x="0" y="1" z="0" id="minecraft:oak_log" />
  <Block x="1" y="1" z="0" id="mystianapiary:input_block" p:facing="west" />
  <Block x="2" y="1" z="0" id="minecraft:oak_log" />
  <Block x="0" y="1" z="1" id="mystianapiary:flower_block" p:facing="south" />
  <Block x="1" y="1" z="1" id="minecraft:honeycomb_block" />
  <Block x="2" y="1" z="1" id="mystianapiary:upgrade_block" />
  <Block x="0" y="1" z="2" id="minecraft:oak_log" />
  <Block x="1" y="1" z="2" id="mystianapiary:output_block" p:facing="east" />
  <Block x="2" y="1" z="2" id="minecraft:oak_log" />
  <Block x="0" y="2" z="0" id="minecraft:oak_log" />
  <Block x="1" y="2" z="0" id="minecraft:oak_log" />
  <Block x="2" y="2" z="0" id="minecraft:oak_log" />
  <Block x="0" y="2" z="1" id="minecraft:oak_log" />
  <Block x="1" y="2" z="1" id="minecraft:oak_log" />
  <Block x="2" y="2" z="1" id="minecraft:oak_log" />
  <Block x="0" y="2" z="2" id="minecraft:oak_log" />
  <Block x="1" y="2" z="2" id="minecraft:oak_log" />
  <Block x="2" y="2" z="2" id="minecraft:oak_log" />
</GameScene>

## Opcional: Uma Segunda Caixa de Armazenamento

Precisa de mais espaço? O tronco **diretamente acima do Bloco de Favo de Mel** (centro do topo) pode ser substituído por uma **segunda caixa de Armazenamento** de qualquer nível. A produção enche primeiro a caixa lateral principal e só transborda para a segunda quando ela está cheia, embora uma pilha parcialmente cheia na segunda caixa sempre seja completada primeiro. Fluidos transbordam do mesmo jeito.

Um tronco ali continua perfeitamente válido; a segunda caixa é totalmente opcional (donos de servidor podem desativá-la com a config `allowSecondOutput`).

<GameScene zoom="6">
  <Block x="0" y="0" z="0" id="minecraft:oak_log" />
  <Block x="1" y="0" z="0" id="minecraft:oak_log" />
  <Block x="2" y="0" z="0" id="minecraft:oak_log" />
  <Block x="0" y="0" z="1" id="minecraft:oak_log" />
  <Block x="1" y="0" z="1" id="minecraft:oak_log" />
  <Block x="2" y="0" z="1" id="minecraft:oak_log" />
  <Block x="0" y="0" z="2" id="minecraft:oak_log" />
  <Block x="1" y="0" z="2" id="minecraft:oak_log" />
  <Block x="2" y="0" z="2" id="minecraft:oak_log" />
  <Block x="0" y="1" z="0" id="minecraft:oak_log" />
  <Block x="1" y="1" z="0" id="mystianapiary:input_block" p:facing="west" />
  <Block x="2" y="1" z="0" id="minecraft:oak_log" />
  <Block x="0" y="1" z="1" id="mystianapiary:flower_block" p:facing="south" />
  <Block x="1" y="1" z="1" id="minecraft:honeycomb_block" />
  <Block x="2" y="1" z="1" id="mystianapiary:upgrade_block" />
  <Block x="0" y="1" z="2" id="minecraft:oak_log" />
  <Block x="1" y="1" z="2" id="mystianapiary:output_block" p:facing="east" />
  <Block x="2" y="1" z="2" id="minecraft:oak_log" />
  <Block x="0" y="2" z="0" id="minecraft:oak_log" />
  <Block x="1" y="2" z="0" id="minecraft:oak_log" />
  <Block x="2" y="2" z="0" id="minecraft:oak_log" />
  <Block x="0" y="2" z="1" id="minecraft:oak_log" />
  <Block x="1" y="2" z="1" id="mystianapiary:output_block" p:facing="north" />
  <Block x="2" y="2" z="1" id="minecraft:oak_log" />
  <Block x="0" y="2" z="2" id="minecraft:oak_log" />
  <Block x="1" y="2" z="2" id="minecraft:oak_log" />
  <Block x="2" y="2" z="2" id="minecraft:oak_log" />
</GameScene>
