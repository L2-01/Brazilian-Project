---
navigation:
  title: Autofabricação MEGA
  icon: 256m_crafting_storage
  parent: index.md
  position: 020
categories:
  - megacells
item_ids:
  - mega_crafting_unit
  - 1m_crafting_storage
  - 4m_crafting_storage
  - 16m_crafting_storage
  - 64m_crafting_storage
  - 256m_crafting_storage
  - mega_crafting_accelerator
  - mega_crafting_monitor
  - mega_pattern_provider
  - cable_mega_pattern_provider
---

# MEGA Cells: Autofabricação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="assets/assemblies/crafting_cpu.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

## [CPUs de Fabricação](ae2:items-blocks-machines/crafting_cpu_multiblock.md) MEGA

<Row>
  <BlockImage id="mega_crafting_unit" scale="4" />
  <BlockImage id="1m_crafting_storage" scale="4" />
  <BlockImage id="4m_crafting_storage" scale="4" />
  <BlockImage id="16m_crafting_storage" scale="4" />
  <BlockImage id="64m_crafting_storage" scale="4" />
  <BlockImage id="256m_crafting_storage" scale="4" />
</Row>

Assim como nas células de armazenamento, o MEGA também fornece seus níveis maiores de armazenamento para CPUs de fabricação.
Embora estas também exijam sua própria versão dedicada da <ItemLink id="ae2:crafting_unit" /> para acomodar o aumento de
capacidade, elas ainda lidam facilmente até com as maiores tarefas de fabricação com mais memória, enquanto também ficam
*muito bonitas* em preto.

<RecipeFor id="mega_crafting_unit" />
<RecipeFor id="1m_crafting_storage" />
<RecipeFor id="4m_crafting_storage" />
<RecipeFor id="16m_crafting_storage" />
<RecipeFor id="64m_crafting_storage" />
<RecipeFor id="256m_crafting_storage" />

Como bônus adicional, o MEGA também fornece seu próprio equivalente à <ItemLink id="ae2:crafting_accelerator" />, só que com
a vantagem de fornecer não uma, mas *QUATRO* threads de coprocessamento no espaço de cada bloco coprocessador adicionado.

<BlockImage id="mega_crafting_accelerator" scale="4" />
<RecipeFor id="mega_crafting_accelerator" />

E só para completar o pacote, também há um equivalente MEGA do <ItemLink id="ae2:crafting_monitor" />. Este, na verdade, não
funciona de forma diferente do monitor comum, mas serve de complemento às unidades mencionadas para usuários que buscam manter
uma consistência estética e conservar o mesmo visual elegante e escuro em todo o seu multibloco de CPU.

<BlockImage id="mega_crafting_monitor" scale="4" />
<RecipeFor id="mega_crafting_monitor" />

## Fornecedor de Padrões MEGA

<Row>
  <BlockImage id="mega_pattern_provider" scale="4" />
  <GameScene zoom="4" background="transparent">
    <ImportStructure src="assets/assemblies/cable_mega_pattern_provider.snbt" />
  </GameScene>
</Row>

Servindo como companheiro do <ItemLink id="ae2:pattern_provider" />, o **Fornecedor de Padrões MEGA** mantém a
tradição de fornecer variantes maiores dos dispositivos apropriados do AE2 ao dobrar a capacidade de padrões, permitindo que
um total de 18 padrões seja mantido e gerenciado por ele. Isso, no entanto, vem com a contrapartida de só conseguir armazenar
[**padrões de processamento**](ae2:items-blocks-machines/patterns.md), então ele não funcionará bem com o
<ItemLink id="ae2:molecular_assembler" />.

<Row>
  <RecipeFor id="mega_pattern_provider" />
  <RecipeFor id="cable_mega_pattern_provider" />
</Row>
