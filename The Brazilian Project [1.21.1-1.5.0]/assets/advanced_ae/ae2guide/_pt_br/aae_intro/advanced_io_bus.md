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
as funções dos dois pais. Além disso, a velocidade base do Ponto de E/S Avançado é 8 vezes maior que a velocidade
base de um <ItemLink id="ae2:export_bus"/>. Ele leva um tempo para ganhar velocidade, mas fica extremamente rápido
quando totalmente melhorado.

## Exportando

O Ponto de E/S Avançado exporta conforme seu filtro, até uma quantidade fixa, e para ali. No lado esquerdo da UI
há também uma configuração que permite ao usuário optar por regular o estoque de itens.

## Importando

O Ponto de E/S Avançado também importa qualquer coisa que não esteja filtrada para exportação. As operações de
importação e exportação são contadas separadamente, então o barramento não fica preso fazendo uma ou outra. Quando o
barramento está configurado para regular, ele prioriza importar qualquer coisa acima da quantidade definida. Se sobrar
alguma operação, ele importa o que não está filtrado.

<RecipeFor id="advanced_ae:advanced_io_bus_part"/>
