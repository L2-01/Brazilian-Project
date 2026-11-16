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
4. A bobina trava o modo e começa a carregar (cerca de 5 tiques)
5. Quando a carga completa, a saída é injetada na rede ME num único lote

## Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O modo de Altíssima Tensão exige uma **Matriz de Colapso de Raios** no slot de matriz da bobina. A matriz **não é consumida** durante o processamento, mas deve permanecer no slot.

## Controle de Redstone

O painel de melhoria aceita um Cartão de Redstone do AE2. Com o cartão instalado, o botão da barra de ferramentas alterna entre **Ignorar Redstone**, **Ativo com Sinal** e **Ativo sem Sinal**. Sem cartão, a operação automática não muda. O modo de pulso não é suportado.

- Para limitar o estoque de saída, configure um Emissor de Nível ME para sinalizar quando a saída atingir sua condição de parada e selecione Ativo sem Sinal na máquina.
- Para preservar o estoque de entrada, monitore o recurso consumido, sinalize enquanto houver o suficiente e selecione Ativo com Sinal.

Uma parada de redstone preserva a receita atual e o progresso pago, pausando energia de processamento, consumo de materiais e nova saída. O processamento é retomado quando permitido. A automação ainda pode remover itens existentes. O emissor mede apenas o inventário de sua própria rede ME; exporte os produtos da máquina para essa rede para controle do estoque de saída.

Este é um portão de sinal: um lote de saída, um débito de entrada ou máquinas concorrentes podem cruzar um limiar. Deixe espaço para uma operação completa ao proteger uma reserva de entrada e reduza o tamanho do lote quando for preciso um limite de saída mais restrito.

Qualquer metade da Bobina de Tesla pode receber o sinal de controle.
