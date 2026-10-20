---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Fabricação Automática
  icon: pattern_provider
---

# Fabricação Automática

### O Prato Principal

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/autocraft_setup_greebles.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

A fabricação automática é uma das funções principais do AE2. Em vez de ter que fabricar manualmente o número correto de cada sub-ingrediente
e labutar como uma espécie de *plebeu*, você pode pedir ao seu sistema ME para fazer isso por você. Ou fabricar itens automaticamente e exportá-los para algum lugar.
Ou manter automaticamente certas quantidades de itens em estoque através de comportamento emergente inteligente. Também funciona com fluidos e, se você tiver
certos addons para tipos extras de material de mod, como gases do Mekanism, com esses materiais também. É muito bom.

É um tópico bem complexo, então aperte o cinto e vamos lá.

Uma configuração de fabricação automática consiste em 3 coisas:
- A coisa que envia o pedido de fabricação
- A CPU de fabricação
- O <ItemLink id="pattern_provider" />.

Eis o que acontece:

1.  Algo cria um pedido de fabricação. Pode ser você no terminal clicando em algo fabricável automaticamente,
    ou um ponto de exportação ou interface com um cartão de fabricação requisitando um dos itens que estão configurados para exportar/estocar.

*   (**IMPORTANTE:** use o que estiver vinculado a "pegar bloco" (geralmente o botão do meio do mouse) para requisitar fabricações de algo que você já tem em estoque; isso pode conflitar com mods de ordenação de inventário),

2.  O sistema ME calcula os ingredientes necessários e os passos de fabricação pré-requisitos para cumprir o pedido, e os armazena na CPU de fabricação selecionada

3.  O <ItemLink id="pattern_provider" /> com o [padrão](../items-blocks-machines/patterns.md) relevante empurra os ingredientes especificados no padrão para qualquer inventário adjacente.
    No caso de uma receita de bancada de trabalho (um "padrão de fabricação"), será um <ItemLink id="molecular_assembler" />.
    No caso de uma receita de não-fabricação (um "padrão de processamento"), será algum outro bloco, máquina ou configuração elaborada controlada por redstone.

4.  O resultado da fabricação é devolvido ao sistema de alguma forma, seja por ponto de importação, interface, ou empurrando o resultado de volta para um provedor de padrões.
    **Note que um evento de "item entrando no sistema" precisa ocorrer; você não pode simplesmente despejar o resultado num baú com um <ItemLink id="storage_bus" /> nele.**

5.  Se aquela fabricação for pré-requisito de outra fabricação no pedido, os itens são armazenados naquela CPU de fabricação e então usados naquela fabricação.

# Padrões

<ItemImage id="crafting_pattern" scale="4" />

Padrões são feitos num <ItemLink id="pattern_encoding_terminal" /> a partir de padrões em branco.

Há vários tipos diferentes de padrão para coisas diferentes:

*   <ItemLink id="crafting_pattern" />s codificam receitas feitas numa bancada de trabalho. Eles podem ser colocados diretamente num <ItemLink id="molecular_assembler" /> para fazê-lo
    fabricar o resultado sempre que receber os ingredientes, mas seu uso principal é num <ItemLink id="pattern_provider" /> ao lado de um montador molecular.
    Provedores de padrões têm comportamento especial nesse caso e enviarão o padrão relevante junto com os ingredientes para montadores adjacentes.
    Como os montadores ejetaam automaticamente os resultados das fabricações para inventários adjacentes, um montador num provedor de padrões é tudo que é preciso para automatizar padrões de fabricação.

***

*   <ItemLink id="smithing_table_pattern" />s são muito semelhantes a padrões de fabricação, mas codificam receitas de bancada de ferraria. Eles também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. Na verdade, padrões de fabricação, ferraria e corte de pedra podem ser
    usados na mesma configuração.

***

*   <ItemLink id="stonecutting_pattern" />s são muito semelhantes a padrões de fabricação, mas codificam receitas de cortador de pedras. Eles também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. Na verdade, padrões de fabricação, ferraria e corte de pedra podem ser
    usados na mesma configuração.

***

