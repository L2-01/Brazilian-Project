---
categories:
  - ME Network/Powered Machines
item_ids:
  - ae2:molecular_assembler
navigation:
  title: Montador Molecular
---

O montador é uma máquina energizada que fabrica itens; ela pode ser melhorada
inserindo <ItemLink id="speed_card"/> nela —
uma vez melhorada, fica muito rápida.

Funciona em um de dois modos: modo de padrão único ou modo de fabricação automática.

### Modo de Padrão Único

Usa um único <ItemLink id="crafting_pattern"/> inserido no montador para fabricar um item
sem uma rede de fabricação.

Isso o torna útil em montagens independentes ou em configurações em que ele pode
ser alimentado por outros mods e até encadeado para fabricar um produto final.
Itens são aceitos de qualquer lado e exportados para quaisquer inventários
disponíveis.

### Modo de Fabricação Automática

Usa o <ItemLink id="crafting_pattern"/>
de um <ItemLink id="pattern_provider"/> anexado para fabricar itens quando eles são
requisitados pela [CPU de Fabricação](../../auto-crafting.md).

**NOTA:** Este modo exige que o slot de padrão do montador esteja vazio.

<RecipeFor id="molecular_assembler" />
