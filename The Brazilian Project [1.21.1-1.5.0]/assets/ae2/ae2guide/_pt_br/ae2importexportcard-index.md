---
navigation:
  title: "Add-on: AE2 Import Export Card"
  icon: ae2importexportcard:export_card
  position: 150
categories:
  - tools
item_ids:
- ae2importexportcard:export_card
- ae2importexportcard:import_card
- ae2importexportcard:block_picker_card
---

# AE2 Import Export Card

<Row>
  <ItemImage id="ae2importexportcard:export_card" scale="2" />

  <ItemImage id="ae2importexportcard:import_card" scale="2" />

  <ItemImage id="ae2importexportcard:block_picker_card" scale="2" />
</Row>

Os cartões de importação, exportação e seleção de blocos permitem importar/exportar itens do seu inventário

## Cartão de Importação

<ItemImage id="ae2importexportcard:import_card" scale="2" />

O Cartão de Importação pega itens de espaços específicos do seu inventário e os despeja no seu sistema ME.

![Cartão de Importação](diagrams/import_card.png)

Clicar nos espaços marca uma seleção. Qualquer item no espaço marcado será importado para o seu sistema ME. Arraste itens do seu inventário para a parte superior para alterar o filtro.

### Aprimoramentos

O Cartão de Importação aceita os seguintes [aprimoramentos](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="inverter_card" /> alterna o filtro de lista-branca para lista-negra

### Receita

<RecipeFor id="ae2importexportcard:import_card" />

## Cartão de Exportação

<ItemImage id="ae2importexportcard:export_card" scale="2" />

O Cartão de Exportação funciona exatamente da mesma forma, mas puxa itens do seu sistema ME para o seu inventário.

![Cartão de Exportação](diagrams/export_card.png)

Para especificar quais itens, arraste o item do inventário para um dos espaços no topo e clique em um espaço do seu inventário para alterá-lo para a quantidade desejada. Clicar com o botão direito limpa de volta para X.

### Aprimoramentos

O Cartão de Exportação aceita os seguintes [aprimoramentos](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="speed_card" /> melhora a velocidade de transferência de 1 para uma pilha inteira de itens
*   <ItemLink id="crafting_card" /> solicita e fabrica automaticamente itens que não estão disponíveis no momento

### Receita

<RecipeFor id="ae2importexportcard:export_card" />

## Cartão Seletor de Blocos

<ItemImage id="ae2importexportcard:block_picker_card" scale="2" />

O Cartão Seletor de Blocos permite extrair o bloco que você está olhando diretamente da sua rede. Basta mirar em um bloco e pressionar a tecla "Selecionar Bloco". Se o bloco correspondente estiver disponível na sua rede, ele será extraído para o seu inventário.

![Cartão Seletor de Blocos](diagrams/block_picker_card.png)

### Receita

<RecipeFor id="ae2importexportcard:block_picker_card" />