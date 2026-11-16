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
Ele pode aceitar tanto a energia do AE2 (AE) quanto Fabric/Forge Energy (E/FE). Ele pode ser dividido em lados, de modo que inserir itens por lados diferentes
os insere em slots diferentes do seu inventário. Para facilitar isso, ele pode ser girado com uma <ItemLink id="certus_quartz_wrench" />.
Ele também pode ser configurado para empurrar os resultados das fabricações para inventários adjacentes.

O tamanho do buffer de entrada pode ser ajustado. Por exemplo, se você quer alimentar de um inventário para uma grande matriz de inscritores,
você quer um buffer pequeno para que os materiais sejam distribuídos entre os inscritores de forma mais otimizada (em vez do primeiro
inscritor encher até 64 e o resto ficar vazio).

As 4 prensas de circuito são usadas para fabricar [processadores](processors.md)

<Row>
  <ItemImage id="silicon_press" scale="4" />

  <ItemImage id="logic_processor_press" scale="4" />

  <ItemImage id="calculation_processor_press" scale="4" />

  <ItemImage id="engineering_processor_press" scale="4" />
</Row>

Enquanto a prensa de nome pode ser usada para nomear blocos semelhante a uma bigorna, útil para rotular coisas num <ItemLink id="pattern_access_terminal" />.

<ItemImage id="name_press" scale="4" />

## Configurações

* O inscritor pode ser configurado para ter lados (como explicado abaixo) ou permitir entradas em qualquer slot por qualquer lado, com um filtro interno decidindo
    o que vai para onde. Enquanto no modo sem lados, itens não podem ser extraídos dos slots de cima e de baixo.
* O inscritor pode ser configurado para empurrar itens para inventários adjacentes.
* O tamanho do buffer de entrada pode ser ajustado: a opção grande é para um inscritor solitário que você alimenta manualmente, a
opção pequena serve para tornar grandes esquemas paralelizados mais viáveis.

## A GUI e os Lados

Quando no modo com lados, o inscritor filtra o que vai para onde por qual lado você insere ou extrai.

![Inscriber GUI](../assets/diagrams/inscriber_gui.png) ![Inscriber Sides](../assets/diagrams/inscriber_sides.png)

A. **Entrada de Cima** acessada pelo lado de cima do inscritor (itens podem ser tanto empurrados para quanto puxados deste slot)

B. **Entrada Central** inserida pelos lados esquerdo, direito, frontal e traseiro do inscritor (itens só podem ser empurrados para este slot, não puxados dele)

C. **Entrada de Baixo** acessada pelo lado de baixo do inscritor (itens podem ser tanto empurrados para quanto puxados deste slot)

D. **Saída** puxada pelos lados esquerdo, direito, frontal e traseiro do inscritor (itens só podem ser puxados deste slot, não empurrados para ele)

## Automação Simples

Como exemplo, os lados e a capacidade de girar significam que você pode semiautomatizar inscritores assim:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/inscriber_hopper_automation.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Ou simplesmente ligue canos para dentro e para fora do inscritor quando estiver no modo sem lados.

## Melhorias

O inscritor suporta as seguintes [melhorias](upgrade_cards.md):

*   <ItemLink id="speed_card" />

## Receita

<RecipeFor id="inscriber" />
