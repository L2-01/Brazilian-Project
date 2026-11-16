---
navigation:
  title: "Add-on: Cartões de Importação e Exportação do AE2"
  icon: ae2importexportcard:export_card
  position: 150
categories:
  - tools
item_ids:
- ae2importexportcard:export_card
- ae2importexportcard:import_card
- ae2importexportcard:block_picker_card
---

# Cartão de Importação e Exportação do AE2

<Row>
  <ItemImage id="ae2importexportcard:export_card" scale="2" />

  <ItemImage id="ae2importexportcard:import_card" scale="2" />

  <ItemImage id="ae2importexportcard:block_picker_card" scale="2" />
</Row>

Os cartões de Importação, Exportação e Seletor de Blocos permitem importar/exportar itens do seu inventário

## Cartão de Importação

<ItemImage id="ae2importexportcard:import_card" scale="2" />

O cartão de importação pega itens em slots específicos do seu inventário e os despeja no seu sistema ME.

![Cartão de Importação](diagrams/import_card.png)

Clicar nos slots coloca um visto. Qualquer item num slot marcado será importado para o seu sistema ME. Arraste itens do seu inventário para o topo para mudar o filtro.

### Upgrades

O Cartão de Importação suporta as seguintes [melhorias](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="inverter_card" /> alterna o filtro de lista-branca para lista-negra

### Recipe

<RecipeFor id="ae2importexportcard:import_card" />

## Cartão de Exportação

<ItemImage id="ae2importexportcard:export_card" scale="2" />

O cartão de exportação funciona exatamente da mesma forma, mas puxa itens do seu sistema ME para o seu inventário.

![Cartão de Exportação](diagrams/export_card.png)

Para especificar quais itens, arraste o item do inventário para um dos slots no topo e clique num slot do seu inventário para mudá-lo para o número desejado. Clicar com o direito limpa de volta para X.

### Upgrades

O Cartão de Exportação suporta as seguintes [melhorias](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="speed_card" /> aumenta a velocidade de transferência de 1 para uma pilha inteira de itens
*   <ItemLink id="crafting_card" /> solicita e fabrica automaticamente itens que não estão disponíveis no momento

### Recipe

<RecipeFor id="ae2importexportcard:export_card" />

## Cartão Seletor de Blocos

<ItemImage id="ae2importexportcard:block_picker_card" scale="2" />

O Cartão Seletor de Blocos permite extrair o bloco que você está olhando diretamente da sua Rede. Basta mirar num bloco e pressionar a tecla "Selecionar Bloco". Se o bloco correspondente estiver disponível na sua rede, ele será extraído para o seu inventário.

![Cartão Seletor de Blocos](diagrams/block_picker_card.png)

### Recipe

<RecipeFor id="ae2importexportcard:block_picker_card" />