---
navigation:
  parent: introduction/index.md
  title: Super Cortador de Circuitos
  position: 10
  icon: extendedae_plus:circuit_cutter_plus
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:circuit_cutter_plus
---

# Super Cortador de Circuitos

<BlockImage id="extendedae_plus:circuit_cutter_plus" scale="5" />

O **Super Cortador de Circuitos** é um cortador de circuitos acelerado que processa até **8 cópias** de uma receita de corte em cada ciclo.

## Operação

- Insira a entrada da receita no espaço de entrada.
- Cada ciclo determina automaticamente uma contagem paralela de 1 a 8 conforme a entrada disponível e o espaço de saída.
- Entradas e energia AE são consumidas a cada operação paralela, e todos os resultados são combinados no espaço de saída.
- Quando o espaço de saída é limitado, apenas o número de receitas que couber será processado.

## Energia e Melhorias

A máquina armazena **64.000 AE** e suporta até 4 Cartões de Aceleração do AE2. Os Cartões de Aceleração reduzem o tempo por ciclo sem alterar o limite paralelo de 8 receitas.

Ative a **Exportação Automática** na interface da máquina para enviar os produtos prontos aos inventários adjacentes.
