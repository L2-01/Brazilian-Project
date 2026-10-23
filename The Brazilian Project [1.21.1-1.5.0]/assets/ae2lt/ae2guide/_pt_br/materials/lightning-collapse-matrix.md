---
navigation:
  title: Matriz de Colapso de Raios
  icon: ae2lt:lightning_collapse_matrix
  parent: materials/materials-index.md
  position: 60
item_ids:
  - ae2lt:lightning_collapse_matrix
---

# Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

A **Matriz de Colapso de Raios** é um dos componentes-chave de tier final do AE2 Lightning Tech. Ela não é um consumível — em vez disso, atua como um **catalisador de substituição / paralelismo**. Manter uma matriz no slot de matriz de uma máquina desbloqueia o modo de operação de tier superior da máquina.

`Uma liga de alta resistência comprime e confina raios imensos em uma forma estável; sua forma de onda é a inversa da volátil TNT de Sobrecarga.`

~~Talvez essas energias possam se neutralizar?~~

## Como Obter

### Fabricação na Câmara de Simulação de Raios

| Material | Quantidade |
|----------|--------|
| Cristal Eletrosonoro Perfeito | 1 |
| Núcleo de Sobrecarga Supremo | 16 |
| **Raio de Altíssima Tensão** | 128 |
| Energia | 50.000.000 AE |

Como o custo já é alto, você normalmente programa isso junto com seus trabalhos na Fábrica de Processamento de Sobrecarga e na Câmara de Montagem de Raios.

## Como Catalisador de Máquina

A Matriz de Colapso de Raios **não é consumida** durante o processamento, mas deve permanecer no slot de matriz:

* [Câmara de Simulação de Raios](../machines/lightning-simulation-chamber.md) / [Câmara de Montagem de Raios](../machines/lightning-assembly-chamber.md) — com uma matriz instalada, algumas receitas que normalmente exigiriam **Raio de Altíssima Tensão** podem ser atendidas consumindo várias vezes a quantidade de **Raio de Alta Tensão**.
* [Bobina de Tesla](../lightning/tesla-coil.md) — o modo de Altíssima Tensão exige uma matriz no slot; sem ela, HV não pode ser convertido em EHV.
* [Catalisador de Cristais](../machines/crystal-catalyzer.md) — aplica-se tanto no Modo Cristal quanto no Modo Pó; com uma matriz instalada, a saída por operação pós-paralelo é aumentada para **4×**.
* [Fábrica de Processamento de Sobrecarga](../machines/overload-processing-factory.md) — paralelismo multi-matriz: cada matriz adicional desbloqueia outro tier de paralelismo (até 32 matrizes no slot, 8 operações paralelas por matriz por padrão).

## Notas de Campo

> Uma equipe de campo certa vez registrou um relatório de experimento adicional: quando a matriz é **jogada no mundo**, uma reação não intencional pode ocorrer; o caso em que essa reação foi detonada está registrado na página da [TNT de Sobrecarga](../lightning/overload-tnt.md).

O produto é uma célula não registrada que pode ser colocada num <ItemLink id="ae2:drive" /> para decodificação. Ela só pode ser lida uma vez e não aceita escrita. O relatório diz que os padrões decodificados são distribuídos de forma extremamente irregular. Após muitos experimentos, a equipe compilou um relatório especial.
