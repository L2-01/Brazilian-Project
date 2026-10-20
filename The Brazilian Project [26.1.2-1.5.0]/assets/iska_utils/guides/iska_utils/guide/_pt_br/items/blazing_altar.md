---
navigation:
  title: Altar Flamejante
  icon: iska_utils:blazing_altar
  parent: hubs/combat_and_travel.md
  position: 23
item_ids:
  - iska_utils:blazing_altar
categories:
  - Combate e viagem
---
# Altar Flamejante

<ItemImage id="iska_utils:blazing_altar" />

## Visão geral

Controlador de área para colocação de **Chama Ardente** / **Chama Ardente Amaldiçoada** e bloqueio opcional de **geração natural**. Funciona apenas em chunks **já carregados** (não carrega chunks).

## O que faz

- Se você **não** inserir um **Braseiro Ardente** ou uma **Vela Arcana**, o altar **impede a geração natural de criaturas** na sua área (conforme o filtro de geração e a redstone).
- Insira um **Braseiro Ardente** ou uma **Vela Arcana** para também colocar automaticamente as chamas correspondentes (**Chama Ardente** / **Chama Ardente Amaldiçoada**) no raio de chunks.
- Com um Braseiro, a durabilidade restante **diminui** a cada colocação, mas o item **nunca** quebra (limitado para não esgotar totalmente).

## GUI

- **Filtro de geração**: Desligado / Todas / Hostis / Passivas — afeta apenas gerações `NATURAL` de criaturas na área.
- **Raio de chunks** (Chebyshev): tamanho da área para chamas e filtro de geração.
- **Somente no chão**: chamas apenas em cima de chão sólido (padrão ligado). Com isso desligado, chamas podem ser colocadas a céu aberto.
- **Blocos sensíveis à luz**: cogumelos, solo entrópico e terra temível devem ficar na escuridão no bloco e no espaço acima dele — colocações de chama que os iluminariam são rejeitadas.
- **Visão de Chamas**: alternância global do cliente para ver os blocos de chama do mod (também alternada com clique esquerdo no ar ou num braseiro/vela).
- **Mostrar**: pilares de canto marcando os chunks extremos da área de cobertura.
- **Redstone**: padrão **ignorada** (sempre ativo). Outros modos seguem as máquinas de fábrica (sem pulso).
- **Apagar / quebrar**: remover chamas varre a área progressivamente para que raios grandes não congelem o servidor. Quebrar o altar também agenda a limpeza das chamas no alcance. Apagar pode restaurar a durabilidade do Braseiro quando chamas são removidas.

## Módulos

- Espaço de **Módulo de Alcance**: cada módulo aumenta o **raio de chunks** do altar (cobertura para chamas e filtro de geração).

Veja **Módulos** → **Módulo de Alcance**.

## Visibilidade

Blocos de **Chama Ardente** e **Chama Ardente Amaldiçoada** ficam ocultos no cliente a menos que a **Visão de Chamas** esteja ativada (GUI, ou clique esquerdo no ar / num braseiro ou vela).