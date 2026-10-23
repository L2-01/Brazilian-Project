---
navigation:
  title: Óptica de Feixes
  icon: nautec:focusing_lens
  position: 0
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:focusing_lens
---

# <Color id="light_purple">Óptica de Feixes</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="focusing_lens" scale="2"/>
  Pureza, e a lente que a aumenta.
</Column>

Um <ItemLink id="prismarine_laser_relay"/> passa um feixe adiante em linha reta e uma <ItemLink id="laser_junction"/> o vira, funde e divide, e nenhum dos dois muda sua pureza (veja [Movendo Energia de Laser](nautec:laser_chemistry/laser_manipulation.md)). Receitas checam a pureza antes de rodar, então planeje sua fonte em torno da pureza que a máquina no final precisa.

***

## <Color id="gold">Pureza</Color>

A pureza é definida pela fonte. Fundir feixes a reduz um pouco, e uma Lente de Focalização a aumenta.

| Fonte | Pureza |
|---|---|
| <ItemLink id="aquatic_catalyst"/> com Fragmentos de Prismarinho | 0.4 |
| Catalisador Aquático com Cristais de Prismarinho | 0.8 |
| Catalisador Aquático com Fragmentos de Cristal de Prismarinho | 1.2 |
| <ItemLink id="bacterial_fuel_cell"/> | até 2.5 |
| <ItemLink id="prismarine_crystal"/>, atingido de lado | 3.0 |

Cada bloco de Drusa de Prismarinho encostando num Catalisador Aquático adiciona 0.1 à pureza de seu feixe, até 2.0. Veja [Energia de Laser](nautec:getting_started/laser_power.md).

As máquinas desta seção precisam destas purezas:

| Produto | Máquina | Pureza |
|---|---|---|
| Cristal de Prismarinho Impecável | [Forja de Pressão Abissal](pressure_forge.md) | 2.0 |
| Lingote de Ouro Atlântico | Forja de Pressão Abissal | 2.0 |
| Revestimento de Aço Profundo | Forja de Pressão Abissal | 2.5 |
| Fragmento Ressonante | [Câmara de Ressonância](resonance_chamber.md) | 3.0 |
| Semente de Cristal de Prismarinho | Câmara de Ressonância | 3.0 |

Quando dois ou mais feixes alimentam o mesmo bloco, suas potências se somam e sua pureza fica próxima à do feixe mais puro. O resultado é a maior pureza menos um quarto da distância entre ela e a média de todos (`beamMergePurityDrop`), então um feixe de 3.0 fundido com um de 0 sai em cerca de 2.6.

***

<Row>
  <ItemImage id="focusing_lens"/>
  ### <Color id="aqua">Lente de Focalização</Color>
</Row>

Aumenta em 0.5 a pureza de um feixe que a atravessa em linha reta (`lensPurityBonus`), até o limite de 2.0. Coloque-a olhando na direção em que o feixe viaja: a face virada para você recebe o feixe, a face oposta o envia adiante, até 16 blocos (`laserDistance`). A potência passa inalterada, e ela pode ser colocada debaixo d'água.

A lente só adiciona pureza a um feixe que já tenha alguma, então ponha-a depois de uma fonte funcionando. Um feixe a 1.8 sai a 2.0, e um feixe já a 2.0 ou maior passa inalterado, então uma fileira de lentes estagna em 2.0. Use duas em sequência para elevar um catalisador de Fragmento de Cristal de Prismarinho (1.2) aos 2.0 que a Forja de Pressão precisa para Cristais de Prismarinho Impecáveis. Para 2.5 e 3.0, use uma Célula de Combustível Bacteriana ou um Cristal de Prismarinho como fonte.

<Recipe id="nautec:focusing_lens"/>
