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

A **Câmara de Montagem de Raios** cuida de receitas avançadas com contagens maiores de entradas. Onde a Câmara de Simulação de Raios tem 3 espaços de entrada, a Câmara de Montagem tem 9 — o que a torna ideal para tarefas complexas de montagem que precisam de muitos materiais diferentes de uma vez.

## Espaços e Capacidade

| Espaço | Capacidade | Notas |
|------|----------|-------|
| Entrada × 9 | 8.192 | Insira os materiais; a ordem dos espaços não importa |
| Matriz × 1 | 1 | Matriz de Colapso de Raios opcional |
| Saída × 1 | 8.192 | Saída processada; gravada apenas pela máquina |
| Espaços de Cartão de Aceleração | — | Até 4 Cartões de Aceleração de AE2 |

## Fluxo de Operação

1. Coloque os ingredientes nos 9 espaços de entrada
2. A máquina compara as entradas atuais com as receitas registradas
3. Quando uma receita corresponde e a rede ME tem Raios e FE suficientes, a máquina trava a receita e inicia o processamento
4. FE é gasto durante o processamento, e os Raios exigidos são consumidos quando a operação conclui
5. A saída vai para o espaço de saída quando o processamento termina

## Consumo de Raios

Cada receita define o nível de Raio exigido e a quantidade. Se a rede ME não puder fornecer Raios suficientes quando a operação estiver pronta para concluir, a máquina espera até o suprimento se recuperar.

## Comparada à Câmara de Simulação de Raios

| Recurso | Câmara de Simulação | Câmara de Montagem |
|---------|-----------------|------------------|
| Espaços de entrada | 3 | 9 |
| Pilha máxima por espaço | 8.192 | 8.192 |
| Uso pretendido | Conversão simples | Montagem complexa multimatérias |
| Substituição por matriz | Suportada | Suportada |
| Cartões de Aceleração | Até 4 | Até 4 |

## Substituição por Matriz

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Como a Câmara de Simulação, a Câmara de Montagem suporta **substituição por matriz**. Com uma **Matriz de Colapso de Raios** instalada, algumas receitas que normalmente exigiriam **Raios de Altíssima Tensão** podem ser atendidas consumindo várias vezes a quantidade de **Raios de Alta Tensão**.

## Exportação Automática

Com a Exportação Automática ativada, as saídas concluídas são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.
