---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Provedor de Padrões
  icon: pattern_provider
  position: 210
categories:
- devices
item_ids:
- ae2:pattern_provider
- ae2:cable_pattern_provider
---

# O Provedor de Padrões

<Row gap="20">
<BlockImage id="pattern_provider" scale="8" />
<BlockImage id="pattern_provider" p:push_direction="up" scale="8" />
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

Provedores de padrões são a forma primária pela qual seu sistema de [autofabricação](../ae2-mechanics/autocrafting.md) interage com o mundo. Eles empurram os ingredientes dos
seus [padrões](patterns.md) para inventários adjacentes, e itens podem ser inseridos neles para inseri-los na rede. Muitas vezes
um canal pode ser economizado ligando a saída de uma máquina de volta a um provedor de padrões próximo (frequentemente o que empurrou os ingredientes)
em vez de usar um <ItemLink id="import_bus" /> para puxar a saída da máquina para a rede.

Vale notar que, como eles empurram os ingredientes diretamente do [armazenamento de fabricação](crafting_cpu_multiblock.md#crafting-storage) numa CPU de fabricação, eles
nunca de fato contêm os ingredientes no seu inventário, então você não pode puxar deles com canos. Você precisa fazer o provedor empurrar
para outro inventário (como um barril) e então puxar daquele.

Vale notar também que o provedor precisa empurrar TODOS os ingredientes de uma vez; ele não consegue empurrar meio lote. Isso é útil
de explorar.

Provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface não estiver modificada (nada nos slots de pedido),
o provedor pulará a interface inteiramente e empurrará direto para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
pulando a interface e não enchendo-a de lotes de receita, e, mais importante, não inserindo o próximo lote até que haja espaço na máquina.
Isso funciona corretamente com o modo bloqueio: o provedor monitorará os slots na máquina por ingredientes, em vez dos slots na interface.

Por exemplo, este esquema empurrará tanto a coisa a ser fundida quanto o combustível diretamente nos slots correspondentes na fornalha.
Você pode usar isso para fornecer padrões a múltiplos lados de uma máquina, ou a múltiplas máquinas.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: A variante direcional, via uso de uma chave-inglesa de quartzo certus, com os padrões de processamento relevantes.

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) Interface: Na sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) Ponto de Armazenamento #1: Filtrado para carvão.
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) Ponto de Armazenamento #2: Filtrado para bloquear carvão, usando um cartão inversor.
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Esta é uma ilustração geral de fornecimento a múltiplas máquinas

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (deve ser plana, não bloco inteiro)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer fornecer padrões
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

Múltiplos provedores de padrões com padrões idênticos são suportados e funcionam em paralelo.

Provedores de padrões tentarão distribuir seus lotes em rodízio por todas as suas faces, assim usando todas as máquinas acopladas em paralelo.

## Variantes

Provedores de Padrões vêm em 3 variantes diferentes: normal, direcional e plana/[subparte](../ae2-mechanics/cable-subparts.md). Isso afeta para quais lados específicos eles empurram
ingredientes, de quais recebem itens e a quais fornecem uma conexão de rede.

* Provedores de padrões normais empurram ingredientes para todos os lados, recebem entradas de todos os lados e, como a maioria das máquinas AE2, agem
    como um cabo, fornecendo conexão de rede a todos os lados.

* Provedores de padrões direcionais são feitos usando uma <ItemLink id="certus_quartz_wrench" /> num provedor de padrões normal para mudar sua
    direção. Eles só empurram ingredientes para o lado selecionado, recebem entradas de todos os lados e especificamente não fornecem uma conexão de rede
    no lado selecionado. Isso permite que empurrem para máquinas AE2 sem conectar redes, se você quiser fazer uma sub-rede.

* Provedores de padrões planos são [subpartes de cabo](../ae2-mechanics/cable-subparts.md), então vários podem ser colocados no mesmo cabo, permitindo esquemas compactos.
    Eles agem de forma semelhante ao lado selecionado de um provedor de padrões direcional, fornecendo padrões, recebendo entradas e **não**
    fornecendo uma conexão de rede na sua face.

Provedores de padrões podem ser alternados entre normal e plano numa grade de fabricação.

## Configurações

Provedores de padrões têm uma variedade de modos:

*   **Modo Bloqueio** impede o provedor de empurrar um novo lote de ingredientes se já houver
    ingredientes na máquina.
*   **Travar Fabricação** pode travar o provedor sob várias condições de redstone, ou até que o resultado da
    fabricação anterior seja inserido naquele provedor de padrões específico.
*   O provedor pode ser mostrado ou escondido em <ItemLink id="pattern_access_terminal" />s.

## Prioridade

Prioridades podem ser definidas clicando na chave-inglesa no canto superior direito da GUI. No caso de vários [padrões](patterns.md)
para o mesmo item, padrões em provedores com maior prioridade serão usados em vez de padrões em provedores com menor prioridade,
a menos que a rede não tenha os ingredientes para o padrão de maior prioridade.

## Um Equívoco Comum

Por algum motivo as pessoas continuam fazendo isso, não entendo por quê, mas estou colocando isso aqui na esperança de ajudar. (Talvez
as pessoas se enganem achando que um <ItemLink id="export_bus" /> é o único jeito de coisas saírem da rede, sem saber
que provedores de padrões também exportam coisas)

Isso não fará o que você quer que faça. Como mencionado em [cabos](cables.md), cabos não são canos de itens, não têm inventário
interno, provedores não empurrarão para dentro deles.

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_1.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

Como o provedor não tem nada para onde empurrar, ele
não conseguirá funcionar. Tudo que está fazendo aqui é agir como um cabo, conectando o <ItemLink id="export_bus" /> à
rede.

O provedor também não vai de alguma forma dizer ao <ItemLink id="export_bus" /> o que exportar; o ponto de exportação simplesmente exportará
tudo que você colocar no filtro dele.

O que essencialmente fizemos aqui foi isto:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_2.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

Provavelmente o que você de fato queria fazer é isto, onde o provedor de padrões pode exportar o conteúdo dos seus padrões para
a máquina adjacente:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_3.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

## Receitas

<RecipeFor id="pattern_provider" />

<RecipeFor id="cable_pattern_provider" />
