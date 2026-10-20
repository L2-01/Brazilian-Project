---
navigation:
  title: Começando (1.20+)
  position: 10
---

<div class="notification is-info">
  As informações a seguir só se aplicam ao Applied Energistics 2 no Minecraft 1.20 e mais recentes.
</div>

# Começando

## Obtendo os Materiais Iniciais

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/meteor_interior.snbt" />
</GameScene>

Para começar com o Applied Energistics 2, é preciso primeiro encontrar um [meteorito](ae2-mechanics/meteorites.md). Eles são bem comuns e tendem a deixar buracos gigantescos no terreno, então você provavelmente já encontrou um em suas viagens.
Se não encontrou, você pode fabricar uma <ItemLink id="meteorite_compass" />, que apontará para o <ItemLink id="mysterious_cube" /> mais próximo.

Depois de encontrar um meteorito, escave até o centro dele. Você encontrará agregados de quartzo certus, brotos de quartzo certus, [blocos de drusa de certus](items-blocks-machines/budding_certus.md) de vários tipos e um Cubo Misterioso no centro.

Minere os agregados de quartzo certus e quaisquer blocos de quartzo certus que encontrar. Você também pode pegar os blocos de drusa de certus, mas sem Toque Suave, eles degradarão em 1 nível.

Não quebre nenhuma drusa de quartzo certus infalível, pois mesmo com Toque Suave elas degradarão para drusa de quartzo certus imperfeita, e é impossível repará-las de volta para infalível.

Também minere o Cubo Misterioso no centro do meteorito para obter todas as 4 placas de inscritor.

## Cultivando Quartzo Certus

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Brotos de quartzo certus brotarão de [blocos de drusa de certus](items-blocks-machines/budding_certus.md), semelhante à ametista. Se você quebrar um broto que não terminou
de crescer, ele largará um <ItemLink id="certus_quartz_dust" />, inalterado pela fortuna. Se você quebrar um agregado completamente crescido, ele largará quatro
<ItemLink id="certus_quartz_crystal" />s, e a fortuna aumentará esse número.

Há 4 níveis de blocos de drusa de certus: Infalível, Imperfeita, Barata e Danificada.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_blocks.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Toda vez que um broto cresce mais um estágio, o bloco de drusa tem uma chance de degradar um nível, eventualmente se tornando
um bloco de quartzo certus comum. Eles podem ser reparados (e novos blocos de drusa criados) jogando o bloco de drusa (ou um
bloco de quartzo certus) na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Blocos de drusa de quartzo certus infalível não degradam e geram certus infinitamente. No entanto, eles não podem ser fabricados nem movidos
com uma picareta, mesmo com Toque Suave. (eles *podem* ser movidos com [armazenamento espacial](ae2-mechanics/spatial-io.md))

Sozinhos, os brotos de quartzo certus crescem muito devagar. Por sorte, o <ItemLink id="growth_accelerator" /> acelera
enormemente esse processo quando colocado adjacente ao bloco de drusa. Você deveria construir alguns deles como primeira prioridade.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_2.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Se você não tiver quartzo suficiente para também fazer um <ItemLink id="energy_acceptor" /> ou uma <ItemLink id="vibration_chamber" />,
você pode fazer uma <ItemLink id="crank" /> e encaixá-la na ponta do seu acelerador.

Colher o certus automaticamente está [descrito aqui](example-setups/simple-certus-farm.md).

## Uma Rápida Digressão sobre Fluix

Outro material de que você precisará é o Fluix, que você já encontrou ao fazer aceleradores de crescimento. Ele é feito jogando certus carregado, redstone e quartzo do nether na água. Fazer isso automaticamente "fica como exercício para o leitor".

O <ItemLink id="charger" /> é necessário para produzir <ItemLink id="charged_certus_quartz_crystal" />, se você ainda não tiver feito um.

## Inscrevendo Alguns Processadores

No saque do meteorito, você terá encontrado quatro "placas" ao quebrar o Cubo Misterioso. Elas são usadas no <ItemLink id="inscriber" /> para fazer os três tipos de processador.

<ItemGrid>
  <ItemIcon id="silicon_press" />

  <ItemIcon id="logic_processor_press" />

  <ItemIcon id="calculation_processor_press" />

  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

O inscritor é uma máquina com lados, muito parecido com a fornalha vanilla. Inserir por cima ou por baixo coloca itens nos slots superior ou inferior, e inserir pela lateral ou por trás insere no slot central. Os resultados podem ser retirados pela lateral ou por trás.

Para facilitar a automação com funis (e possivelmente reduzir o espaguete de tubos), os inscritores podem ser girados com uma <ItemLink id="certus_quartz_wrench" />.

Produza alguns de cada tipo de processador em preparação para o próximo passo, montando um sistema ME bem básico. Automatizar a produção de processadores fica "[como exercício para o leitor](example-setups/processor-automation.md)".

## Tecnologia de Energia de Matéria: Redes ME e Armazenamento

