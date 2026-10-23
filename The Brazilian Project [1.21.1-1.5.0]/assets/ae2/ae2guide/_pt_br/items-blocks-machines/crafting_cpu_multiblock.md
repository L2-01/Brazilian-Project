---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Multibloco de CPU de Fabricação (Armazenamento, Coprocessador, Monitor, Unidade)
  icon: 1k_crafting_storage
  position: 210
categories:
- devices
item_ids:
- ae2:1k_crafting_storage
- ae2:4k_crafting_storage
- ae2:16k_crafting_storage
- ae2:64k_crafting_storage
- ae2:256k_crafting_storage
- ae2:crafting_accelerator
- ae2:crafting_monitor
- ae2:crafting_unit
---

# A CPU de Fabricação

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/crafting_cpus.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="crafting_accelerator" scale="4" />

  <BlockImage id="crafting_monitor" scale="4" />

  <BlockImage id="crafting_unit" scale="4" />
</Row>

CPUs de Fabricação gerenciam requisições/trabalhos de fabricação. Elas armazenam os ingredientes intermediários enquanto trabalhos com várias etapas estão
sendo executados, e afetam o tamanho máximo dos trabalhos e, em certa medida, a velocidade com que são concluídos. Veja [fabricação automática](../ae2-mechanics/autocrafting.md)
para mais detalhes.

Cada CPU de fabricação lida com 1 requisição ou trabalho, então se você quiser pedir um processador de cálculo e 256 pedras lisas ao mesmo tempo, precisa de 2 multiblocos de CPU.

Elas podem ser configuradas para atender requisições de jogadores, de automação (pontos de exportação e interfaces) ou de ambos.

Clicar com o botão direito em uma abre uma UI de estado de fabricação onde você pode acompanhar o progresso do trabalho que a CPU está executando.

## Configurações

*   A CPU pode ser configurada para aceitar requisições só de jogadores, só de automação (como <ItemLink id="export_bus" />es com
    <ItemLink id="crafting_card" />s) ou de ambos.

## Construção

CPUs de Fabricação são multiblocos e devem ser prismas retangulares sólidos, sem vãos. Elas são feitas de vários componentes.

Cada CPU deve conter pelo menos 1 bloco de armazenamento de fabricação (e a CPU mínima viável é, de fato, apenas um único armazenamento de fabricação de 1k).

# Unidade de fabricação

<BlockImage id="crafting_unit" scale="4" />

(Opcional) Unidades de fabricação simplesmente preenchem espaço numa CPU para torná-la um prisma retangular sólido, se você não tiver
componentes suficientes dos outros tipos. Elas também são um ingrediente base dos outros componentes.

<RecipeFor id="crafting_unit" />

# Armazenamento de Fabricação

<Row>
  <BlockImage id="1k_crafting_storage" scale="4" />

  <BlockImage id="4k_crafting_storage" scale="4" />

  <BlockImage id="16k_crafting_storage" scale="4" />

  <BlockImage id="64k_crafting_storage" scale="4" />

  <BlockImage id="256k_crafting_storage" scale="4" />
</Row>

(Obrigatório) Armazenamentos de fabricação estão disponíveis em todos os tamanhos padrão de célula (1k, 4k, 16k, 64k, 256k). Eles armazenam os ingredientes e
ingredientes intermediários envolvidos numa fabricação, então armazenamentos maiores ou em maior número são necessários para a CPU lidar com trabalhos
de fabricação com mais ingredientes.

<Column>
  <Row>
    <RecipeFor id="1k_crafting_storage" />

    <RecipeFor id="4k_crafting_storage" />

    <RecipeFor id="16k_crafting_storage" />
  </Row>

  <Row>
    <RecipeFor id="64k_crafting_storage" />

    <RecipeFor id="256k_crafting_storage" />
  </Row>
</Column>

# Unidade de Co Processamento de Fabricação

<BlockImage id="crafting_accelerator" scale="4" />

(Opcional) Coprocessadores de fabricação fazem o sistema enviar lotes de ingredientes dos <ItemLink id="pattern_provider" />s com mais frequência,
fazendo a CPU processar mais rápido.
Isso permite acompanhar máquinas que processam rápido. Um exemplo é um provedor de padrões cercado de
<ItemLink id="molecular_assembler" />s sendo capaz de empurrar ingredientes mais rápido do que um único montador consegue processar,
distribuindo assim os lotes de ingredientes entre os montadores ao redor.

Algumas receitas complexas têm várias etapas que podem ser feitas em paralelo, como fazer tábuas e livros simultaneamente para fazer estantes.
Na tela de estado de fabricação (visível clicando com o botão direito numa CPU ou pelo ícone de martelo num [terminal](terminals.md)), essas
etapas aparecerão como "agendadas". Cada coprocessador extra permite que mais uma dessas etapas seja feita em paralelo (aparecendo então como "fabricando").
Porém, isso não é tão relevante, porque normalmente você terá mais coprocessadores pela velocidade de inserção do que etapas de receita que poderiam ser feitas em paralelo.

<RecipeFor id="crafting_accelerator" />

# Monitor de Fabricação

<BlockImage id="crafting_monitor" scale="4" />

(Opcional) O monitor de fabricação exibe o trabalho que a CPU está executando no momento.
A tela pode ser colorida com um <ItemLink id="color_applicator" />.

<RecipeFor id="crafting_monitor" />
