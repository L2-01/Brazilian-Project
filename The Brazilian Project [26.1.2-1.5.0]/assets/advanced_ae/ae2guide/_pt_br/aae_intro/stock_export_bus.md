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
atualmente presente no inventário-alvo e não insere acima desse número. Para configurá-lo, abra a GUI, arraste
o item desejado para o espaço de filtro e, usando o botão do meio, você pode configurar a quantidade. Note que ele não
regulará a saída, o que significa que não extrairá itens/fluidos extras do inventário se passarem da quantidade configurada.
