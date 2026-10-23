---
navigation:
  title: Começando (1.20+)
  position: 10
---

<div class="notification is-info">
  As informações a seguir se aplicam apenas ao Applied Energistics 2 no Minecraft 1.20 e versões mais recentes.
</div>

# Começando

## Conseguindo os Materiais Iniciais)

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/meteor_interior.snbt" />
</GameScene>

Para começar no Applied Energistics 2, é preciso primeiro encontrar um [meteorito](ae2-mechanics/meteorites.md). Eles são bem comuns e costumam deixar buracos enormes no terreno, então você provavelmente já encontrou um nas suas viagens.
Se não encontrou, você pode fabricar uma <ItemLink id="meteorite_compass" />, que apontará para o <ItemLink id="mysterious_cube" /> mais próximo.

Depois de encontrar um meteorito, minere até o seu centro. Você encontrará agregados de quartzo certus, cristais de quartzo certus, [blocos de certus em brotamento](items-blocks-machines/budding_certus.md) de vários tipos e um Cubo Misterioso no centro.

Minere os agregados de quartzo certus e quaisquer blocos de quartzo certus que encontrar. Você também pode pegar os blocos de certus em brotamento, mas sem toque suave eles degradarão em 1 nível.

Não quebre nenhum certus em brotamento imaculado, pois mesmo com toque suave eles degradarão para certus em brotamento trincado, e é impossível repará-los de volta para imaculado.

Minere também o Cubo Misterioso no centro do meteorito para obter as 4 prensas de inscritor.

## Cultivando Quartzo Certus

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_1.snbt" />
</GameScene>

Cristais de quartzo certus brotarão de [blocos de certus em brotamento](items-blocks-machines/budding_certus.md), parecido com a ametista. Se você quebrar um cristal que não terminou
de crescer, ele dropará um <ItemLink id="certus_quartz_dust" />, sem mudança pela fortuna. Se você quebrar um agregado totalmente crescido, ele dropará quatro
<ItemLink id="certus_quartz_crystal" />s, e a fortuna aumentará esse número.

Há 4 níveis de blocos de certus em brotamento: Imaculado, Trincado, Lascado e Danificado.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_blocks.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Toda vez que um cristal cresce mais um estágio, o bloco em brotamento tem uma chance de degradar um nível, eventualmente se tornando
um bloco de quartzo certus comum. Eles podem ser reparados (e novos blocos em brotamento podem ser criados) jogando o bloco em brotamento (ou um
bloco de quartzo certus) na água com um ou mais <ItemLink id="charged_certus_quartz_crystal" />.

<RecipeFor id="damaged_budding_quartz" />

Blocos de certus em brotamento imaculados não degradam e geram certus infinitamente. Porém, eles não podem ser fabricados nem movidos
com uma picareta, mesmo com toque suave. (mas eles *podem* ser movidos com [armazenamento espacial](ae2-mechanics/spatial-io.md))

Sozinhos, os cristais de quartzo certus crescem muito devagar. Por sorte, o <ItemLink id="growth_accelerator" /> acelera
massivamente esse processo quando colocado adjacente ao bloco em brotamento. Você deve construir alguns destes como primeira prioridade.

<GameScene zoom="4" background="transparent">
<ImportStructure src="assets/assemblies/budding_certus_2.snbt" />
<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Se você não tiver quartzo suficiente para fazer também um <ItemLink id="energy_acceptor" /> ou uma <ItemLink id="vibration_chamber" />,
você pode fazer uma <ItemLink id="crank" /> e encaixá-la na ponta do seu acelerador.

A colheita automática do certus está [descrita aqui](example-setups/simple-certus-farm.md).

## Um Breve Parêntese sobre Fluix

Outro material de que você precisará é Fluix, que você já encontrou ao fazer aceleradores de crescimento. Ele é feito jogando certus carregado, redstone e quartzo do nether na água. Fazer isso automaticamente "fica como exercício para o leitor".

O <ItemLink id="charger" /> é necessário para produzir <ItemLink id="charged_certus_quartz_crystal" />., caso você ainda não tenha feito um.

## Inscrevendo Alguns Processadores

No seu saque ao meteorito, você terá encontrado quatro "prensas" ao quebrar o Cubo Misterioso. Elas são usadas no <ItemLink id="inscriber" /> para fazer os três tipos de processador.

<ItemGrid>
  <ItemIcon id="silicon_press" />

  <ItemIcon id="logic_processor_press" />

  <ItemIcon id="calculation_processor_press" />

  <ItemIcon id="engineering_processor_press" />
</ItemGrid>

O inscritor é uma máquina com lados, parecido com a fornalha do vanilla. Inserir por cima ou por baixo coloca itens nos slots de cima ou de baixo, e inserir pelo lado ou por trás insere no slot do centro. Os resultados podem ser puxados pelo lado ou por trás.

Para facilitar a automação com funis (e possivelmente reduzir o espaguete de tubos), inscritores podem ser girados com uma <ItemLink id="certus_quartz_wrench" />.

