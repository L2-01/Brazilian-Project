---
navigation:
  title: Controles, JEI e Automação
  icon: deepnullreforged:deepnull_dock
  position: 5
item_ids:
  - deepnullreforged:deepnull_dock
---

# Controles, JEI e Automação

Esta página cobre controles, comportamento de transferência, integração com o JEI e automação por acoplamento.

## Teclas de Atalho

- abrir / fechar um DeepNull ou DampNull pela barra de atalhos
- alternar o espaço selecionado enquanto segura
- alternar a trava de transferência do null na mão

## Controles do DeepNull

- `Shift + Scroll`: alterna o espaço selecionado
- `Clique do Meio`: seleciona um bloco armazenado correspondente quando possível
- `Alt + Clique`: define o espaço selecionado na GUI
- `Alt + Seta`: move itens na GUI
- `Ctrl + Clique`: alterna o modo de extração
- `P + Clique`: alterna o modo de colocação

## Controles do DampNull

- `Clique Esquerdo`: seleciona o tanque
- `Shift + Clique Esquerdo`: limpa o tanque
- `Shift + Clique Direito`: transfere com tanques ou produtos químicos compatíveis quando a transferência está destravada

## Trava de Transferência

Quando a transferência está destravada:

- `Shift + Clique Direito` num inventário ou tanque compatível tenta empurrar o conteúdo para dentro dele
- se nada puder ser empurrado, tenta puxar de volta o conteúdo correspondente
- se você estiver mirando num bloco normal em vez de um alvo de transferência, a colocação normal ainda funciona
- se você não estiver mirando num bloco alcançável, `Shift + Clique Direito` abre a GUI

## Integração com o JEI

A transferência de fabricação do JEI pode usar:

- o inventário do jogador
- o conteúdo do DeepNull carregado

Alvos suportados incluem:

- a grade de fabricação `2x2` do jogador
- bancadas de trabalho vanilla
- menus de fabricação modded compatíveis com uma matriz de fabricação normal

## Estação de Acoplagem

A estação de acoplagem expõe:

- armazenamento de itens
- armazenamento de fluidos
- armazenamento de energia
- armazenamento de produtos químicos quando a Melhoria de Produto Químico está instalada

Isso a torna útil com tubos, barramentos de armazenamento, tanques e outros sistemas padrão de automação do NeoForge.

## Páginas Relacionadas

- [Configuração e Ajustes](config-and-settings.md)
- [Estação de Acoplagem](docking-station.md)
