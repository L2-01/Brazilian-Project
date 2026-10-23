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

Uma rede do AE2 precisa estar carregada para que qualquer um de seus [dispositivos](../ae2-mechanics/devices.md) funcione,
e, se só parte da rede estiver carregada, ela pode não funcionar corretamente.
A Âncora Espacial resolve esse problema: ela força o carregamento dos chunks que sua rede ocupa.
Um único cabo cruzando uma borda de chunk já é suficiente para carregar o novo chunk.

Ela propaga seu "carregamento" através de [pontes quânticas](quantum_bridge.md), mas não entre dimensões, então se você
tiver uma ponte quântica para o nether, precisará de uma âncora espacial na rede da sua base e na rede do nether.

Por padrão, ela também ativa ticks aleatórios nos seus chunks carregados; isso pode ser desligado na configuração do AE2.

Ela pode ser girada com uma <ItemLink id="certus_quartz_wrench" /> se por algum motivo você quiser fazer isso.

## Configurações

*   A âncora espacial dá acesso à configuração global de exibir energia em AE ou E/FE.
*   Um holograma no mundo pode ser exibido mostrando os chunks sendo carregados.

## Energia

A âncora espacial usará [energia](../ae2-mechanics/energy.md) de acordo com esta equação:

e = 80 + (x\*(x+1))/2

onde x é o número de chunks sendo carregados

## Receita

<RecipeFor id="spatial_anchor" />
