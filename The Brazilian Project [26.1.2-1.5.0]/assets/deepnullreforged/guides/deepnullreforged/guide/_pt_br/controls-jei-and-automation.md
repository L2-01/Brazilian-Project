---
navigation:
  title: Controles, JEI e Automação
  icon: deepnullreforged:deepnull_dock
  position: 5
item_ids:
  - deepnullreforged:deepnull_dock
---

# Controles, JEI e Automação

Esta página cobre os controles, o comportamento de transferência, a integração com o JEI e a automação pela estação de acoplagem.

## Teclas de Atalho

- abrir / fechar um DeepNull ou DampNull a partir da barra rápida
- alternar o slot selecionado enquanto segura
- alternar a trava de transferência do null segurado

## Controles do DeepNull

- `Shift + Scroll`: alterna o slot selecionado
- `Middle Click`: seleciona um bloco armazenado correspondente quando possível
- `Alt + Click`: define o slot selecionado na interface
- `Alt + Arrow`: move itens na interface
- `Ctrl + Click`: alterna o modo de extração
- `P + Click`: alterna o modo de colocação

## Controles do DampNull

- `Left Click`: seleciona o tanque
- `Shift + Left Click`: limpa o tanque
- `Shift + Right Click`: transfere para tanques ou produtos químicos compatíveis quando a transferência está destravada

## Trava de Transferência

Quando a transferência está destravada:

- `Shift + Right Click` num inventário ou tanque compatível tenta empurrar o conteúdo para ele
- se nada puder ser empurrado, ele tenta puxar de volta o conteúdo correspondente
- se você estiver mirando num bloco normal em vez de um alvo de transferência, a colocação normal ainda funciona
- se você não estiver mirando num bloco alcançável, `Shift + Right Click` abre a interface

## Integração com o JEI

A transferência de fabricação do JEI pode usar:

- o inventário do jogador
- o conteúdo do DeepNull segurado

Os alvos suportados incluem:

- a grade de fabricação `2x2` do jogador
- bancadas de trabalho vanilla
- menus de fabricação de mods compatíveis com uma matriz de fabricação normal

## Estação de Acoplagem

A estação de acoplagem expõe:

- armazenamento de itens
- armazenamento de fluidos
- armazenamento de energia
- armazenamento de produtos químicos quando a Melhoria de Produto Químico está instalada

Isso a torna útil com canos, barramentos de armazenamento, tanques e outros sistemas padrão de automação do NeoForge.

## Páginas Relacionadas

- [Config e Configurações](config-and-settings.md)
- [Estação de Acoplagem](docking-station.md)
