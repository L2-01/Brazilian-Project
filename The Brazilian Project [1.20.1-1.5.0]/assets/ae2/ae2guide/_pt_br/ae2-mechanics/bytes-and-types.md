---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Bytes e Tipos
  icon: creative_item_cell
---

# Bytes e Tipos

<Row>
    <ItemImage id="item_storage_cell_1k" scale="4" />

    <ItemImage id="item_storage_cell_4k" scale="4" />

    <ItemImage id="item_storage_cell_16k" scale="4" />

    <ItemImage id="item_storage_cell_64k" scale="4" />

    <ItemImage id="item_storage_cell_256k" scale="4" />
  </Row>

As [Células de Armazenamento](../items-blocks-machines/storage_cells.md) são definidas tanto por *bytes* quanto por *tipos*. Bytes, como no
seu computador de verdade, são uma medida da quantidade total de "coisas" numa célula de armazenamento. Tipos são uma medida de quantos,
bem, *tipos* diferentes de coisas estão armazenados numa célula. Cada tipo representa um item único, então 4.096 pedregulhos são 1 tipo, mas 16
espadas diferentes com encantamentos diferentes são 16 tipos.

Cada célula de armazenamento pode guardar uma quantidade fixa
de dados. Cada tipo consome um número de bytes de antemão (que varia com o
tamanho da célula), e cada item consome um bit de armazenamento, então oito itens consomem um
byte, e uma pilha cheia de 64 consome 8 bytes, independentemente de como o item
empilharia fora de uma rede ME. Por exemplo, 64 selas idênticas não
ocupam mais espaço que 64 pedras.

De novo, cada item é 1 bit, então 8 itens equivalem a 1 byte. Para células de fluido, são 8 baldes por byte.

Muitas pessoas reclamam do número limitado de tipos que uma célula pode conter, mas eles são uma ***limitação necessária***.
Células armazenam seus dados numa tag NBT no próprio item, o que as torna bastante estáveis. No entanto, isso significa que colocar dados
demais numa célula pode causar o envio de dados demais a um jogador, causando um efeito semelhante ao "Book Banning" do Minecraft vanilla.
Além disso, ter tipos diferentes demais no seu sistema aumenta a carga de ordenação e manuseio de itens. Porém, essa
limitação acaba não sendo muito restritiva. Um compartimento de <ItemLink id="drive" /> cheio de células são 630 tipos, o que na verdade é
bastante coisa, desde que você não armazene montes de itens únicos não empilháveis.

Por essa razão, os tipos existem para "desencorajar firmemente" você de despejar as centenas de armaduras e ferramentas danificadas
aleatoriamente de uma fazenda de criaturas diretamente no seu sistema ME. Cada peça de armadura com dano e encantamentos únicos tem que ser
armazenada como uma entrada separada, causando inchaço. É recomendado filtrá-las do fluxo de itens antes que toquem seu sistema.

Ir direto atrás das células de armazenamento de nível máximo geralmente não é a melhor ideia,
já que você usa mais recursos sem ganhar armazenamento extra de tipos. Isso significa que todos os tamanhos de célula continuam úteis mesmo
no fim do jogo, pois têm compensações.

Abaixo está uma tabela comparando os diferentes níveis de células de armazenamento, quanto elas armazenam e
uma estimativa aproximada do custo delas.

## Conteúdo da Célula de Armazenamento Vs Custo

| Célula                                   |   Bytes | Tipos | Bytes por Tipo | Certus | Redstone | Ouro | Pedra-Luminosa |
| ---------------------------------------- | ------: | ----: | -------------: | -----: | -------: | ---: | -------------: |
| <ItemLink id="item_storage_cell_1k" />   |   1.024 |    63 |              8 |      4 |        5 |    1 |              0 |
| <ItemLink id="item_storage_cell_4k" />   |   4.096 |    63 |             32 |  14,25 |       20 |    3 |              0 |
| <ItemLink id="item_storage_cell_16k" />  |  16.384 |    63 |            128 |     45 |       61 |    9 |              4 |
| <ItemLink id="item_storage_cell_64k" />  |  65.536 |    63 |            512 | 137,25 |      184 |   27 |             16 |
| <ItemLink id="item_storage_cell_256k" /> | 262.144 |    63 |           2048 |    414 |      553 |   81 |             48 |

## Capacidade de Armazenamento com Número Variável de Tipos

O custo inicial dos tipos é tal que uma célula com 1 tipo pode guardar 2x mais que uma célula com todos os 63 tipos em uso.

| Célula                                   | Capacidade Total da Célula com 1 Tipo em Uso | Capacidade Total da Célula com 63 Tipos em Uso |
| ---------------------------------------- | -----------------------------------------: | -------------------------------------------: |
| <ItemLink id="item_storage_cell_1k" />   |                                      8.128 |                                        4.160 |
| <ItemLink id="item_storage_cell_4k" />   |                                     32.512 |                                       16.640 |
| <ItemLink id="item_storage_cell_16k" />  |                                    130.048 |                                       66.560 |
| <ItemLink id="item_storage_cell_64k" />  |                                    520.192 |                                      266.240 |
| <ItemLink id="item_storage_cell_256k" /> |                                  2.080.768 |                                    1.064.960 |

![A Cell With 1 Type](../assets/diagrams/1_type_cell.png)

![A Cell With 63 Types](../assets/diagrams/63_type_cell.png)