*   <ItemLink id="processing_pattern" />s são de onde vem muita da flexibilidade da fabricação automática. Eles são o tipo mais generalizado, simplesmente
    dizendo "se um provedor de padrões empurrar estes ingredientes para inventários adjacentes, o sistema ME receberá estes itens em algum momento num
    futuro próximo ou distante". Eles são como você vai fabricar automaticamente com praticamente qualquer máquina de mod, ou fornalhas e afins. Por serem tão
    gerais no uso e não se importarem com o que acontece entre empurrar os ingredientes e receber o resultado, você pode fazer coisas realmente malucas, como inserir
    os ingredientes numa cadeia de produção de fábrica complexa inteira que vai se resolver, recebendo outros ingredientes de farms de produção
    infinita, imprimir o roteiro inteiro de Bee Movie, o sistema ME não se importa desde que receba o resultado que o padrão especifica. Na verdade,
    ele nem se importa se os ingredientes têm qualquer relação com o resultado. Você poderia dizer "1 tábua de madeira de cerejeira = 1 estrela do nether" e fazer
    sua farm de wither matar um wither ao receber uma tábua de madeira de cerejeira e funcionaria.

Múltiplos <ItemLink id="pattern_provider" />s com padrões idênticos são suportados e funcionam em paralelo. Além disso, você pode ter um padrão dizendo,
por exemplo, 8 pedregulhos = 8 pedras em vez de 1 pedregulho = 1 pedra, e o provedor de padrões inserirá 8 pedregulhos na
sua configuração de fundição a cada operação, em vez de um de cada vez.

## A Forma Mais Geral de "Padrão"

Existe na verdade uma forma ainda mais "geral" de "padrão" que um padrão de processamento. Um <ItemLink id="level_emitter" /> com um cartão de fabricação pode ser configurado
para emitir um sinal de redstone a fim de fabricar algo. Este "padrão" não define, nem se importa com ingredientes.
Tudo que ele diz é "Se você emitir redstone deste emissor de nível, o sistema ME receberá este item em algum momento num
futuro próximo ou distante". Isso é geralmente usado para ativar e desativar fazendas infinitas que não exigem ingredientes de entrada,
ou para ativar um sistema que lida com receitas recursivas (que a autofabricação padrão não consegue entender) como, por exemplo, "1 pedregulho = 2 pedregulhos"
se você tiver uma máquina que duplica pedregulho.

# A CPU de Fabricação

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

CPUs de Fabricação gerenciam pedidos/trabalhos de fabricação. Elas armazenam os ingredientes intermediários enquanto trabalhos de fabricação com vários passos estão
sendo executados, e afetam quão grandes os trabalhos podem ser e, até certo ponto, quão rápido eles são concluídos. Elas são multiblocos e
devem ser prismas retangulares com pelo menos 1 armazenamento de fabricação.

CPUs de Fabricação são feitas de:

*   (Obrigatório) [Armazenamentos de fabricação](../items-blocks-machines/crafting_cpu_multiblock.md), disponíveis em todos os tamanhos padrão de célula (1k, 4k, 16k, 64k, 256k). Eles armazenam os ingredientes e
    ingredientes intermediários envolvidos numa fabricação, então armazenamentos maiores ou mais numerosos são necessários para a CPU lidar com trabalhos
    com mais ingredientes.
*   (Opcional) <ItemLink id="crafting_accelerator" />s, eles fazem o sistema enviar mais lotes de ingredientes dos provedores de padrões.
    Isso permite, digamos, que um provedor de padrões cercado por 6 montadores moleculares envie ingredientes para (e assim use) todos os 6 de uma vez em vez de só um.
*   (Opcional) <ItemLink id="crafting_monitor" />s, eles exibem o trabalho que a CPU está executando no momento. Podem ser coloridos via <ItemLink id="color_applicator" />
*   (Opcional) <ItemLink id="crafting_unit" />s, eles simplesmente preenchem espaço para tornar a CPU um prisma retangular.

Cada CPU de fabricação lida com 1 pedido ou trabalho, então se você quiser requisitar tanto um processador de cálculo quanto 256 pedras lisas de uma vez, precisa de 2 multiblocos de CPU.

Elas podem ser configuradas para lidar com pedidos de jogadores, de automação (pontos de exportação e interfaces), ou ambos.

# Provedores de Padrões

<Row>
<BlockImage id="pattern_provider" scale="4" />

<BlockImage id="pattern_provider" p:push_direction="up" scale="4" />

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

<ItemLink id="pattern_provider" />s são a forma principal pela qual seu sistema de fabricação automática interage com o mundo. Eles empurram os ingredientes de
seus [padrões](../items-blocks-machines/patterns.md) para inventários adjacentes, e itens podem ser inseridos neles para inseri-los na rede. Frequentemente
um canal pode ser economizado canalizando a saída de uma máquina de volta para um provedor de padrões próximo (muitas vezes o que empurrou os ingredientes)
em vez de usar um <ItemLink id="import_bus" /> para puxar a saída da máquina para a rede.

