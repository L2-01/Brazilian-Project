---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Inscritor
  icon: inscriber
  position: 310
categories:
- machines
item_ids:
- ae2:inscriber
---

# O Inscritor

<BlockImage id="inscriber" scale="8" />

O inscritor é usado para inscrever circuitos e [processadores](processors.md) usando [prensas](presses.md), e para triturar vários itens em pó.
Ele pode aceitar tanto a energia do AE2 (AE) quanto Fabric/Forge Energy (E/FE). Ele pode ser direcionado por face, de modo que inserir itens por lados diferentes
os coloca em slots diferentes de seu inventário. Para facilitar isso, ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.
Ele também pode ser configurado para empurrar os resultados das fabricações para inventários adjacentes.

O tamanho do buffer de entrada pode ser ajustado. Por exemplo, se você quer alimentar um grande conjunto de inscritores a partir de um inventário,
você quer um buffer pequeno para que os materiais sejam distribuídos entre os inscritores de forma mais otimizada (em vez do primeiro
inscritor encher até 64 e os demais ficarem vazios).

As 4 prensas de circuito são usadas para fabricar [processadores](processors.md)

<Row>
  <ItemImage id="silicon_press" scale="4" />

  <ItemImage id="logic_processor_press" scale="4" />

  <ItemImage id="calculation_processor_press" scale="4" />

  <ItemImage id="engineering_processor_press" scale="4" />
</Row>

Já a prensa de nome pode ser usada para nomear blocos, parecido com uma bigorna — útil para etiquetar coisas num <ItemLink id="pattern_access_terminal" />.

<ItemImage id="name_press" scale="4" />

## Configurações

* O inscritor pode ser configurado para ser direcionado por face (como explicado abaixo) ou permitir entradas em qualquer slot por qualquer lado, com um filtro interno decidindo
    o que vai para onde. No modo não direcionado, itens não podem ser extraídos dos slots de cima e de baixo.
* O inscritor pode ser configurado para empurrar itens para inventários adjacentes.
* O tamanho do buffer de entrada pode ser ajustado: a opção grande é para um inscritor isolado que você alimenta manualmente, a
opção pequena torna grandes configurações paralelizadas mais viáveis.

## A GUI e o Direcionamento por Face

No modo direcionado, o inscritor filtra o que vai para onde pelo lado pelo qual você insere ou extrai.

![GUI do Inscritor](../assets/diagrams/inscriber_gui.png) ![Lados do Inscritor](../assets/diagrams/inscriber_sides.png)

A. **Entrada Superior** acessada pelo lado de cima do inscritor (itens podem ser tanto empurrados para quanto puxados deste slot)

B. **Entrada Central** inserida pelos lados esquerdo, direito, frontal e traseiro do inscritor (itens só podem ser empurrados para este slot, não puxados)

C. **Entrada Inferior** acessada pelo lado de baixo do inscritor (itens podem ser tanto empurrados para quanto puxados deste slot)

D. **Saída** puxada pelos lados esquerdo, direito, frontal e traseiro do inscritor (itens só podem ser puxados deste slot, não empurrados)

## Automação Simples

Como exemplo, o direcionamento e a capacidade de rotação permitem semiautomatizar inscritores assim:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/inscriber_hopper_automation.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Ou simplesmente use tubos para dentro e para fora do inscritor no modo não direcionado.

## Melhorias

O inscritor suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="speed_card" />

## Receita

<RecipeFor id="inscriber" />
