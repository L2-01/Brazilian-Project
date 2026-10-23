---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Fabricação Automática
  icon: pattern_provider
---

# Fabricação Automática

### O Grande Recurso

<GameScene zoom="4" interactive={true}>
  <ImportStructure src="../assets/assemblies/autocraft_setup_greebles.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

A fabricação automática é uma das funções principais do AE2. Em vez de fabricar manualmente a quantidade certa de cada subingrediente
e trabalhar duro como um *plebeu*, você pode pedir ao seu sistema ME para fazer isso por você. Ou fabricar itens automaticamente e exportá-los para algum lugar.
Ou manter automaticamente certas quantidades de itens em estoque por meio de um comportamento emergente inteligente. Também funciona com fluidos e, se você tiver
certos addons para tipos extras de materiais de outros mods, como gases do Mekanism, com esses materiais também. É muito bom.

É um tópico bem complexo, então se prepare e vamos lá.

Uma montagem de fabricação automática consiste em 3 coisas:
- A coisa que envia a solicitação de fabricação
- A CPU de fabricação
- The <ItemLink id="pattern_provider" />.

Eis o que acontece:

1.  Algo cria uma solicitação de fabricação. Pode ser você no terminal clicando em algo fabricável automaticamente,
    ou um ponto de exportação ou interface com um cartão de fabricação solicitando um item que estão configurados para exportar/estocar.

*   (**IMPORTANTE:** use a tecla vinculada a "pegar bloco" (geralmente o botão do meio do mouse) para solicitar fabricações de algo que você já tem em estoque, isso pode conflitar com mods de organização de inventário),

2.  O sistema ME calcula os ingredientes necessários e as etapas de fabricação pré-requisitas para atender à solicitação, e os armazena na CPU de fabricação selecionada

3.  O <ItemLink id="pattern_provider" /> com o [padrão](../items-blocks-machines/patterns.md) relevante envia os ingredientes especificados no padrão para qualquer inventário adjacente.
    No caso de uma receita de bancada de trabalho (um "padrão de fabricação"), será um <ItemLink id="molecular_assembler" />.
    No caso de uma receita que não é de bancada (um "padrão de processamento"), será algum outro bloco, máquina ou elaborada montagem controlada por redstone.

4.  O resultado da fabricação retorna ao sistema de alguma forma, seja por ponto de importação, interface, ou enviando o resultado de volta a um provedor de padrões.
    **Note que um evento de "item entrando no sistema" precisa ocorrer; não basta enviar o resultado por tubo para um baú com um <ItemLink id="storage_bus" /> nele.**

5.  Se essa fabricação for pré-requisito de outra fabricação na solicitação, os itens são armazenados naquela CPU de fabricação e depois usados nessa fabricação.

## Receitas Recursivas

<ItemImage id="minecraft:netherite_upgrade_smithing_template" scale="4" />

Uma coisa que o algoritmo de fabricação automática *não consegue* lidar são receitas recursivas. Por exemplo, receitas de duplicação como
"1 pó de redstone = 2 pós de redstone", ao jogar redstone numa piscina de mana do Botania. Outro exemplo seriam os moldes de ferraria
do Minecraft vanilla. No entanto, existe [uma forma de lidar com essas receitas](../example-setups/recursive-crafting-setup.md).

# Padrões

<ItemImage id="crafting_pattern" scale="4" />

Os padrões são feitos em um <ItemLink id="pattern_encoding_terminal" /> a partir de padrões em branco.

Existem vários tipos de padrão para coisas diferentes:

*   <ItemLink id="crafting_pattern" />s codificam receitas feitas em uma bancada de trabalho. Eles podem ser colocados diretamente em um <ItemLink id="molecular_assembler" /> para que ele
    fabrique o resultado sempre que receber os ingredientes, mas seu uso principal é em um <ItemLink id="pattern_provider" /> ao lado de um montador molecular.
    Os provedores de padrões têm um comportamento especial nesse caso e enviam o padrão relevante junto com os ingredientes aos montadores adjacentes.
    Como os montadores ejeta automaticamente os resultados das fabricações para inventários adjacentes, um montador em um provedor de padrões é tudo que é preciso para automatizar padrões de fabricação.

***

*   <ItemLink id="smithing_table_pattern" />s são muito parecidos com os padrões de fabricação, mas codificam receitas de mesa de ferraria. Também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. Aliás, padrões de fabricação, ferraria e corte de pedra podem ser
    usados na mesma montagem.

***

*   <ItemLink id="stonecutting_pattern" />s são muito parecidos com os padrões de fabricação, mas codificam receitas de serraria. Também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. Aliás, padrões de fabricação, ferraria e corte de pedra podem ser
    usados na mesma montagem.

***