Produza alguns de cada tipo de processador em preparação para o próximo passo: montar um sistema ME bem básico. Automatizar a produção de processadores "fica [como exercício para o leitor](example-setups/processor-automation.md)".

## Tecnologia de Energia de Matéria: Redes ME e Armazenamento

### O que é Armazenamento ME?

Pronuncia-se "Ême-Í" e significa Matter Energy (Energia de Matéria).

Matter Energy é o componente principal do Applied Energistics 2; é como uma versão de cientista maluco de um baú de múltiplos blocos,
e pode revolucionar sua situação de armazenamento. ME é extremamente diferente de outros sistemas de armazenamento do Minecraft, e
pode exigir um pouco de pensamento fora da caixa para se acostumar; mas depois que você começa, quantidades vastas de armazenamento num espaço
minúsculo e vários terminais de acesso são só a ponta do iceberg do que se torna possível.

### O que eu preciso saber para começar?

Primeiro: o ME armazena itens dentro de outros itens, chamados [Células de armazenamento](items-blocks-machines/storage_cells.md); há 5 níveis com quantidades
cada vez maiores de armazenamento. Para usar uma Célula de Armazenamento, ela deve ser colocada dentro de um <ItemLink id="chest" />
ou de um <ItemLink id="drive" />.

O <ItemLink id="chest" /> mostra o conteúdo da Célula assim que ela é colocada dentro, e você
pode adicionar e remover itens dele como se fosse um <ItemLink id="minecraft:chest" />, com a diferença de que os itens são
na verdade armazenados nas Células de armazenamento, e não no <ItemLink id="chest" /> em si.

O <ItemLink id="chest" /> é bem situacional e limitado em utilidade. Para realmente
aproveitar o AE2, você precisa montar uma [Rede ME](ae2-mechanics/me-network-connections.md).

## Seu Primeiríssimo Sistema ME

Agora que você tem todos os materiais e máquinas básicos do Applied Energistics 2, pode montar seu primeiro sistema ME (Matter Energy). Será um bem básico: sem fabricação automática, sem logística, só um armazenamento bonito, simples e pesquisável.

<GameScene zoom="6" interactive={true}>
<ImportStructure src="assets/assemblies/tiny_me_system.snbt" />

</GameScene>

*   Sua lista de ingredientes:
    * 1x <ItemLink id="drive" />
    * 1x <ItemLink id="terminal" /> or <ItemLink id="crafting_terminal" />
    * 1x <ItemLink id="energy_acceptor" />
    * Alguns [cabos](items-blocks-machines/cables.md), de vidro, cobertos ou inteligentes, mas não densos
    * Algumas [células de armazenamento](items-blocks-machines/storage_cells.md), de preferência da variedade 4k para uma boa mistura de
    capacidade e tipos (seria mais eficiente [particionar](items-blocks-machines/cell_workbench.md) uma mistura de 4k e 1k, mas essa é uma complexidade na qual não vamos entrar agora)
---
1.  Coloque o gabinete no chão.
2.  O aceitador de energia (e vários outros [dispositivos](ae2-mechanics/devices.md) do AE2) vem em 2 modos: cubo e plano. Eles podem ser trocados numa grade de fabricação. Se o seu aceitador de energia for um cubo, coloque-o ao lado do gabinete. Se for um quadrado plano, coloque um cabo no gabinete e coloque o aceitador nele.
3.  Leve energia até o aceitador de energia com um cabo/tubo/conduto do seu mod de geração de energia favorito.
4.  Coloque um cabo em cima do gabinete (ou de qualquer forma na altura dos olhos) e coloque seu terminal ou terminal de fabricação nele.
5.  Coloque suas células de armazenamento no gabinete
6.  Lucro
7.  Fuçe nas configurações do terminal
8.  Aproveite seu poder e habilidade supremos
9.  Perceba que esta rede é, no grande esquema das coisas, bem pequena

### Expandindo sua Rede

Então você tem um armazenamento básico e acesso a ele — é um bom começo, mas provavelmente você vai querer
automatizar algum processamento.

Um ótimo exemplo disso é colocar um <ItemLink id="export_bus" /> no topo de uma fornalha para
despejar minérios, e um <ItemLink id="import_bus" />
embaixo da fornalha para extrair os minérios fundidos.

O <ItemLink id="export_bus" /> permite exportar itens da rede para o inventário acoplado,
enquanto o <ItemLink id="import_bus" /> importa itens do inventário acoplado para a
rede.

### Superando Limites

Neste ponto você provavelmente está chegando perto de uns 8 [dispositivos](ae2-mechanics/devices.md); ao atingir 9 dispositivos, você terá que começar a
gerenciar [canais](ae2-mechanics/channels.md). Muitos dispositivos, mas não todos, requerem um canal para
funcionar.

Por padrão, uma rede suporta 8 canais; ao ultrapassar esse limite, você terá que adicionar
um <ItemLink id="controller" /> à sua rede. Isso permite expandir bastante sua rede.
[Cabos inteligentes](items-blocks-machines/cables.md) permitem ver como os canais são roteados pela sua rede. Use-os bastante no início para aprender como os canais funcionam, ou se você tiver muita redstone e glowstone.
