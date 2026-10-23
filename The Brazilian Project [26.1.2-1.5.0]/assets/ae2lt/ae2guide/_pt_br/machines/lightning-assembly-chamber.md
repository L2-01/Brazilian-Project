---
navigation:
  title: Câmara de Montagem de Raios
  icon: ae2lt:lightning_assembly_chamber
  parent: machines/machines-index.md
item_ids:
  - ae2lt:lightning_assembly_chamber
---

# Câmara de Montagem de Raios

<Row>
  <BlockImage id="ae2lt:lightning_assembly_chamber" scale="4" />
</Row>

A **Câmara de Montagem de Raios** cuida de receitas avançadas com maiores contagens de entradas. Onde a Câmara de Simulação de Raios tem 3 slots de entrada, a Câmara de Montagem tem 9 — o que a torna ideal para tarefas de montagem complexas que precisam de muitos materiais diferentes de uma vez.

## Slots e Capacidade

| Slot | Capacidade | Notas |
|------|----------|-------|
| Entrada × 9 | 8.192 | Alimente os materiais; a ordem dos slots não importa |
| Matriz × 1 | 1 | Matriz de Colapso de Raios opcional |
| Saída × 1 | 8.192 | Saída processada; escrita apenas pela máquina |
| Slots de Cartão de Aceleração | — | Até 4 Cartões de Aceleração do AE2 |

## Fluxo de Operação

1. Coloque os ingredientes nos 9 slots de entrada
2. A máquina casa as entradas atuais com as receitas registradas
3. Quando uma receita casa e a rede ME tem Raios e FE suficientes, a máquina trava a receita e começa a processar
4. Raios (HV ou EHV, conforme a receita) e FE são consumidos durante o processamento
5. A saída vai para o slot de saída quando o processamento termina

## Comparada à Câmara de Simulação de Raios

| Recurso | Câmara de Simulação | Câmara de Montagem |
|---------|-----------------|------------------|
| Slots de entrada | 3 | 9 |
| Pilha máx. por slot | 8.192 | 8.192 |
| Uso pretendido | Conversão simples | Montagem complexa multi-material |
| Substituição por matriz | Suportada | Suportada |
| Cartões de Aceleração | Até 4 | Até 4 |

## Substituição por Matriz

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Como a Câmara de Simulação, a Câmara de Montagem suporta **substituição por matriz**. Com uma **Matriz de Colapso de Raios** instalada, algumas receitas que normalmente exigiriam **Raio de Altíssima Tensão** podem ser atendidas consumindo várias vezes a quantidade de **Raio de Alta Tensão**.

## Exportação Automática

Com a Exportação Automática habilitada, saídas prontas são empurradas automaticamente para recipientes adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.
