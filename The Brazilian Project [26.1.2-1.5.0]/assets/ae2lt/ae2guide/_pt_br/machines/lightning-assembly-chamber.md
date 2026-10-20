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

A **Câmara de Montagem de Raios** lida com receitas avançadas com contagens de entrada maiores. Onde a Câmara de Simulação de Raios tem 3 espaços de entrada, a Câmara de Montagem tem 9 — o que a torna bem adequada a tarefas de montagem complexas que precisam de muitos materiais diferentes de uma vez.

## Espaços e Capacidade

| Espaço | Capacidade | Notas |
|------|----------|-------|
| Entrada × 9 | 8.192 | Alimente os materiais; a ordem dos espaços não importa |
| Matriz × 1 | 1 | Matriz de Colapso de Raios opcional |
| Saída × 1 | 8.192 | Saída processada; escrita apenas pela máquina |
| Espaços de Cartão de Velocidade | — | Até 4 Cartões de Velocidade do AE2 |

## Fluxo de Operação

1. Coloque os ingredientes nos 9 espaços de entrada
2. A máquina casa as entradas atuais contra as receitas registradas
3. Uma vez que uma receita casa e a rede ME tem Raios e FE suficientes, a máquina trava a receita e começa a processar
4. Raios (AT ou RAT, dependendo da receita) e FE são consumidos durante o processamento
5. A saída vai para o espaço de saída quando o processamento termina

## Comparada à Câmara de Simulação de Raios

| Recurso | Câmara de Simulação | Câmara de Montagem |
|---------|-----------------|------------------|
| Espaços de entrada | 3 | 9 |
| Pilha máxima por espaço | 8.192 | 8.192 |
| Uso pretendido | Conversão simples | Montagem complexa de vários materiais |
| Substituição de matriz | Suportada | Suportada |
| Cartões de Velocidade | Até 4 | Até 4 |

## Substituição de Matriz

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Assim como a Câmara de Simulação, a Câmara de Montagem suporta **substituição de matriz**. Com uma **Matriz de Colapso de Raios** instalada, algumas receitas que normalmente exigiriam **Raio de Altíssima Tensão** podem ser cumpridas consumindo várias vezes a quantidade de **Raio de Alta Tensão** em vez disso.

## Exportação Automática

Com a Exportação Automática ligada, as saídas concluídas são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.
