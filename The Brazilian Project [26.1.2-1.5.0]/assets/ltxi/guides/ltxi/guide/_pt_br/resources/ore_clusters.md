---
navigation:
    title: Aglomerados de Minério
    position: 1
    icon: raw_titanium_cluster
    parent: resources/index.md
---

# Aglomerados de Minério

## Sobre

Às vezes, os níveis de deposição mineral são altos o bastante para criar grandes pedaços de minério bruto grudados em
superfícies sólidas. As condições para isso acontecer são bem mais restritas, e o perfil de localização dos pedaços de
minério pode até ser completamente desencontrado.

## Geração Natural

<GameScene zoom={2} interactive={true}>
<Block id="minecraft:basalt" x="0" />
<Block id="minecraft:stone" x="1" />
<Block id="minecraft:purpur_block" x="2" />
<Block id="raw_titanium_cluster" x="0" y="1" />
<Block id="raw_silver_cluster" x="1" y="1" />
<Block id="raw_niobium_cluster" x="2" y="1" />

</GameScene>

Inconvenientemente, os aglomerados de minério bruto surgem em locais bem mais perigosos que seus equivalentes normais.

### Titânio

- Local: Deltas de basalto, Nether
- Faixa de altura: Qualquer
- Restrições: Apenas em faces de bloco de *topo* firmes

### Prata

- Local: Minas abandonadas
- Faixa de altura: Da base do mundo até Y=64

### Nióbio

- Local: Cidades do End
- Faixa de altura: Y=50-150

## Mineração

Aglomerados de minério seguem os mesmos requisitos de mineração do seu equivalente normal. Aglomerados dropam 3-5
itens de minério bruto, que **não** são afetados por Fortuna. Aglomerados dropam a si mesmos se minerados com
<Color id="light_purple">Toque Suave</Color>. Itens de Aglomerado de Minério podem ser processados no
[Moedor](../machines/processing/grinder.md), que sempre produz 5 itens de minério bruto.
