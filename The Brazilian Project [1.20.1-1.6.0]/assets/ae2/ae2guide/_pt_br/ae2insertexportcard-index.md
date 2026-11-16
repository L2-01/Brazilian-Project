---
navigation:
  title: "Add-on: AE2 Insert Export Card"
  icon: ae2insertexportcard:export_card
  position: 150
categories:
  - tools
item_ids:
- ae2insertexportcard:export_card
- ae2insertexportcard:insert_card
---

# AE2 Insert Export Card

<Row>
  <ItemImage id="ae2insertexportcard:export_card" scale="2" />

  <ItemImage id="ae2insertexportcard:insert_card" scale="2" />
</Row>

Os cartões de inserção e exportação permitem inserir/exportar itens do seu inventário

## Cartão de Inserção

<ItemImage id="ae2insertexportcard:insert_card" scale="2" />

O cartão de inserção pega itens em espaços específicos do seu inventário e os despeja no seu sistema ME.

![Cartão de Inserção](diagrams/insert_card.png)

Clicar nos espaços coloca uma marca de seleção. Qualquer item no espaço que tiver a marca será importado para o seu sistema ME. Arraste itens do seu inventário para o topo para mudar o filtro.

### Melhorias

O Cartão de Inserção aceita as seguintes [melhorias](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="inverter_card" /> troca o filtro de lista-branca para lista-negra

### Receita

<RecipeFor id="ae2insertexportcard:insert_card" />

## Cartão de Exportação

<ItemImage id="ae2insertexportcard:export_card" scale="2" />

O cartão de exportação funciona exatamente da mesma forma, mas puxa itens do seu sistema ME para o seu inventário.

![Cartão de Exportação](diagrams/export_card.png)

Para especificar quais itens, arraste o item do inventário para um dos espaços do topo e clique num espaço do seu inventário para mudar para a quantidade desejada. Clicar com o botão direito limpa de volta para X.

### Melhorias

O Cartão de Exportação aceita as seguintes [melhorias](items-blocks-machines/upgrade_cards.md):

*   <ItemLink id="fuzzy_card" /> filtra por nível de dano e/ou ignora o NBT do item
*   <ItemLink id="speed_card" /> aumenta a velocidade de transferência de 1 para uma pilha inteira de itens
*   <ItemLink id="crafting_card" /> solicita e fabrica automaticamente itens que não estão disponíveis no momento

### Receita

<RecipeFor id="ae2insertexportcard:export_card" />
