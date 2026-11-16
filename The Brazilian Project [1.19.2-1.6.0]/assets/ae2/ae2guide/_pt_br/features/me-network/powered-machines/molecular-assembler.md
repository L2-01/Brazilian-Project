---
categories:
  - ME Network/Powered Machines
item_ids:
  - ae2:molecular_assembler
navigation:
  title: Montador Molecular
---

O montador é uma máquina alimentada a energia que fabrica itens; pode ser aprimorado
inserindo <ItemLink id="speed_card"/> nele;
uma vez aprimorado, é muito rápido.

Funciona em um de dois modos: modo de padrão único ou modo de fabricação automática.

### Modo de Padrão Único

Usa um único <ItemLink id="crafting_pattern"/> inserido no montador para fabricar um item
sem uma rede de fabricação.

Isso o torna útil em montagens autônomas ou em configurações onde ele pode
ser alimentado por outros mods e até encadeado para fabricar uma saída final.
Os itens são aceitos por qualquer lado e exportados para quaisquer
inventários disponíveis.

### Modo de Fabricação Automática

Usa o <ItemLink id="crafting_pattern"/>
do <ItemLink id="pattern_provider"/> acoplado para fabricar itens quando eles são
solicitados pela [CPU de Fabricação](../../auto-crafting.md).

**NOTA:** Este modo exige que o espaço de padrão do montador esteja vazio.

<RecipeFor id="molecular_assembler" />
