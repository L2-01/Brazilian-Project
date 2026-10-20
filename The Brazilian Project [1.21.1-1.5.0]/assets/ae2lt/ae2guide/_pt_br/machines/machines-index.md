---
navigation:
  title: Máquinas de Processamento
  icon: ae2lt:lightning_simulation_room
  parent: index.md
  position: 30
---

# Máquinas de Processamento

O AE2 Lightning Tech oferece várias máquinas de processamento para diferentes cadeias de materiais. Exceto pelo Ionizador Atmosférico, que consome energia AE da rede ME, a maioria das máquinas se conecta a uma rede ME e usa FE externo. A Fábrica de Mineração usa FE e consome um Raio HV da rede ME por lote concluído. As máquinas de processamento comuns exigem Raios armazenados; o Catalisador de Cristal Pigmee é a exceção que usa apenas água e zero FE.

<SubPages />

## Recursos Compartilhados

### Exportação Automática

A maioria das máquinas suporta **Exportação Automática**. Quando ativada, a máquina empurra suas saídas para contêineres adjacentes nos lados permitidos assim que o processamento termina. Os lados permitidos são definidos na tela "Configurar Lados de Saída" da GUI da máquina.

### Cartões de Aceleração

Exceto pelo Catalisador de Cristais e pela Fábrica de Mineração, as máquinas de processamento aceitam **Cartões de Aceleração** vanilla do AE2 para aumentar a velocidade de processamento, até 4 cartões.

### Substituição de Raios

Algumas receitas que exigem Raios de Altíssima Tensão suportam a mecânica de **substituição por matriz**: quando uma **Matriz de Colapso de Raios** está instalada na máquina, a receita pode ser atendida consumindo várias vezes a quantidade de Raios de Alta Tensão. A proporção de substituição é definida por receita.
