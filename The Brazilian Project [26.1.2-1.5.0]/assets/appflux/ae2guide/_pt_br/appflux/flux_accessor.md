---
navigation:
  parent: appflux/appflux-index.md
  title: Acessor de Fluxo
  icon: appflux:flux_accessor
categories:
- flux accessor
item_ids:
- appflux:flux_accessor
- appflux:part_flux_accessor
---

# Acessor de Fluxo

<Row>
<BlockImage id="appflux:flux_accessor" scale="8"></BlockImage>
<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/flux_accessor.snbt"></ImportStructure>
</GameScene>
</Row>

O Acessor de Fluxo pode enviar/receber a energia armazenada na sua rede ME. Por padrão, eles não têm limitações de E/S, o que pode ser
alterado na configuração do Appflux.

Eles têm modo rápido e normal. No modo rápido, o acessor envia energia a cada tique, o que pode causar lag se for muito usado.
No modo normal, ele envia energia conforme a energia armazenada do alvo, o que não causa problemas de lag.

* Atenção: a "energia" mencionada aqui é o FE armazenado nas suas [Células de Armazenamento de FE](./flux_cells.md), não a energia das
[Células de Energia](ae2:items-blocks-machines/energy_cells.md).