*   <ItemLink id="processing_pattern" />s são de onde vem boa parte da flexibilidade da fabricação automática. É o tipo mais generalizado, simplesmente
    dizendo "se um provedor de padrões enviar estes ingredientes para inventários adjacentes, o sistema ME receberá estes itens em algum momento
    próximo ou distante". É assim que você vai fabricar automaticamente com praticamente qualquer máquina de mod, ou fornalhas e afins. Por serem tão
    genéricos e não se importarem com o que acontece entre o envio dos ingredientes e o recebimento do resultado, dá para fazer coisas bem mirabolantes, como mandar
    os ingredientes para uma cadeia de produção fabril inteira que vai separar coisas, receber outros ingredientes de farms infinitas,
    imprimir o roteiro inteiro de Bee Movie — o sistema ME não se importa, desde que receba o resultado que o padrão especifica. Aliás,
    ele nem se importa se os ingredientes têm alguma relação com o resultado. Você poderia dizer "1 tábua de cerejeira = 1 estrela do nether" e fazer
    sua farm de wither matar um wither ao receber uma tábua de cerejeira, e funcionaria.

Vários <ItemLink id="pattern_provider" />s com padrões idênticos são suportados e funcionam em paralelo. Além disso, você pode fazer um padrão dizer,
por exemplo, 8 pedregulhos = 8 pedras em vez de 1 pedregulho = 1 pedra, e o provedor de padrões inserirá 8 pedregulhos na
sua montagem de fundição a cada operação, em vez de um por vez.

## A Forma Mais Geral de "Padrão"

Na verdade existe uma forma de "padrão" ainda mais "geral" que o padrão de processamento. Um <ItemLink id="level_emitter" /> com um cartão de fabricação pode ser configurado
para emitir um sinal de redstone a fim de fabricar algo. Esse "padrão" não define ingredientes — nem se importa com eles.
Tudo que ele diz é "se você emitir redstone a partir deste emissor de nível, o sistema ME receberá este item em algum momento
próximo ou distante". Isso costuma ser usado para ativar e desativar farms infinitas que não exigem ingredientes de entrada,
ou para acionar um sistema que lida com receitas recursivas (que a fabricação automática padrão não entende), como, por exemplo, "1 pedregulho = 2 pedregulhos",
se você tiver uma máquina que duplica pedregulho.

# A CPU de Fabricação

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

As CPUs de fabricação gerenciam solicitações/trabalhos de fabricação. Elas armazenam os ingredientes intermediários enquanto trabalhos com várias etapas são
executados, e influenciam o tamanho máximo dos trabalhos e, até certo ponto, a velocidade com que são concluídos. São multiblocos e
precisam ser prismas retangulares com pelo menos 1 armazenamento de fabricação.

As CPUs de fabricação são feitas de:

*   (Obrigatório) [Armazenamentos de fabricação](../items-blocks-machines/crafting_cpu_multiblock.md), disponíveis em todos os tamanhos padrão de célula (1k, 4k, 16k, 64k, 256k). Eles guardam os ingredientes e
    ingredientes intermediários envolvidos numa fabricação, então armazenamentos maiores ou em maior número são necessários para a CPU lidar com trabalhos
    com mais ingredientes.
*   (Opcional) <ItemLink id="crafting_accelerator" />s, eles fazem o sistema enviar lotes de ingredientes dos provedores de padrões com mais frequência.
    Isso permite, por exemplo, que um provedor de padrões cercado por 6 montadores moleculares envie ingredientes para (e assim use) os 6 de uma vez, em vez de apenas um.
*   (Opcional) <ItemLink id="crafting_monitor" />s, eles exibem o trabalho que a CPU está processando no momento. Podem ser coloridos com um <ItemLink id="color_applicator" />
*   (Opcional) <ItemLink id="crafting_unit" />s, eles simplesmente preenchem espaço para tornar a CPU um prisma retangular.

Cada CPU de fabricação processa 1 solicitação ou trabalho, então se você quiser pedir um processador de cálculo e 256 pedras lisas ao mesmo tempo, precisa de 2 multiblocos de CPU.

Elas podem ser configuradas para atender a solicitações de jogadores, de automação (pontos de exportação e interfaces), ou de ambos.

# Provedores de Padrões

<Row>
<BlockImage id="pattern_provider" scale="4" />

<BlockImage id="pattern_provider" p:push_direction="up" scale="4" />

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/blocks/cable_pattern_provider.snbt" />
</GameScene>
</Row>

