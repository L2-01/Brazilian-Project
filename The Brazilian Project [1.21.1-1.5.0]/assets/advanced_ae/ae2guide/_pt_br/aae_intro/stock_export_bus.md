---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Ponto de Exportação de Estoque
  icon: advanced_ae:stock_export_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:stock_export_bus_part
---

# Ponto de Exportação de Estoque

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_stock_export_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Exportação de Estoque pode ser configurado para exportar uma quantidade exata das pilhas filtradas. Ele acompanha a quantidade
atualmente presente no inventário-alvo e não insere acima desse número. Para configurá-lo, você abre a GUI, arrasta
o item desejado para o espaço de filtro e, com um clique do meio, configura a quantidade. Note que ele não
regula a saída, ou seja, não extrai itens/fluidos extras do inventário se eles passarem da quantidade
configurada.
