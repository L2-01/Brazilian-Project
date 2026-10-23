---
navigation:
    parent: ae2:items-blocks-machines/items-blocks-machines-index.md
    icon: ae2netanalyser:network_analyser
    title: Analisador de Rede ME
categories:
- tools
item_ids:
- ae2netanalyser:network_analyser
---

# Analisar a Rede ME

<ItemImage id="ae2netanalyser:network_analyser" scale="4"></ItemImage>

Já sofreu para descobrir qual dispositivo da sua rede ME está offline? Ou só quer ver como a sua rede
está funcionando? Aqui está o Analisador de Rede ME!

## O que está acontecendo na minha rede ME?

Clique em qualquer bloco, cabo ou dispositivo conectado à rede ME e você verá o status de cada dispositivo e como eles se conectam
entre si.

![visão geral](./pic/showoff.png)

Cores e formas diferentes representam status diferentes.
- Cubo azul: dispositivos ME normais, têm canais suficientes e podem passar 8 canais.
- Cubo amarelo: dispositivos ME densos, têm canais suficientes e podem passar 32 canais.
- Cubo vermelho: dispositivos ME offline, não têm canais suficientes.
- Ligação azul: esta ligação suporta no máximo 8 canais.
- Ligação amarela: esta ligação suporta no máximo 32 canais.
- Ligação rosa: é uma ligação ME P2P.
- Números: a quantidade de canais transportada por esta ligação.

Note que o número máximo de canais depende do seu Modo de Canais ME. O analisador não mostra números de canais quando
o modo de Canais Infinitos está ativado.

## Exibição Personalizada

Você pode mudar o modo de análise e as cores na GUI de configuração.

![gui](./pic/gui.png)

O Analisador de Rede ME tem 5 modos.
- Full: exibe todo o status da rede.
- Nodes: exibe apenas o status dos nós.
- Links: exibe apenas o status das ligações.
- No Number: não exibe números de canais.
- P2P: exibe apenas ligações ME P2P.

Você também pode mudar a cor de nós ou ligações.

![gui2](./pic/color.png)