Os <ItemLink id="pattern_provider" />s são a principal forma do seu sistema de fabricação automática interagir com o mundo. Eles enviam os ingredientes dos seus
[padrões](../items-blocks-machines/patterns.md) para inventários adjacentes, e itens podem ser inseridos neles para entrar na rede. Muitas vezes
dá para economizar um canal devolvendo a saída de uma máquina por tubo a um provedor de padrões próximo (geralmente o que enviou os ingredientes),
em vez de usar um <ItemLink id="import_bus" /> para puxar a saída da máquina para a rede.

Vale notar que, como eles enviam os ingredientes diretamente do [armazenamento de fabricação](../items-blocks-machines/crafting_cpu_multiblock.md#crafting-storage) de uma CPU de fabricação, eles
nunca chegam a conter os ingredientes no próprio inventário, então não dá para puxar itens deles por tubo. É preciso fazer o provedor enviar
para outro inventário (como um barril) e puxar a partir dele.

Também vale notar que o provedor precisa enviar TODOS os ingredientes de uma vez; não pode enviar meios lotes. Isso é útil
de explorar.

Os provedores de padrões têm uma interação especial com interfaces em [sub-redes](../ae2-mechanics/subnetworks.md): se a interface estiver sem modificação (nada nos slots de solicitação),
o provedor ignora a interface por completo e envia diretamente para o [armazenamento](../ae2-mechanics/import-export-storage.md) daquela sub-rede,
pulando a interface, sem enchê-la de lotes de receita e, mais importante, sem inserir o próximo lote até que haja espaço no armazenamento.

Vários provedores de padrões com padrões idênticos são suportados e funcionam em paralelo.

Os provedores de padrões tentam distribuir seus lotes em rodízio por todas as suas faces, usando assim todas as máquinas acopladas em paralelo.

## Variantes

Os provedores de padrões vêm em 3 variantes: normal, direcional e plana. Isso afeta para quais lados específicos eles enviam
ingredientes, de quais recebem itens e para quais fornecem conexão de rede.

*   Provedores de padrões normais enviam ingredientes para todos os lados, recebem itens de todos os lados e, como a maioria das máquinas do AE2, agem
    como um cabo fornecendo conexão de rede em todos os lados.

*   Provedores de padrões direcionais são feitos usando uma <ItemLink id="certus_quartz_wrench" /> em um provedor de padrões normal para mudar sua
    direção. Eles só enviam ingredientes para o lado selecionado, recebem itens de todos os lados e, especificamente, não fornecem conexão
    de rede no lado selecionado. Isso permite que enviem itens a máquinas do AE2 sem conectar redes, caso você queira fazer uma sub-rede.

*   Provedores de padrões planos são uma [subparte de cabo](../ae2-mechanics/cable-subparts.md), então vários podem ser colocados no mesmo cabo, permitindo montagens compactas.
    Eles agem de forma parecida com o lado selecionado de um provedor direcional: fornecem padrões, recebem itens e não
    fornecem conexão de rede na sua face.

Os provedores de padrões podem ser convertidos entre normal e plano numa grade de fabricação.

## Configurações

Os provedores de padrões têm vários modos:

*   O **Modo de Bloqueio** impede que o provedor envie um novo lote de ingredientes se já houver
    ingredientes na máquina.
*   **Travar Fabricação** pode travar o provedor sob várias condições de redstone, ou até que o resultado da
    fabricação anterior seja inserido naquele provedor de padrões específico.
*   O provedor pode ser exibido ou ocultado em <ItemLink id="pattern_access_terminal" />s.

## Prioridade

As prioridades podem ser definidas clicando na chave no canto superior direito da GUI. No caso de vários [padrões](../items-blocks-machines/patterns.md)
para o mesmo item, os padrões em provedores com prioridade maior serão usados antes dos padrões em provedores com prioridade menor,
a menos que a rede não tenha os ingredientes do padrão de prioridade maior.

# Montadores Moleculares

<BlockImage id="molecular_assembler" scale="4" />

O <ItemLink id="molecular_assembler" /> recebe itens inseridos nele e executa a operação definida por um <ItemLink id="pattern_provider" /> adjacente,
ou pelo <ItemLink id="crafting_pattern" />, <ItemLink id="smithing_table_pattern" /> ou <ItemLink id="stonecutting_pattern" /> inserido,
e então envia o resultado para inventários adjacentes.

Seu uso principal é ao lado de um <ItemLink id="pattern_provider" />. Os provedores de padrões têm um comportamento especial nesse caso:
eles enviam informações sobre o padrão relevante junto com os ingredientes aos montadores adjacentes. Como os montadores ejeta automaticamente os resultados das
fabricações para inventários adjacentes (e portanto para os slots de retorno do provedor de padrões), um montador em um provedor de padrões
é tudo que é preciso para automatizar padrões de fabricação.

<GameScene zoom="4" background="transparent">
<ImportStructure src="../assets/assemblies/assembler_tower.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>
