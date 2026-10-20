---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Ponto de Armazenamento ME por Marcador
    icon: expatternprovider:tag_storage_bus
categories:
- extended devices
item_ids:
- expatternprovider:tag_storage_bus
---

# Ponto de Armazenamento ME por Marcador

<GameScene zoom="8" background="transparent">
  <ImportStructure src="../structure/cable_tag_storage_bus.snbt"></ImportStructure>
</GameScene>

O Ponto de Armazenamento ME por Marcador é um <ItemLink id="ae2:storage_bus" /> que pode ser filtrado por marcadores de itens ou fluidos e suporta alguns operadores lógicos básicos.

Aqui estão alguns exemplos:

- Aceitar apenas minério bruto

forge:raw_materials/*

- Aceitar todos os lingotes e gemas

forge:ingots/* | forge:gems/*
