---
navigation:
  parent: ae2trafficmonitor:index.md
  title: Filtros de Pulso
  icon: ae2:network_tool
  position: 40
---

# Filtros de Pulso

A aba Filtros da tela da [Ferramenta de Rede](ae2:items-blocks-machines/network_tool.md) decide quais pulsos uma rede mostra. Todos que abrem a tela veem as mesmas configurações.

## Quem pode alterá-las

O dono da rede. Isso é o dono do seu Controlador ME ou, se não houver dono do Controlador, o id de jogador mais baixo entre seus dispositivos. Uma rede sem dono é aberta a todos. Todos os demais veem os controles esmaecidos.

## Tipos

Cada tipo que a AE2 armazena tem um interruptor e uma cor. Um tipo desligado não envia pulsos. Cores e efeitos estão em [Cores dos Pulsos](pulse_colours.md).

## Tags

A lista de tags restringe o que os tipos ligados desenham. Digite uma tag com ou sem o `#`, como `c:ingots` ou `minecraft:logs`, e pressione Adicionar. Conforme você digita, o campo sugere tags do jogo. Uma lista comporta até 16.

O botão de modo alterna entre dois modos:

- **Mostrar apenas** desenha somente as coisas que carregam uma das tags.
- **Ocultar** desenha todo o resto.

Sem tags significa sem filtro. Um tipo desligado permanece desligado, digam as tags o que disserem. Itens correspondem a tags de itens e fluidos a tags de fluidos. Um tipo sem tags próprias, como químicos, conta como não carregando nenhuma, então Mostrar apenas o exclui e Ocultar o mantém.

Os números de [Tráfego](traffic.md) ainda contam tudo que se move, filtrado ou não.
