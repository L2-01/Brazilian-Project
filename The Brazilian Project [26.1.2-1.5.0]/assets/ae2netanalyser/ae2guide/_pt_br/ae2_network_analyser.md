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

Você já sofreu para descobrir qual dispositivo da sua rede ME está offline? Ou só quer ver como sua rede
está funcionando? Aqui está o Analisador de Rede ME!

## O que está acontecendo na minha rede ME?

Clique em qualquer bloco, cabo ou dispositivo conectado à rede ME e você verá a situação de cada dispositivo e como eles se conectam
uns aos outros.

![visão geral](./pic/showoff.png)

Cores e formas diferentes representam situações diferentes.
- Cubo azul: dispositivos ME normais, têm canais suficientes e podem passar 8 canais.
- Cubo amarelo: dispositivos ME densos, têm canais suficientes e podem passar 32 canais.
- Cubo vermelho: dispositivos ME offline, não têm canais suficientes.
- Conexão azul: esta conexão comporta no máximo 8 canais.
- Conexão amarela: esta conexão comporta no máximo 32 canais.
- Conexão rosa: é uma conexão ME P2P.
- Números: a quantidade de canais transportada por esta conexão.

Note que o número máximo de canais depende do seu Modo de Canais ME. O analisador não exibe números de canais quando
o modo Canal Infinito está ativado.

## Exibição Personalizada

Você pode alterar o modo de análise e as cores na GUI de configuração.

![gui](./pic/gui.png)

O Analisador de Rede ME tem 5 modos.
- Completo: exibe todas as situações da rede.
- Nós: exibe apenas a situação dos nós.
- Conexões: exibe apenas a situação das conexões.
- Sem Número: não exibe os números de canais.
- P2P: exibe apenas as conexões ME P2P.

Você também pode alterar a cor de nós ou conexões.

![gui2](./pic/color.png)
