---
navigation:
  title: Conversor de Energia
  icon: nautec:energy_converter
  position: 1
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:energy_converter
  - nautec:creative_power_source
  - nautec:creative_energy_source
  - nautec:energy_conversion_upgrade
  - nautec:advanced_energy_conversion_upgrade
  - nautec:ultimate_energy_conversion_upgrade
---

# <Color id="light_purple">Conversor de Energia</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="energy_converter" scale="2"/>
  Transforma Forge Energy (FE) de outros mods num feixe de laser.
</Column>

A conversão só vai num sentido: FE entra, AP sai.

***

## <Color id="gold">Usando-o</Color>

Empurre FE por qualquer lado com um cabo ou gerador de outro mod. Ele armazena até 4.000.000 FE (`energyConverterFeCapacity` em `config/nautec-common.toml`).

Cada 10 FE viram 1 AP (`energyConverterFePerAp`). O conversor dispara seu feixe por todo lado que tenha um receptor de laser em linha, até 16 blocos de distância. Os AP são divididos igualmente entre os receptores conectados, arredondando para baixo, então 150 AP em dois receptores dão 75 AP cada e em quatro dão 37. Ele só gasta FE enquanto pelo menos um receptor estiver conectado, então um conversor sem nada para alimentar guarda seu buffer.

Clique nele com o botão direito para definir a taxa de transmissão: os AP que ele envia por tique. Os botões avançam de 1 ou 10, de 10 ou 100 com Shift segurado, e de 100 ou 1.000 com Ctrl segurado. A tela mostra os FE por tique que a taxa custa, então reduza-a para corresponder ao que seus geradores fornecem e o feixe fica estável em vez de cortar quando o buffer seca. Uma taxa de 0 o desliga.

***

## <Color id="gold">Melhorias</Color>

Um conversor sem melhorias envia até 150 AP por tique. Sua tela tem três slots de melhoria, um para cada nível, e cada slot aceita até 8 melhorias do próprio nível:

| Melhoria | Adiciona por melhoria | 8 delas adicionam |
|---|---|---|
| <ItemLink id="energy_conversion_upgrade"/> | 150 AP/t | 1.200 AP/t |
| <ItemLink id="advanced_energy_conversion_upgrade"/> | 500 AP/t | 4.000 AP/t |
| <ItemLink id="ultimate_energy_conversion_upgrade"/> | 1.500 AP/t | 12.000 AP/t |

Os três slots cheios dão 17.350 AP por tique, o que queima 173.500 FE por tique. Tirar melhorias reduz a taxa para o novo limite.

<Recipe id="nautec:energy_conversion_upgrade"/>
<Recipe id="nautec:advanced_energy_conversion_upgrade"/>
<Recipe id="nautec:ultimate_energy_conversion_upgrade"/>

***

## <Color id="gold">Pureza</Color>

Seu feixe tem pureza 0. Isso roda o [Misturador](mixer.md), o [Dreno do Mar Profundo](drain.md), o [Carregador](charger.md) e qualquer Transformação de Itens que não precise de pureza. Uma Lente de Focalização não consegue elevá-la, já que uma lente só adiciona pureza a um feixe que já tenha alguma.

Para obter energia pura a partir de FE, funda o feixe do conversor com uma fonte pura no mesmo bloco, como uma [Junção de Laser](laser_manipulation.md). Feixes fundidos ficam perto da pureza do mais puro: um feixe de Cristal de Prismarinho a 3.0 unido a um feixe de conversor sai a cerca de 2.6 com a potência dos dois. Veja [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) para as fontes puras.

<Recipe id="nautec:energy_converter"/>

***

<Row>
  <ItemImage id="creative_power_source"/>
  ### <Color id="aqua">Fonte de Energia Criativa</Color>
</Row>

Uma fonte de laser exclusiva do modo criativo para testar construções. Não precisa de combustível e envia 100 AP por tique com pureza 0, divididos igualmente entre todo lado que tenha um receptor em linha. Está na aba criativa do NauTec.

***

<Row>
  <ItemImage id="creative_energy_source"/>
  ### <Color id="aqua">Fonte de Energia Criativa</Color>
</Row>

Um suprimento infinito de FE para testar um Conversor de Energia. Ela não empurra energia para fora, então conecte-a com um cabo que puxe dela. Está na aba criativa do NauTec.