---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Ponto de E/S Avançado
  icon: advanced_ae:advanced_io_bus_part
categories:
  - advanced items
item_ids:
  - advanced_ae:advanced_io_bus_part
---

# Ponto de E/S Avançado

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_advanced_io_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de E/S Avançado é uma ferramenta muito poderosa para interagir com inventários externos. Ele é criado fundindo um
<ItemLink id="advanced_ae:import_export_bus_part"/> e um <ItemLink id="advanced_ae:stock_export_bus_part"/>. Ele herda
as funções de ambos os seus pais. Além disso, a velocidade base do Ponto de E/S Avançado é 8 vezes maior que a velocidade base
de um <ItemLink id="ae2:export_bus"/>. Ele leva algum tempo para ganhar velocidade, mas fica incrivelmente rápido
quando totalmente melhorado.

## Exportando

O Ponto de E/S Avançado exportará de acordo com seu filtro, até uma quantidade fixa, e parará aí. No lado esquerdo da UI
há também uma configuração que permite ao usuário escolher regular o estoque de itens.

## Importando

O Ponto de E/S Avançado também importará qualquer coisa que não esteja filtrada para exportação. As operações de importação e
exportação são contadas separadamente, então o ponto não ficará preso fazendo uma ou outra. Quando o ponto está configurado para regular, ele
priorizará importar qualquer coisa que esteja acima da quantidade definida. Se sobrar alguma operação, ele importará o que não estiver filtrado.

<RecipeFor id="advanced_ae:advanced_io_bus_part"/>
