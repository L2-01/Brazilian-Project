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

Provedores de padrões são a principal forma pela qual seu sistema de [fabricação automática](../ae2-mechanics/autocrafting.md) interage com o mundo. Eles empurram os ingredientes de
seus [padrões](patterns.md) para inventários adjacentes, e itens podem ser inseridos neles para inseri-los na rede. Muitas vezes
um canal pode ser economizado devolvendo a saída de uma máquina por tubo a um provedor de padrões próximo (geralmente o que empurrou os ingredientes)
em vez de usar um <ItemLink id="import_bus" /> para puxar a saída da máquina para a rede.

Vale notar que, como eles empurram os ingredientes diretamente do [armazenamento de fabricação](crafting_cpu_multiblock.md#crafting-storage) numa CPU de fabricação, eles
nunca contêm de fato os ingredientes em seu inventário, então você não pode extrair deles por tubo. Você precisa fazer o provedor empurrar
para outro inventário (como um barril) e então extrair daquele.

Também vale notar que o provedor precisa empurrar TODOS os ingredientes de uma vez; ele não pode empurrar meios lotes. Isso é útil
para explorar.

Provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface não estiver modificada (nada nos slots de requisição),
o provedor pulará a interface completamente e empurrará diretamente para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
ignorando a interface e não a enchendo de lotes de receita — e, mais importante, não inserindo o próximo lote até haver espaço na máquina.
Isso funciona corretamente com o modo de bloqueio: o provedor monitorará os slots da máquina por ingredientes, em vez dos slots da interface.

Por exemplo, esta configuração empurrará tanto o item a ser fundido quanto o combustível diretamente para os slots correspondentes na fornalha.
Você pode usar isso para prover padrões para vários lados de uma máquina ou para várias máquinas.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/furnace_automation.snbt" />

<BoxAnnotation color="#dddddd" min="1 0 0" max="2 1 1">
        (1) Provedor de Padrões: A variante direcional, via uso de uma chave de quartzo certus, com os padrões de processamento relevantes.

        ![Iron Pattern](../assets/diagrams/furnace_pattern_small.png)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 1.3 1">
        (2) Interface: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="1.3 2 1">
        (3) Ponto de Armazenamento #1: Filtrado para carvão.
        <ItemImage id="minecraft:coal" scale="2" />
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 2 0" max="1 2.3 1">
        (4) Ponto de Armazenamento #2: Filtrado para lista negra de carvão, usando um cartão inversor.
        <Row><ItemImage id="minecraft:coal" scale="2" /><ItemImage id="inverter_card" scale="2" /></Row>
  </BoxAnnotation>

<DiamondAnnotation pos="4 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Esta é uma ilustração geral de prover para várias máquinas

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (precisa ser plana, não de bloco cheio)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer prover padrões
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

Vários provedores de padrões com padrões idênticos são suportados e funcionam em paralelo.

Provedores de padrões tentarão distribuir seus lotes em rodízio por todas as suas faces, usando assim todas as máquinas conectadas em paralelo.

## Variantes

Provedores de Padrões vêm em 3 variantes: normal, direcional e plana/[subparte](../ae2-mechanics/cable-subparts.md). Isso afeta para quais lados específicos eles empurram
ingredientes, de quais recebem itens e a quais fornecem conexão de rede.

* Provedores de padrões normais empurram ingredientes para todos os lados, recebem entradas de todos os lados e, como a maioria das máquinas do AE2, agem
    como um cabo fornecendo [conexões de rede](../ae2-mechanics/me-network-connections.md) a todos os lados.

* Provedores de padrões direcionais são feitos usando uma <ItemLink id="certus_quartz_wrench" /> num provedor de padrões normal para mudar sua
    direção. Eles só empurram ingredientes para o lado selecionado, recebem entradas de todos os lados e especificamente não fornecem
  [conexão de rede](../ae2-mechanics/me-network-connections.md) no lado selecionado. Isso permite que empurrem para máquinas do AE2 sem conectar redes, se você quiser fazer uma sub-rede.

* Provedores de padrões planos são [subpartes de cabo](../ae2-mechanics/cable-subparts.md), então vários podem ser colocados no mesmo cabo, permitindo configurações compactas.
    Eles agem de forma parecida com o lado selecionado de um provedor direcional, fornecendo padrões, recebendo entradas e **não**
    fornecendo [conexão de rede](../ae2-mechanics/me-network-connections.md) na sua face.

Provedores de padrões podem ser trocados entre normal e plano numa grade de fabricação.

## Configurações

Provedores de padrões têm vários modos:

*   O **Modo de Bloqueio** impede o provedor de empurrar um novo lote de ingredientes se já houver
    ingredientes na máquina.
*   **Travar processamento** pode travar o provedor sob várias condições de redstone, ou até o resultado da
    fabricação anterior ser inserido naquele provedor de padrões específico.
*   O provedor pode ser exibido ou escondido nos <ItemLink id="pattern_access_terminal" />s.

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI. No caso de vários [padrões](patterns.md)
para o mesmo item, padrões em provedores com prioridade maior serão usados em vez de padrões em provedores com prioridade menor,
a menos que a rede não tenha os ingredientes do padrão de prioridade maior.

## Um Equívoco Comum

Por algum motivo as pessoas continuam fazendo isso, não entendo por quê, mas estou colocando isto aqui na esperança de ajudar. (Talvez
as pessoas se enganem, achando que um <ItemLink id="export_bus" /> é a única forma de coisas saírem da rede, sem saber
que provedores de padrões também exportam coisas)

Isto não fará o que você quer. Como mencionado em [cabos](cables.md), cabos não são tubos de itens, eles não têm inventário
interno, provedores não empurrarão para dentro deles.

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_1.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É Um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

Como o provedor não tem para onde empurrar, ele não
conseguirá funcionar. Tudo que ele está fazendo aqui é agir como um cabo, conectando o <ItemLink id="export_bus" /> à
rede.

O provedor também não dirá de alguma forma ao <ItemLink id="export_bus" /> o que exportar; o ponto de exportação simplesmente exportará
tudo que você colocar no filtro dele.

O que essencialmente fizemos aqui foi isto:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_2.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É Um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

Provavelmente o que você realmente quer fazer é isto, onde o provedor de padrões pode exportar o conteúdo de seus padrões para
a máquina adjacente:

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../assets/assemblies/provider_misconception_3.snbt" />

  <BoxAnnotation color="#dddddd" min="1 0 3" max="2 1 4">
        Não É Um Alto-Forno
  </BoxAnnotation>

  <IsometricCamera yaw="95" pitch="5" />
</GameScene>

## Uso com Montadores Moleculares

<ItemLink id="molecular_assembler" />s são basicamente como qualquer outra máquina. Eles têm um inventário no qual se pode inserir
coisas, então executam uma ação nas coisas daquele inventário e depois, como muitas máquinas, empurram o resultado para um
inventário adjacente. Assim, eles devem ser usados com provedores como qualquer outra máquina, com uma adição:

Montadores podem pegar o padrão desejado de um <ItemLink id="crafting_pattern" />, <ItemLink id="smithing_table_pattern" /> ou <ItemLink id="stonecutting_pattern" />
inserido diretamente no montador.
Isso é útil numa linha de montagem, mas ter que ter um montador dedicado por receita seria chato.

Assim, provedores de padrões têm uma funcionalidade especial com montadores: eles podem enviar os dados do padrão junto com os ingredientes.
Dessa forma, você pode simplesmente colocar um montador ao lado de um provedor de padrões, e o provedor pode usar o montador para todos os seus
padrões de fabricação, ferraria e alvenaria.

É realmente simples assim, basta colocar os padrões nos provedores:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

*Note que isto tem exatamente 8 provedores, a quantidade máxima de canais que pode ser roteada por um único montador, provedor ou
cabo não denso.*

## Receitas

<RecipeFor id="pattern_provider" />

<RecipeFor id="cable_pattern_provider" />
