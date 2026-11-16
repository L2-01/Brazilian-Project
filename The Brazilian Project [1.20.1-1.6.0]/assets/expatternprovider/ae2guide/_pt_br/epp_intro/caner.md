---
navigation:
    parent: epp_intro/epp_intro-index.md
    title: Envasadora ME
    icon: expatternprovider:caner
categories:
- extended devices
item_ids:
- expatternprovider:caner
---

# Envasadora ME

<BlockImage id="expatternprovider:caner" scale="8"></BlockImage>

A Envasadora ME é uma máquina que envasa recursos, incluindo fluidos, gás do Mekanism, mana do Botania e até energia!

O primeiro espaço é para o que encher, e o segundo espaço é para o que deve ser enchido.

Ele precisa de energia para funcionar e cada operação custa 80 AE.

![GUI](../pic/caner_gui.png)

Por padrão ele só enche fluidos. Você precisa instalar o addon correspondente para fazê-lo encher outros recursos.

### Addons Suportados:
- Applied Flux
- Applied Mekanistics
- Applied Botanics Addon

## Autofabricação com a Envasadora ME

Apenas os lados de cima e de baixo podem aceitar energia e se conectar à rede.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_example.snbt"></ImportStructure>
</GameScene>

Uma configuração simples para a Envasadora ME. A Envasadora ME ejeta automaticamente o item enchido quando aceita os ingredientes do <ItemLink id="ae2:pattern_provider" />.

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../structure/caner_auto.snbt"></ImportStructure>
</GameScene>

O padrão deve conter apenas o recurso com que encher e o recipiente a ser enchido. Aqui estão alguns exemplos:

Encher um balde de água:

![P1](../pic/fill_water.png)

Carregar um Tablet de Energia (requer Applied Flux):

![P1](../pic/fill_energy.png)


## Desenvasar

A Envasadora ME também pode drenar recursos de recipientes no modo Esvaziamento. Você precisa trocar as entradas e saídas no padrão.
