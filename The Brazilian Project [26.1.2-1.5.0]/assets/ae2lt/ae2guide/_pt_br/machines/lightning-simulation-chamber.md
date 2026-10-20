---
navigation:
  title: Câmara de Simulação de Raios
  icon: ae2lt:lightning_simulation_room
  parent: machines/machines-index.md
item_ids:
  - ae2lt:lightning_simulation_room
---

# Câmara de Simulação de Raios

<Row>
  <BlockImage id="ae2lt:lightning_simulation_room" scale="4" />
</Row>

A **Câmara de Simulação de Raios** é uma das máquinas de processamento centrais deste mod, adequada a conversões com 1~3 entradas. A maioria das receitas de meio de jogo é fabricada aqui.

## Espaços e Capacidade

| Espaço | Capacidade | Notas |
|------|----------|-------|
| Entrada × 3 | 8.192 | Alimente os materiais; a ordem dos espaços não importa |
| Matriz × 1 | 1 | Matriz de Colapso de Raios opcional |
| Saída × 1 | 8.192 | Saída processada; escrita apenas pela máquina |
| Espaços de Cartão de Velocidade | — | Até 4 Cartões de Velocidade do AE2 |

## Fluxo de Operação

1. Coloque até 3 ingredientes diferentes nos espaços de entrada (receitas podem precisar de só 1~2)
2. A máquina casa as entradas atuais contra as receitas registradas
3. Uma vez que uma receita casa e a rede ME tem Raios e FE suficientes, a máquina trava a receita e começa a processar
4. Raios e FE são consumidos durante o processamento
5. A saída vai para o espaço de saída quando o processamento termina

## Consumo de Raios

Toda receita define o tipo de Raio exigido (AT ou RAT) e a quantidade. Os raios são puxados da rede ME de uma vez no início do processamento. Se a rede não tiver Raios suficientes, a GUI mostra "Raios insuficientes" e o processamento pausa até o suprimento se recuperar.

## Substituição de Matriz

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada, algumas receitas que normalmente exigiriam **Raio de Altíssima Tensão** podem ser cumpridas consumindo várias vezes a quantidade de **Raio de Alta Tensão** em vez disso. A proporção é definida por receita. A GUI mostra o estado atual da substituição:

* **Substituição: Ativa** — a receita atual está usando Raio de AT para substituir o RAT
* **Substituição: Disponível** — a receita atual suporta substituição mas não a disparou
* **Substituição: Nenhuma** — a receita atual não suporta substituição

## Exportação Automática

Com a Exportação Automática ligada, as saídas concluídas são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.
