---
navigation:
    parent: ae2:items-blocks-machines/items-blocks-machines-index.md
    icon: ae2netanalyser:tick_analyser
    title: Profiler de Tiques ME
categories:
- tools
item_ids:
- ae2netanalyser:tick_analyser
---

# Gerar Perfil de Taxa de Tiques ME

<ItemImage id="ae2netanalyser:tick_analyser" scale="4"></ItemImage>

Às vezes seu jogo pode ficar lento quando você tem uma rede ME muito grande, mas é meio difícil localizar na rede
a origem da lentidão. Agora você pode descobrir o que está pesado facilmente com o Profiler de Tiques ME.

## O que deixa seu jogo lento?

Alguns dispositivos AE executam seu trabalho durante o tique do jogo. O Profiler de Tiques ME pode medir o tempo (μs/tique) que eles precisam para concluir
seu trabalho e visualiza os números no mundo, o que ajuda você a descobrir quem leva mais tempo.

**Você precisa de permissão de operador para usá-lo em servidor multiplayer, para evitar abuso.**

![visão geral](./pic/tick_rate.png)

A cor indica o nível de lentidão do bloco. Quanto mais vermelho, mais pesado.

O número indica a taxa de tiques do bloco. Seu jogo ficará lento se o TPS (tiques por segundo) ficar abaixo de 20.
Em outras palavras, a taxa de tiques do jogo deve sempre ficar abaixo de 50000 μs/tique.

De modo geral, a taxa de tiques da maioria dos blocos deve ficar abaixo de 100 μs/tique, caso contrário podem causar lentidão.

## Exibição Personalizada

Você pode controlar a exibição no mundo das diferentes taxas de tiques na GUI de configuração.

![gui](./pic/gui2.png)

O ponto verde representa a exibição dos blocos dentro da faixa de taxa de tiques correspondente. Clique no ponto para ativar/desativar a
exibição.
