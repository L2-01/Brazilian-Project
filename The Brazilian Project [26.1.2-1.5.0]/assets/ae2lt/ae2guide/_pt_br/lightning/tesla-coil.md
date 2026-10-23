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

A **Bobina de Tesla** é o dispositivo central para a produção controlada e estável de Raios. Ela não depende do clima — produz Raios sob demanda consumindo FE e materiais.

## Dois Modos de Operação

A GUI da Bobina de Tesla permite alternar entre dois modos.

### Modo de Alta Tensão

* **Entrada**: Pó de Cristal de Sobrecarga + FE
* **Saída**: Raio de Alta Tensão (injetado na rede ME)
* **Custo padrão**: 2 Pó de Cristal de Sobrecarga + 25.000 FE por 1 Raio HV produzido

O modo de Alta Tensão suporta processamento em lote. A bobina trava a quantidade total de pó de cristal disponível no seu slot de entrada e o espaço livre de Raios HV na rede ME, então produz todo o lote num único ciclo de carga.

### Modo de Altíssima Tensão

* **Entrada**: Raio de Alta Tensão (puxado da rede ME) + FE, e uma **Matriz de Colapso de Raios** deve estar instalada
* **Saída**: Raio de Altíssima Tensão (injetado na rede ME)
* **Custo padrão**: 8 Raios HV + 500.000 FE por 1 Raio EHV produzido
* Cada ciclo de carga produz exatamente 1 Raio EHV. A matriz não é consumida.

## Fluxo de Operação

1. Selecione um modo na GUI
2. Prepare os materiais — modo HV: coloque Pó de Cristal de Sobrecarga no slot; modo EHV: verifique se a matriz está instalada e se a rede tem Raios HV suficientes
3. Forneça FE (a bobina tem um buffer interno de 16.000.000 FE e aceita até 200.000 FE/tick)
4. A bobina trava o modo e começa a carregar (cerca de 5 ticks)
5. Quando a carga completa, a saída é injetada na rede ME num único lote

## Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O modo de Altíssima Tensão exige uma **Matriz de Colapso de Raios** no slot de matriz da bobina. A matriz **não é consumida** durante o processamento, mas deve permanecer no slot.
