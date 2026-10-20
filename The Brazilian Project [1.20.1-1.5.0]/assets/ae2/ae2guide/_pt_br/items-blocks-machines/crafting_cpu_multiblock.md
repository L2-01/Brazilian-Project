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

CPUs de fabricação gerenciam pedidos/tarefas de fabricação. Elas armazenam os ingredientes intermediários enquanto tarefas de fabricação com múltiplas etapas são
executadas, e afetam o tamanho das tarefas e, até certo ponto, a velocidade com que são concluídas. Veja [autofabricação](../ae2-mechanics/autocrafting.md)
para mais detalhes.

Cada CPU de fabricação lida com 1 pedido ou tarefa, então se você quiser pedir tanto um processador de cálculo quanto 256 pedras lisas de uma vez, você precisa de 2 multiblocos de CPU.

Elas podem ser configuradas para lidar com pedidos de jogadores, de automação (pontos de exportação e interfaces), ou de ambos.

Clicar com o botão direito numa abre uma UI de status de fabricação onde você pode conferir o progresso da tarefa de fabricação que a CPU está lidando.

## Configurações

*   A CPU pode ser configurada para aceitar pedidos apenas de jogadores, apenas de automação (como <ItemLink id="export_bus" />s com
    <ItemLink id="crafting_card" />s), ou de ambos.

## Construção

CPUs de fabricação são multiblocos e devem ser prismas retangulares sólidos sem lacunas. São feitos de vários componentes.

Cada CPU deve conter pelo menos 1 bloco de armazenamento de fabricação (e a CPU mínima viável é de fato apenas um único armazenamento de fabricação de 1k).

# Unidade de Fabricação

<BlockImage id="crafting_unit" scale="4" />

(Opcional) Unidades de fabricação simplesmente preenchem espaço numa CPU para torná-la um prisma retangular sólido, se você não tiver
dos outros componentes em quantidade suficiente. Elas também são um ingrediente base dos outros componentes.

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
ingredientes intermediários envolvidos numa fabricação, então armazenamentos maiores ou em maior número são necessários para a CPU lidar com tarefas de fabricação
com mais ingredientes.

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

# Unidade de Co-Processamento de Fabricação

<BlockImage id="crafting_accelerator" scale="4" />

(Opcional) Co-processadores de fabricação fazem o sistema enviar lotes de ingredientes de <ItemLink id="pattern_provider" />s com mais frequência.
Isso permite que acompanhem máquinas que processam rapidamente. Um exemplo disso é um provedor de padrões cercado de
<ItemLink id="molecular_assembler" />s sendo capaz de empurrar ingredientes mais rápido do que um único montador consegue processar, e assim
distribuindo os lotes de ingredientes entre os montadores ao redor.

<RecipeFor id="crafting_accelerator" />

# Monitor de Fabricação

<BlockImage id="crafting_monitor" scale="4" />

(Opcional) O monitor de fabricação exibe a tarefa que a CPU está lidando no momento.
A tela pode ser colorida com um <ItemLink id="color_applicator" />.

<RecipeFor id="crafting_monitor" />
