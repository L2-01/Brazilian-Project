---
navigation:
  parent: ae2trafficmonitor:index.md
  title: Tráfego
  icon: ae2:network_tool
  position: 30
---

# Tráfego

A aba Tráfego da tela da [Ferramenta de Rede](ae2:items-blocks-machines/network_tool.md) mostra quanto se moveu por uma rede. Clicar com o botão direito num Farejador ME abre a mesma lista.

## A lista

Há uma linha para cada tipo que a AE2 armazena, itens e fluidos e o que um addon adicionar. Uma linha mostra o nome do tipo em sua cor, a quantidade movida por minuto, uma seta de tendência e um pequeno gráfico do último minuto. Fluidos contam em baldes.

A seta compara os últimos 30 segundos com os 30 anteriores. Aponta para cima ou para baixo quando diferem em mais de 10%, e fica reta caso contrário. Passe o cursor sobre o gráfico para ler a quantidade e sua idade naquele ponto.

## O que conta

Os números são uma média do último minuto. Uma rede que só conta há 20 segundos calcula a média sobre esses 20. Unir duas redes ou dividir uma reinicia a contagem.

Um tipo desligado em [Filtros de Pulso](pulse_filters.md) ainda conta, e sua linha fica esmaecida. Uma rede sem Farejador também conta. O filtro de tags não muda os números.

Qualquer um que possa abrir a tela vê a lista, e ela é somente leitura.
