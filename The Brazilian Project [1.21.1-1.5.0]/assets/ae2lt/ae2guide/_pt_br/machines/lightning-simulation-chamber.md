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
| Entrada × 3 | 8.192 | Insira os materiais; a ordem dos espaços não importa |
| Matriz × 1 | 1 | Matriz de Colapso de Raios opcional |
| Saída × 1 | 8.192 | Saída processada; gravada apenas pela máquina |
| Espaços de Cartão de Aceleração | — | Até 4 Cartões de Aceleração de AE2 |

## Fluxo de Operação

1. Coloque até 3 ingredientes diferentes nos espaços de entrada (receitas podem precisar de apenas 1~2)
2. A máquina compara as entradas atuais com as receitas registradas
3. Quando uma receita corresponde e a rede ME tem Raios e FE suficientes, a máquina trava a receita e inicia o processamento
4. FE é gasto durante o processamento, e os Raios exigidos são consumidos quando a operação conclui
5. A saída vai para o espaço de saída quando o processamento termina

## Consumo de Raios

Cada receita define o tipo de Raio exigido (HV ou EHV) e a quantidade. A máquina verifica a disponibilidade de Raios antes de começar e consome a quantidade exigida quando a operação conclui. Se a rede não puder fornecer Raios suficientes, a GUI mostra "Raios insuficientes" e a máquina espera até o suprimento se recuperar.

## Substituição por Matriz

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada, algumas receitas que normalmente exigiriam **Raios de Altíssima Tensão** podem ser atendidas consumindo várias vezes a quantidade de **Raios de Alta Tensão**. A proporção é definida por receita. A GUI mostra o estado atual da substituição:

* **Substituição: Ativa** — a receita atual está usando Raios HV para substituir EHV
* **Substituição: Disponível** — a receita atual suporta substituição mas não a disparou
* **Substituição: Nenhuma** — a receita atual não suporta substituição

## Exportação Automática

Com a Exportação Automática ativada, as saídas concluídas são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.
