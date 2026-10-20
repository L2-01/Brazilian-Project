---
navigation:
  title: Gaiola de Cristal
  icon: iska_utils:crystal_cage
  parent: hubs/tools_and_scanner.md
  position: 60
item_ids:
  - iska_utils:crystal_cage
categories:
  - Ferramentas úteis
---
# Gaiola de Cristal

<ItemImage id="iska_utils:crystal_cage" />

Um contêiner de criaturas reutilizável.

## Capturando uma criatura

Clique direito em qualquer entidade viva não-jogador segurando uma Gaiola de Cristal **vazia**.
A criatura é armazenada dentro do item e a textura da gaiola muda para mostrar que está cheia.
A dica exibirá o nome da criatura capturada.

## Largando uma criatura

**Clique direito numa face de bloco** — a criatura gera no bloco adjacente. Clicar no ar não faz nada (a gaiola continua cheia).

A gaiola volta ao estado vazio assim que a criatura é larga.

## Geradores

Uma Gaiola de Cristal **cheia** usada num <ItemImage id="minecraft:spawner" /> **Gerador**, <ItemImage id="minecraft:trial_spawner" /> **Gerador de Provação** ou <ItemImage id="iska_utils:entropic_spawner" /> **Gerador Entropizado** funciona como um ovo gerador: define o tipo de geração para a criatura capturada e esvazia a gaiola (no modo criativo ela permanece cheia).


## Placa Armadilha da Gaiola de Cristal

Uma Gaiola de Cristal vazia também pode ser usada para converter uma <ItemImage id="iska_utils:plate_base_block" /> **Base de Placa** colocada numa <ItemImage id="iska_utils:crystal_cage_trap_plate" /> **Placa Armadilha da Gaiola de Cristal** clicando direito nela. A primeira criatura viva que pisar na placa é capturada numa Gaiola de Cristal que é largada ali, e a placa volta a ser uma Base de Placa.