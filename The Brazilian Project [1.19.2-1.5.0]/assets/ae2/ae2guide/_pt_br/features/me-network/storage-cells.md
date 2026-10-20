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

Células de Armazenamento são uma das mecânicas centrais de armazenamento no Applied Energistics
2; existem três tipos: uma para itens, uma para fluidos e uma para regiões do
espaço.

## Células de Armazenamento de Itens

Células de armazenamento de itens podem conter até 63 tipos distintos de itens; o
número de itens que conseguem armazenar depende em parte de quantos tipos estão
contidos e da capacidade de armazenamento delas.

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

Células de armazenamento de fluidos podem conter até 5 tipos distintos de fluidos; o
volume de fluido que conseguem armazenar depende em parte de quantos tipos estão
contidos e da capacidade de armazenamento delas.

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

Células de armazenamento têm limites de tamanho e limites
de tipos, e você ainda precisa considerar o uso de recursos das suas células para
decidir quais são as melhores opções. Cada célula de armazenamento pode guardar uma quantidade
fixa de dados. Cada tipo consome um número de bytes (que varia com o
tamanho da célula), e cada item consome um bit de armazenamento, então oito itens consomem um
byte, e uma pilha cheia de 64 consome 8 bytes, independentemente de como o item
empilharia fora de uma rede ME. Por exemplo, 64 selas idênticas não
ocupam mais espaço que 64 pedras.

Ir direto para as células de armazenamento de maior nível geralmente não é a melhor ideia,
já que você gasta mais recursos, mas não ganha armazenamento extra de tipos.

Abaixo está uma tabela comparando os diferentes níveis de células de armazenamento, quanto elas armazenam e
uma estimativa aproximada do custo delas.

### Conteúdo da Célula de Armazenamento Vs Custo

| Célula                                  |  Bytes | Tipos | Byte/Tipo | Q-Certus | Q-Nether | Ouro | Diamantes |
|-----------------------------------------|-------:|------:|----------:|---------:|---------:|-----:|----------:|
| <ItemLink id="item_storage_cell_1k" />  |  1,024 |    63 |         8 |        5 |        5 |    1 |         0 |
| <ItemLink id="item_storage_cell_4k" />  |  4,096 |    63 |        32 |       17 |        5 |    3 |         0 |
| <ItemLink id="item_storage_cell_16k" /> | 16,384 |    63 |       128 |       51 |       10 |    9 |         1 |
| <ItemLink id="item_storage_cell_64k" /> | 65,536 |    63 |       512 |      153 |       20 |   27 |         4 |

### Capacidade de Armazenamento com Contagem Variável de Tipos

| Célula                                  | Pilhas de itens Com 1 Item na Célula | Pilhas de itens Com 63 Itens na Célula |
|-----------------------------------------|-------------------------------------:|-------------------------------------:|
| <ItemLink id="item_storage_cell_1k" />  |                                  127 |                                   65 |
| <ItemLink id="item_storage_cell_4k" />  |                                  508 |                                  260 |
| <ItemLink id="item_storage_cell_16k" /> |                                2,032 |                                1,040 |
| <ItemLink id="item_storage_cell_64k" /> |                                8,128 |                                4,160 |

## Armazenamento Espacial

Células de armazenamento para E/S espacial vêm em três tamanhos.

<ItemGrid>
  <ItemIcon id="spatial_storage_cell_2" />
  <ItemIcon id="spatial_storage_cell_16" />
  <ItemIcon id="spatial_storage_cell_128" />
</ItemGrid>
