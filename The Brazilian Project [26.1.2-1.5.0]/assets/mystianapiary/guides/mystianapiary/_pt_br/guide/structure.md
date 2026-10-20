---
navigation:
  title: Estrutura do Apiário
  parent: index.md
  icon: minecraft:honeycomb_block
  position: 1
---

# Estrutura do Apiário

O Mystian Apiary é um **multibloco 3x3x3** que opera suas abelhas do Productive Bees no lugar, então nenhuma abelha sai dele.

No seu coração fica um **Bloco de Favo de Mel**, envolto num cubo de **troncos**, com as quatro caixas encaixadas nas laterais.

## A Montagem

Do meio para fora:

- **Centro**: um Bloco de Favo de Mel
- **Norte, sul, leste, oeste** dele: uma unidade de cada — [Caixa de Abelhas](modules.md#bee-box), [Caixa de Flores](modules.md#flower-box), [Armazenamento](modules.md#storage) e [Controlador](modules.md#controller), em qualquer disposição
- **Todos os outros espaços** do cubo: quaisquer troncos, normais ou descascados

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

Precisa de mais espaço? O tronco **diretamente acima do Bloco de Favo de Mel** (centro do topo) pode ser substituído por uma **segunda Caixa de Armazenamento** de qualquer nível. A produção enche primeiro a caixa principal da lateral e só transborda para a segunda quando aquela está cheia, embora uma pilha parcialmente preenchida na segunda caixa seja sempre completada primeiro. Os fluidos transbordam do mesmo jeito.

Um tronco ali continua perfeitamente válido, a segunda caixa é totalmente opcional (donos de servidor podem desativá-la com a configuração `allowSecondOutput`).

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
