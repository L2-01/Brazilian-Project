---
navigation:
  title: Altar Flamejante
  icon: iska_utils:blazing_altar
  parent: hubs/combat_and_travel.md
  position: 23
item_ids:
  - iska_utils:blazing_altar
categories:
  - Combat and travel
---
# Altar Flamejante

<ItemImage id="iska_utils:blazing_altar" />

## Visão geral

Controlador de área para colocação de **Chama Ardente** / **Chama Ardente Amaldiçoada** e bloqueio opcional de **spawns naturais**. Funciona apenas em chunks **já carregados** (não carrega chunks).

## O que faz

- Se você **não** inserir um **Braseiro Ardente** nem uma **Vela Arcana**, o altar **impede o spawn natural de criaturas** na sua área (conforme o filtro de spawn e a redstone).
- Insira um **Braseiro Ardente** ou uma **Vela Arcana** para também colocar automaticamente as chamas correspondentes (**Chama Ardente** / **Chama Ardente Amaldiçoada**) no raio de chunks.
- Com um Braseiro, a durabilidade restante **diminui** a cada colocação, mas o item **nunca** quebra (limitado para não esgotar por completo).

## GUI

- **Filtro de spawn**: Desligado / Todos / Hostil / Passivo — afeta apenas spawns `NATURAL` de criaturas na área.
- **Raio de chunks** (Chebyshev): tamanho da área para chamas e filtro de spawn.
- **Somente no chão**: chamas apenas sobre solo sólido (ativado por padrão). Com o chão desligado, chamas podem ser colocadas no ar livre.
- **Blocos sensíveis à luz**: cogumelos, solo entrópico e terra horrenda precisam ficar na escuridão no bloco e no espaço acima — colocações de chama que os iluminariam são rejeitadas.
- **Visão de Chamas**: alternância global do cliente para ver os blocos de chama do mod (também alternada com clique esquerdo no ar ou num braseiro/vela).
- **Mostrar**: pilares de canto marcando os chunks extremos da área de cobertura.
- **Redstone**: por padrão **ignorada** (sempre ativo). Os outros modos seguem as máquinas da fábrica (sem pulso).
- **Apagar / quebrar**: remover chamas varre a área progressivamente para que raios grandes não travem o servidor. Quebrar o altar também agenda a limpeza das chamas no alcance. Apagar pode restaurar a durabilidade do Braseiro quando as chamas são removidas.

## Módulos

- Slot de **Módulo de Alcance**: cada módulo aumenta o **raio de chunks** do altar (cobertura para chamas e filtro de spawn).

Veja **Módulos** → **Módulo de Alcance**.

## Visibilidade

Os blocos **Chama Ardente** e **Chama Ardente Amaldiçoada** ficam ocultos no cliente a menos que a **Visão de Chamas** esteja ativada (GUI, ou clique esquerdo no ar / num braseiro ou vela).
