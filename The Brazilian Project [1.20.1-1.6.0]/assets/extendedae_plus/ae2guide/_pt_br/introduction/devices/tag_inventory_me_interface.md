---
navigation:
  parent: introduction/index.md
  title: Interface ME de Inventário por Marcação
  position: 7
  icon: extendedae_plus:tag_inventory_me_interface
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:tag_inventory_me_interface
---

# Interface ME de Inventário por Marcação

<BlockImage id="extendedae_plus:tag_inventory_me_interface" scale="5" />

A **Interface ME de Inventário por Marcação** expõe itens selecionados de uma Rede ME como um inventário de itens para máquinas adjacentes. Em vez de configurar espaços de itens individuais, ela seleciona itens dinamicamente usando expressões de marcações.

## Configuração

Clique com o botão direito no bloco para configurar suas expressões de marcação de lista-branca e lista-negra, e depois selecione **Salvar** para aplicá-las.

- `&` exige que ambas as condições correspondam.
- `|` aceita qualquer uma das condições.
- `^` aceita exatamente uma das duas condições.
- `!` nega a condição seguinte.
- `( )` agrupa partes de uma expressão.
- `*` pode ser usado como curinga em nomes de marcações.

Por exemplo, `forge:ingots & !forge:ingots/iron` seleciona todos os lingotes marcados, exceto lingotes de ferro. A lista-negra é aplicada depois da lista-branca e exclui quaisquer itens correspondentes. Se ambas as expressões estiverem vazias, a interface não expõe nenhum item.

## Comportamento de Automação

- Máquinas adjacentes podem extrair itens correspondentes diretamente do armazenamento ME.
- Itens não podem ser inseridos na Rede ME através desta interface.
- O inventário exposto é atualizado dinamicamente conforme o conteúdo correspondente da rede muda.
- O bloco precisa estar energizado e conectado a uma Rede ME ativa, e consome um canal.
- Use uma chave-inglesa compatível com o AE2 para remover o bloco, preservando o comportamento normal da chave-inglesa.

## Receita de Fabricação

<Recipe id="extendedae_plus:tag_inventory_me_interface" />
