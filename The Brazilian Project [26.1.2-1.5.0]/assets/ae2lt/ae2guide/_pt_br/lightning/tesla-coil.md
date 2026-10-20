---
navigation:
  title: Bobina de Tesla
  icon: ae2lt:tesla_coil
  parent: lightning/lightning-index.md
item_ids:
  - ae2lt:tesla_coil
---

# Bobina de Tesla

<Row>
  <BlockImage id="ae2lt:tesla_coil" scale="4" />
</Row>

A **Bobina de Tesla** é o dispositivo central para produção de Raios controlada e estável. Ela não depende do clima — produz Raios sob demanda consumindo FE e materiais.

## Dois Modos de Operação

A GUI da Bobina de Tesla permite alternar entre dois modos.

### Modo Alta Tensão

* **Entrada**: Pó de Cristal de Sobrecarga + FE
* **Saída**: Raio de Alta Tensão (injetado na rede ME)
* **Custo padrão**: 2 Pós de Cristal de Sobrecarga + 25.000 FE por 1 Raio de AT produzido

O modo Alta Tensão suporta processamento em lote. A bobina trava a quantidade total de pó de cristal disponível no seu espaço de entrada e a margem de Raios de AT restante na rede ME, então produz esse lote inteiro num ciclo de carga.

### Modo Altíssima Tensão

* **Entrada**: Raio de Alta Tensão (puxado da rede ME) + FE, e uma **Matriz de Colapso de Raios** precisa estar instalada
* **Saída**: Raio de Altíssima Tensão (injetado na rede ME)
* **Custo padrão**: 8 Raios de AT + 500.000 FE por 1 Raio de RAT produzido
* Cada ciclo de carga produz exatamente 1 Raio de RAT. A matriz não é consumida.

## Fluxo de Operação

1. Selecione um modo na GUI
2. Prepare os materiais — modo AT: coloque Pó de Cristal de Sobrecarga no espaço; modo RAT: verifique se a matriz está instalada e se a rede tem Raios de AT suficientes
3. Forneça FE (a bobina tem um buffer interno de 16.000.000 FE e aceita até 200.000 FE/tique)
4. A bobina trava o modo e começa a carregar (cerca de 5 tiques)
5. Quando a carga completa, a saída é injetada na rede ME num lote

## Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O modo Altíssima Tensão exige uma **Matriz de Colapso de Raios** no espaço de matriz da bobina. A matriz **não é consumida** durante o processamento, mas precisa permanecer no espaço.
