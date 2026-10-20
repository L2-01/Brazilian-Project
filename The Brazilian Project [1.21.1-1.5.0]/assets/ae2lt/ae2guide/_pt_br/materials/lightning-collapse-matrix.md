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

A **Matriz de Colapso de Raios** é um dos componentes-chave de nível final do AE2 Lightning Tech. Ela não é um consumível — em vez disso, age como um **catalisador de substituição / paralelismo**. Manter uma matriz no espaço de matriz de uma máquina desbloqueia o modo de operação de nível superior daquela máquina.

`Uma liga de alta resistência comprime e confina raios imensos numa forma estável; sua forma de onda é a inversa da volátil TNT de Sobrecarga.`

~~Talvez essas energias possam se neutralizar mutuamente?~~

## Como Obter

### Fabricação na Câmara de Simulação de Raios

| Material | Quantidade |
|----------|--------|
| Cristal Eletrosonoro Perfeito | 1 |
| Núcleo de Sobrecarga Ultimate | 16 |
| **Raios de Altíssima Tensão** | 128 |
| Energia | 50.000.000 AE |

Como o custo já é alto, normalmente você agenda isso junto com o trabalho da sua Fábrica de Processamento de Sobrecarga e da Câmara de Montagem de Raios.

## Como Catalisador de Máquina

A Matriz de Colapso de Raios **não é consumida** durante o processamento, mas precisa permanecer no espaço de matriz:

* [Câmara de Simulação de Raios](../machines/lightning-simulation-chamber.md) / [Câmara de Montagem de Raios](../machines/lightning-assembly-chamber.md) — com uma matriz instalada, algumas receitas que normalmente exigiriam **Raios de Altíssima Tensão** podem ser atendidas consumindo várias vezes a quantidade de **Raios de Alta Tensão**.
* [Bobina de Tesla](../lightning/tesla-coil.md) — o modo de Altíssima Tensão exige uma matriz no espaço; sem ela, HV não pode ser convertido em EHV.
* [Catalisador de Cristais](../machines/crystal-catalyzer.md) — se aplica tanto ao Modo Cristal quanto ao Modo Pó; com uma matriz instalada, a saída por operação pós-paralelismo aumenta para **4×**.
* [Fábrica de Processamento de Sobrecarga](../machines/overload-processing-factory.md) — paralelismo multimatríz: cada matriz adicional desbloqueia mais um nível de paralelismo (até 32 matrizes no espaço, 8 operações paralelas por matriz por padrão).

## Notas de Campo

> Uma equipe de campo certa vez registrou um relatório de experimento adicional: quando a matriz é **larga no mundo**, uma reação não intencional pode ocorrer; o caso em que essa reação foi acesa está registrado na página da [TNT de Sobrecarga](../lightning/overload-tnt.md).

O produto é uma célula não registrada que pode ser colocada num <ItemLink id="ae2:drive" /> para decodificação. Ela só pode ser lida uma vez e não pode ser gravada. O relatório diz que os padrões decodificados são distribuídos de forma extremamente irregular. Após muitos experimentos, a equipe compilou um relatório especial.