### O que é o Armazenamento ME?

É pronunciado "ême-i", e significa Matter Energy (Energia de Matéria).

Energia de Matéria é o componente principal do Applied Energistics 2; é como uma versão de cientista maluco de um baú multibloco,
e pode revolucionar sua situação de armazenamento. O ME é extremamente diferente de outros sistemas de armazenamento no Minecraft, e
pode exigir um pouco de pensamento fora da caixa para se acostumar. Mas uma vez que você comece, quantidades vastas de armazenamento em
espaço, e múltiplos terminais de acesso são apenas a ponta do iceberg do que se torna possível.

### O que eu preciso saber para começar?

Primeiro, o ME armazena itens dentro de outros itens, chamados [Células de Armazenamento](items-blocks-machines/storage_cells.md); há 5 níveis com quantidades cada vez maiores de
armazenamento. Para usar uma Célula de Armazenamento, ela deve ser colocada dentro de um <ItemLink id="chest" />,
ou de um <ItemLink id="drive" />.

O <ItemLink id="chest" /> mostra o conteúdo da Célula assim que ela é colocada dentro, e você
pode adicionar e remover itens dela como se fosse um <ItemLink id="minecraft:chest" />, com a exceção de que os itens são
na verdade estão armazenados nas Células de Armazenamento, e não no <ItemLink id="chest" /> em si.

Embora o <ItemLink id="chest" /> seja uma ótima forma de conhecer o conceito de ME, para realmente
aproveitar, você precisa montar uma [Rede ME](ae2-mechanics/me-network-connections.md).

## Seu Primeiríssimo Sistema ME

Agora que você tem todos os materiais e máquinas básicos do Applied Energistics 2, pode fazer seu primeiro sistema ME (Energia de Matéria). Este será bem básico, sem autofabricação, sem logística, só armazenamento simples, pesquisável e organizado.

<GameScene zoom="6" interactive={true}>
<ImportStructure src="assets/assemblies/tiny_me_system.snbt" />

</GameScene>

*   Sua lista de ingredientes:
    * 1x <ItemLink id="drive" />
    * 1x <ItemLink id="terminal" /> ou <ItemLink id="crafting_terminal" />
    * 1x <ItemLink id="energy_acceptor" />
    * Alguns [cabos](items-blocks-machines/cables.md), de vidro, coberto ou inteligente, mas não denso
    * Algumas [células de armazenamento](items-blocks-machines/storage_cells.md), recomendadas da variedade 4k para uma boa mistura de
    capacidade e tipos (seria mais eficiente [particionar](items-blocks-machines/cell_workbench.md) uma mistura de 4k e 1k, mas essa é uma complexidade que não vamos abordar agora)
---
1.  Coloque o gabinete no chão.
2.  O aceitador de energia (e vários outros [dispositivos](ae2-mechanics/devices.md) do AE2) vem em 2 modos, cubo e plano. Eles podem ser alternados numa grade de fabricação. Se o seu aceitador de energia for um cubo, coloque-o ao lado do gabinete. Se for um quadrado plano, coloque um cabo no gabinete e coloque o aceitador nele.
3.  Leve energia ao aceitador de energia com um cabo/tubo/conduto do seu mod de geração de energia favorito.
4.  Coloque um cabo em cima do gabinete (ou de outra forma à altura dos olhos) e coloque seu terminal ou terminal de fabricação nele.
5.  Ponha suas células de armazenamento no gabinete
6.  Lucro
7.  Mexa nas configurações do terminal
8.  Deleite-se com seu poder e habilidade supremos
9.  Perceba que esta rede é, no grande esquema, bem pequena

### Expandindo sua Rede

Então você tem um armazenamento básico e acesso a esse armazenamento. É um bom começo, mas você provavelmente vai querer
automatizar algum processamento.

Um ótimo exemplo disso é colocar um <ItemLink id="export_bus" /> no topo de uma fornalha para
despejar minérios, e um <ItemLink id="import_bus" />
na parte de baixo da fornalha para extrair os minérios fundidos.

O <ItemLink id="export_bus" /> permite exportar itens da rede para o inventário
anexado, enquanto o <ItemLink id="import_bus" /> importa itens do inventário anexado para
a rede.

### Superando Limites

Neste ponto você provavelmente está chegando perto de uns 8 [dispositivos](ae2-mechanics/devices.md); ao atingir 9 dispositivos, terá que começar a
gerenciar [canais](ae2-mechanics/channels.md). Muitos dispositivos, mas não todos, exigem um canal para
funcionar.

Por padrão, uma rede suporta 8 canais; uma vez quebrado esse limite, você terá que adicionar
um <ItemLink id="controller" /> à sua rede. Isso permite expandir enormemente sua rede.
[Cabos inteligentes](items-blocks-machines/cables.md) permitirão ver como os canais são roteados pela sua rede. Use-os bastante no começo para aprender como os canais agem, ou se você tiver muita redstone e pedra-luminosa.
