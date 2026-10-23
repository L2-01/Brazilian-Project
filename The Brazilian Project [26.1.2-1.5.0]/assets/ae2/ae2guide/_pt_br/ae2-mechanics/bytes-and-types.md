---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Bytes e Tipos
  icon: creative_storage_cell
---

# Bytes e Tipos

<Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

As [células de armazenamento](../items-blocks-machines/storage_cells.md) são definidas por *bytes* e *tipos*. Bytes, como no
seu computador de verdade, medem a quantidade total de "coisas" numa célula de armazenamento. Tipos medem quantos, bem,
*tipos* diferentes de coisas estão guardados numa célula. Cada tipo representa um item único, então 4.096 pedregulhos são 1 tipo, mas 16
espadas diferentes com encantamentos diferentes são 16 tipos.

Cada célula de armazenamento pode guardar uma quantidade fixa
de dados. Cada tipo consome uma quantidade de bytes de entrada (que varia com o tamanho da célula),
e cada item consome um bit de armazenamento, então oito itens consomem um
byte e um monte cheio de 64 consome 8 bytes, independentemente de como o item
empilharia fora de uma rede ME. Por exemplo, 64 selas idênticas não
ocupam mais espaço que 64 pedras.

De novo: cada item é 1 bit, então 8 itens equivalem a 1 byte. Para células de fluido, são 8 baldes por byte.

Muita gente reclama do número limitado de tipos que uma célula pode guardar, mas é uma ***limitação necessária***.
As células guardam seus dados numa tag NBT no próprio item, o que as torna bem estáveis. Porém, isso significa que colocar dados
demais numa célula pode fazer dados demais serem enviados ao jogador, causando um efeito parecido com o "Book Banning" do minecraft vanilla.
Além disso, ter tipos demais no sistema aumenta a carga na ordenação e no manuseio de itens. Ainda assim, essa
limitação acaba não sendo tão restritiva. Um <ItemLink id="drive" /> cheio de células comporta 630 tipos, o que é bastante coisa,
desde que você não armazene montes de itens únicos que não empilham.

Por isso, os tipos existem para "desencorajar firmemente" que você despeje as centenas de peças de armadura e ferramentas danificadas aleatoriamente de
uma farm de mobs direto no seu sistema ME. Cada peça de armadura com dano e encantamentos únicos precisa ser armazenada como uma entrada separada,
causando inchaço. Recomenda-se filtrá-las do fluxo de itens antes que encostem no seu sistema.

Correr direto para as células de armazenamento de nível máximo geralmente não é a melhor ideia,
já que você gasta mais recursos mas não ganha armazenamento de tipos extra. Isso significa que todos os tamanhos de célula continuam úteis mesmo
no fim de jogo, pois têm seus prós e contras.

Abaixo há uma tabela comparando os diferentes níveis de células de armazenamento, quanto armazenam e
uma estimativa aproximada do seu custo.

## Conteúdo das Células de Armazenamento vs Custo

| Célula                                   |   Bytes | Tipos | Bytes por Tipo | Certus | Redstone | Ouro | Pedra Luminosa |
| ---------------------------------------- | ------: | ----: | -------------: | -----: | -------: | ---: | --------: |
| <ItemLink id="item_storage_cell_1k" />   |   1,024 |    63 |              8 |      4 |        5 |    1 |         0 |
| <ItemLink id="item_storage_cell_4k" />   |   4,096 |    63 |             32 |  14.25 |       20 |    3 |         0 |
| <ItemLink id="item_storage_cell_16k" />  |  16,384 |    63 |            128 |     45 |       61 |    9 |         4 |
| <ItemLink id="item_storage_cell_64k" />  |  65,536 |    63 |            512 | 137.25 |      184 |   27 |        16 |
| <ItemLink id="item_storage_cell_256k" /> | 262,144 |    63 |           2048 |    414 |      553 |   81 |        48 |

## Capacidade de Armazenamento com Contagens de Tipos Variadas

O custo inicial dos tipos é tal que uma célula com 1 tipo pode guardar o dobro de uma célula com todos os 63 tipos em uso.

| Célula                                   | Capacidade Total da Célula com 1 Tipo em Uso | Capacidade Total da Célula com 63 Tipos em Uso |
| ---------------------------------------- | ----------------------------------------: | ------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                     8,128 |                                       4,160 |
| <ItemLink id="item_storage_cell_4k" />   |                                    32,512 |                                      16,640 |
| <ItemLink id="item_storage_cell_16k" />  |                                   130,048 |                                      66,560 |
| <ItemLink id="item_storage_cell_64k" />  |                                   520,192 |                                     266,240 |
| <ItemLink id="item_storage_cell_256k" /> |                                 2,080,768 |                                   1,064,960 |

![Uma Célula com 1 Tipo](../assets/diagrams/1_type_cell.png)

![Uma Célula com 63 Tipos](../assets/diagrams/63_type_cell.png)
