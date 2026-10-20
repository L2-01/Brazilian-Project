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

A Envasadora ME é uma máquina que envasa vários recursos, incluindo fluidos, gases do Mekanism, mana do Botania e até energia!

O primeiro espaço guarda o recurso de enchimento, e o segundo guarda o recipiente a ser enchido.

Ela precisa de energia para funcionar, e cada operação custa 80 AE.

![GUI](../pic/caner_gui.png)

Por padrão, ela só envasa fluidos. Você precisa instalar o add-on correspondente para fazer ela envasar outros recursos.

## Add-ons Suportados

- Applied Flux
- Applied Mekanistics
- Applied Botanics Addon

## Autocrafting com a Envasadora ME

Apenas os lados superior e inferior podem aceitar energia e se conectar à rede.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_example.snbt"></ImportStructure>
</GameScene>

Uma configuração simples para a Envasadora ME. A Envasadora ME ejeta automaticamente o item enchido quando recebe os ingredientes de um <ItemLink id="ae2:pattern_provider" />.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_auto.snbt"></ImportStructure>
</GameScene>

O padrão deve conter apenas o recurso usado para encher e o recipiente a ser enchido. Aqui estão alguns exemplos:

Encher um balde de água:

![P1](../pic/fill_water.png)

Carregar uma Tablete de Energia (requer Applied Flux):

![P1](../pic/fill_energy.png)


## Desenvasando

A Envasadora ME também pode drenar recursos de um recipiente no modo Esvaziar. Você precisa trocar as entradas e saídas no padrão.
