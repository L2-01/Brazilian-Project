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

## MEGA [CPUs de Fabricação](ae2:items-blocks-machines/crafting_cpu_multiblock.md)

<Row>
  <BlockImage id="mega_crafting_unit" scale="4" />
  <BlockImage id="1m_crafting_storage" scale="4" />
  <BlockImage id="4m_crafting_storage" scale="4" />
  <BlockImage id="16m_crafting_storage" scale="4" />
  <BlockImage id="64m_crafting_storage" scale="4" />
  <BlockImage id="256m_crafting_storage" scale="4" />
</Row>

Assim como nas células de armazenamento, o MEGA também fornece seus níveis maiores de armazenamento para CPUs de fabricação. Embora estas também exijam
sua própria versão dedicada da <ItemLink id="ae2:crafting_unit" /> para acomodar o aumento de potência, elas
ainda lidarão facilmente até com os maiores trabalhos de fabricação com mais memória, enquanto ficam *muito bonitas*
em preto.

<RecipeFor id="mega_crafting_unit" />
<RecipeFor id="1m_crafting_storage" />
<RecipeFor id="4m_crafting_storage" />
<RecipeFor id="16m_crafting_storage" />
<RecipeFor id="64m_crafting_storage" />
<RecipeFor id="256m_crafting_storage" />

Como bônus adicional, o MEGA também fornece seu próprio equivalente ao <ItemLink id="ae2:crafting_accelerator" />, embora com
a vantagem de fornecer não uma, mas *QUATRO* threads de coprocessamento no espaço de cada bloco coprocessador adicionado.

<BlockImage id="mega_crafting_accelerator" scale="4" />
<RecipeFor id="mega_crafting_accelerator" />

E só para completar o pacote, também há um equivalente MEGA ao <ItemLink id="ae2:crafting_monitor" />.
Este não funciona de forma diferente do monitor comum, mas serve como complemento às
unidades mencionadas para usuários que querem manter alguma consistência estética e conservar o mesmo visual escuro e elegante
em todo o seu multibloco de CPU.

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
tendência de fornecer variantes maiores dos dispositivos AE2 apropriados, dobrando a capacidade de padrões e permitindo um total de
18 padrões contidos e gerenciados por ele. Isso, no entanto, vem com a desvantagem de só poder conter
[**padrões de processamento**](ae2:items-blocks-machines/patterns.md), então ele não funciona bem com o
<ItemLink id="ae2:molecular_assembler" />.

<Row>
  <RecipeFor id="mega_pattern_provider" />
  <RecipeFor id="cable_mega_pattern_provider" />
</Row>
