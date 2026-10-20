---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Âncora Espacial
  icon: spatial_anchor
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:spatial_anchor
---

# A Âncora Espacial

<BlockImage id="spatial_anchor" p:powered="true" scale="8"/>

Uma rede AE2 precisa ter seus chunks carregados para que qualquer um dos seus [dispositivos](../ae2-mechanics/devices.md) consiga funcionar,
e se apenas parte da rede estiver carregada, ela pode não funcionar corretamente.
A Âncora Espacial resolve este problema. Ela força o carregamento dos chunks que sua rede ocupa.
Um único cabo atravessando uma fronteira de chunk é suficiente para carregar aquele novo chunk.

Ela propagará seu "carregamento" através de [pontes quânticas](quantum_bridge.md), mas não entre dimensões, então se você
tiver uma ponte quântica para o Nether, você precisa de uma âncora espacial na rede na sua base e na rede no Nether.

Por padrão, ela também habilitará tiques aleatórios nos seus chunks carregados, mas isso pode ser desligado na config do AE2.

Ela pode ser girada com uma <ItemLink id="certus_quartz_wrench" />, se você quiser fazer isso por algum motivo.

## Configurações

*   A âncora espacial dá acesso à configuração global de ver energia em AE ou E/FE.
*   Um holograma no mundo pode ser exibido mostrando os chunks sendo carregados.

## Energia

A âncora espacial usará [energia](../ae2-mechanics/energy.md) de acordo com esta equação:

e = 80 + (x\*(x+1))/2

onde x é o número de chunks sendo carregados

## Receita

<RecipeFor id="spatial_anchor" />
