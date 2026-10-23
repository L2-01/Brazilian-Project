---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Envasadora ME
    icon: extendedae:caner
categories:
- extended devices
item_ids:
- extendedae:caner
---

# Envasadora ME

<BlockImage id="extendedae:caner" scale="8"></BlockImage>

A Envasadora ME é uma máquina para "envasar" materiais, incluindo fluidos, gás do Mekanism, mana do Botania e até energia!

O primeiro espaço guarda o material de enchimento, e o segundo espaço guarda o item a ser enchido.

Ela precisa de energia para rodar, e cada operação custa 80 AE.

![GUI](../pic/caner_gui.png)

Por padrão, ela só enche fluidos; instale o addon correspondente para fazê-la encher outros materiais.

### Addons suportados:
- Applied Flux
- Applied Mekanistics
- Applied Botanics Addon

## Fabricação automática com a Envasadora ME

Só os lados de cima e de baixo aceitam energia e conexão com a rede.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_example.snbt"></ImportStructure>
</GameScene>

Uma configuração simples para a Envasadora ME. A Envasadora ME ejeta automaticamente o item enchido quando recebe ingredientes de um <ItemLink id="ae2:pattern_provider" />.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_auto.snbt"></ImportStructure>
</GameScene>

O padrão precisa conter apenas o material de enchimento e o recipiente a ser enchido. Aqui vão alguns exemplos:

Encher um balde de água:

![P1](../pic/fill_water.png)

Fortalecer a Tablete de Energia (requer Applied Flux):

![P1](../pic/fill_energy.png)


## Desenvasamento

A Envasadora ME também pode drenar materiais de um recipiente no modo Esvaziamento. Você precisa trocar as entradas e saídas no padrão.
