---
navigation:
    title: Aglomerados de Minério
    position: 1
    icon: raw_titanium_cluster
    parent: resources/index.md
---

# Aglomerados de Minério

## Sobre

Às vezes, os níveis de deposição mineral são altos o suficiente para criar grandes porções de minério bruto presas a superfícies sólidas. As
condições para isso ocorrer são muito mais restritas, e o perfil de localização das porções minerais pode ser até
totalmente incompatível.

## Geração Natural

<GameScene zoom={2} interactive={true}>
<Block id="minecraft:basalt" x="0" />
<Block id="minecraft:stone" x="1" />
<Block id="minecraft:purpur_block" x="2" />
<Block id="raw_titanium_cluster" x="0" y="1" />
<Block id="raw_silver_cluster" x="1" y="1" />
<Block id="raw_niobium_cluster" x="2" y="1" />

</GameScene>

Inconvenientemente, aglomerados de minério bruto surgem em locais muito mais perigosos que seus equivalentes normais.

### Titânio

- Localização: Deltas de Basalto, Nether
- Faixa de Altura: Qualquer
- Restrições: Somente em faces *superiores* de blocos resistentes

### Prata

- Localização: Minas abandonadas
- Faixa de Altura: Fundo do mundo até Y=64

### Nióbio

- Localização: Cidades do End
- Faixa de Altura: Y=50-150

## Mineração

Aglomerados de minério seguem os mesmos requisitos de mineração do seu equivalente normal. Aglomerados largam 3-5 itens de minério bruto, que
**não** são afetados por Fortuna. Aglomerados largam a si mesmos se minerados com <Color id="light_purple">Toque Suave</Color>.
Itens de Aglomerado de Minério podem ser processados no [Moedor](../machines/processing/grinder.md), que sempre produzirá 5 itens de minério bruto.