Importante: como eles empurram os ingredientes diretamente do [armazenamento de fabricação](../items-blocks-machines/crafting_cpu_multiblock.md#crafting-storage) numa CPU de fabricação, eles
nunca realmente contêm os ingredientes no seu inventário, então você não pode canalizar deles para fora. Você precisa fazer o provedor empurrar
para outro inventário (como um barril) e então canalizar daquele.

Também importante: o provedor precisa empurrar TODOS os ingredientes de uma vez; ele não pode empurrar meio lote. Isso é útil
de explorar.

Provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface estiver sem modificações (nada nos slots de requisição),
o provedor pulará a interface inteiramente e empurrará diretamente para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
pulando a interface e não a enchendo de lotes de receita, e mais importante, não inserindo o próximo lote até haver espaço no armazenamento.

Múltiplos provedores de padrões com padrões idênticos são suportados e funcionam em paralelo.

Provedores de padrões tentarão distribuir seus lotes em rodízio por todas as suas faces, usando assim todas as máquinas conectadas em paralelo.

## Variantes

Provedores de Padrões vêm em 3 variantes diferentes: normal, direcional e plano. Isso afeta para quais lados específicos eles empurram
ingredientes, de quais recebem itens e para quais fornecem conexão de rede.

*   Provedores de padrões normais empurram ingredientes para todos os lados, recebem entradas de todos os lados e, como a maioria das máquinas AE2, agem
    como um cabo fornecendo conexão de rede para todos os lados.

*   Provedores de padrões direcionais são feitos usando uma <ItemLink id="certus_quartz_wrench" /> num provedor de padrões normal para mudar sua
    direção. Eles só empurram ingredientes para o lado selecionado, recebem entradas de todos os lados e especificamente não fornecem conexão
    de rede no lado selecionado. Isso permite que empurrem para máquinas AE2 sem conectar redes, caso você queira fazer uma sub-rede.

*   Provedores de padrões planos são uma [subparte de cabo](../ae2-mechanics/cable-subparts.md), então vários podem ser colocados no mesmo cabo, permitindo configurações compactas.
    Eles agem de forma semelhante ao lado selecionado de um provedor de padrões direcional, fornecendo padrões, recebendo entradas e não
    fornecendo conexão de rede na sua face.

Provedores de padrões podem ser trocados entre normal e plano numa grade de fabricação.

## Configurações

Provedores de padrões têm uma variedade de modos:

*   **Modo de Bloqueio** impede o provedor de empurrar um novo lote de ingredientes se já houver
    ingredientes na máquina.
*   **Travar Fabricação** pode travar o provedor sob várias condições de redstone, ou até o resultado da
    fabricação anterior ser inserido naquele provedor de padrões específico.
*   O provedor pode ser mostrado ou ocultado em <ItemLink id="pattern_access_terminal" />s.

## Prioridade

Prioridades podem ser definidas clicando na chave inglesa no canto superior direito da GUI. No caso de vários [padrões](../items-blocks-machines/patterns.md)
para o mesmo item, padrões em provedores com maior prioridade serão usados em vez de padrões em provedores com menor prioridade,
a menos que a rede não tenha os ingredientes para o padrão de maior prioridade.

# Montadores Moleculares

<BlockImage id="molecular_assembler" scale="4" />

O <ItemLink id="molecular_assembler" /> pega itens inseridos nele e executa a operação definida por um <ItemLink id="pattern_provider" /> adjacente,
ou pelo <ItemLink id="crafting_pattern" />, <ItemLink id="smithing_table_pattern" /> ou <ItemLink id="stonecutting_pattern" /> inserido,
e então empurra o resultado para inventários adjacentes.

Seu uso principal é ao lado de um <ItemLink id="pattern_provider" />. Provedores de padrões têm comportamento especial nesse caso,
e enviarão informações sobre o padrão relevante junto com os ingredientes para montadores adjacentes. Como os montadores ejetaam automaticamente os resultados das
fabricações para inventários adjacentes (e assim para os slots de retorno do provedor de padrões), um montador num provedor de padrões
é tudo que é preciso para automatizar padrões de fabricação.

<GameScene zoom="4" background="transparent">
<ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>
