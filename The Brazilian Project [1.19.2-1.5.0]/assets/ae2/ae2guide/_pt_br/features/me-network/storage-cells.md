---
navigation:
  title: Células de Armazenamento
  icon: item_storage_cell_64k
item_ids:
  - ae2:fluid_storage_cell_1k
  - ae2:fluid_storage_cell_4k
  - ae2:fluid_storage_cell_16k
  - ae2:fluid_storage_cell_64k
---

As Células de Armazenamento são uma das mecânicas centrais de armazenamento do Applied Energistics
2; existem três tipos: uma para itens, uma para fluidos e uma para regiões do
espaço.

## Células de Armazenamento de Itens

As células de armazenamento de itens comportam até 63 tipos distintos de itens; a
quantidade de itens que armazenam depende em parte de quantos tipos estão
guardando e da sua capacidade de armazenamento.

<ItemGrid>
  <ItemIcon id="item_storage_cell_1k" />
  <ItemIcon id="item_storage_cell_4k" />
  <ItemIcon id="item_storage_cell_16k" />
  <ItemIcon id="item_storage_cell_64k" />
</ItemGrid>

### Armazenamento Portátil de Itens

<ItemGrid>
  <ItemIcon id="portable_item_cell_1k" />
  <ItemIcon id="portable_item_cell_4k" />
  <ItemIcon id="portable_item_cell_16k" />
  <ItemIcon id="portable_item_cell_64k" />
</ItemGrid>

## Células de Armazenamento de Fluidos

As células de armazenamento de fluidos comportam até 5 tipos distintos de fluidos; o
volume de fluido armazenado depende em parte de quantos tipos estão
guardando e da sua capacidade.

<ItemGrid>
  <ItemIcon id="fluid_storage_cell_1k" />
  <ItemIcon id="fluid_storage_cell_4k" />
  <ItemIcon id="fluid_storage_cell_16k" />
  <ItemIcon id="fluid_storage_cell_64k" />
</ItemGrid>

### Armazenamento Portátil de Fluidos

<ItemGrid>
  <ItemIcon id="portable_fluid_cell_1k" />
  <ItemIcon id="portable_fluid_cell_4k" />
  <ItemIcon id="portable_fluid_cell_16k" />
  <ItemIcon id="portable_fluid_cell_64k" />
</ItemGrid>

## Limites de Capacidade

As células de armazenamento têm limites de tamanho e limites
de tipos, e você precisa considerar o consumo de recursos das suas células para
decidir quais são suas melhores opções. Cada célula de armazenamento guarda uma quantidade fixa
de dados. Cada tipo consome um número de bytes (que varia com o tamanho da célula)
e cada item consome um bit de armazenamento — então oito itens consomem um
byte e um pacote completo de 64 consome 8 bytes, independente de como o item
empilharia fora de uma rede ME. Por exemplo, 64 selas idênticas não
ocupam mais espaço que 64 pedras.

Ir direto às células de armazenamento de nível mais alto geralmente não é a melhor ideia,
já que você gasta mais recursos sem ganhar armazenamento extra de tipos.

Abaixo há uma tabela comparando os diferentes níveis de células de armazenamento, quanto armazenam e
uma estimativa aproximada do custo.

### Conteúdo da Célula de Armazenamento vs Custo

| Célula                                  |  Bytes | Tipos | Byte/Tipo | Quartzo-C | Quartzo-N | Ouro | Diamantes |
|-----------------------------------------|-------:|------:|----------:|----------:|----------:|-----:|----------:|
| <ItemLink id="item_storage_cell_1k" />  |  1.024 |    63 |         8 |         5 |         5 |    1 |         0 |
| <ItemLink id="item_storage_cell_4k" />  |  4.096 |    63 |        32 |        17 |         5 |    3 |         0 |
| <ItemLink id="item_storage_cell_16k" /> | 16.384 |    63 |       128 |        51 |        10 |    9 |         1 |
| <ItemLink id="item_storage_cell_64k" /> | 65.536 |    63 |       512 |       153 |        20 |   27 |         4 |

### Capacidade de Armazenamento com Diferentes Quantidades de Tipos

| Célula                                  | Pacotes de itens com 1 Tipo na Célula | Pacotes de itens com 63 Tipos na Célula |
|-----------------------------------------|--------------------------------------:|----------------------------------------:|
| <ItemLink id="item_storage_cell_1k" />  |                                   127 |                                      65 |
| <ItemLink id="item_storage_cell_4k" />  |                                   508 |                                     260 |
| <ItemLink id="item_storage_cell_16k" /> |                                 2.032 |                                   1.040 |
| <ItemLink id="item_storage_cell_64k" /> |                                 8.128 |                                   4.160 |

## Armazenamento Espacial

As células de armazenamento para IO espacial vêm em três tamanhos.

<ItemGrid>
  <ItemIcon id="spatial_storage_cell_2" />
  <ItemIcon id="spatial_storage_cell_16" />
  <ItemIcon id="spatial_storage_cell_128" />
</ItemGrid>
