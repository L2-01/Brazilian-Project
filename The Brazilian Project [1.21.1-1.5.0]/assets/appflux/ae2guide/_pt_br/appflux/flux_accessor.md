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

O Acessor de Fluxo pode inserir/extrair energia armazenada na sua rede ME. Eles não têm limitações de E/S por padrão, o que pode ser
alterado na configuração do Appflux.

Eles têm modo rápido e normal. No modo rápido, ele envia energia a cada tique, o que pode causar lag se for muito usado.
No modo normal, ele envia energia dependendo da energia armazenada do alvo, o que não causa problemas de lag.

* Observação: a "energia" mencionada aqui é a FE armazenada nas suas [Células de Armazenamento FE](./flux_cells.md), não a energia das
[Células de Energia](ae2:items-blocks-machines/energy_cells.md).
