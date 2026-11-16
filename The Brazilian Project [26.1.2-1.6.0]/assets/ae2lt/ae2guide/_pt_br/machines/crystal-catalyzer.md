---
navigation:
  title: Catalisador de Cristais
  icon: ae2lt:crystal_catalyzer
  parent: machines/machines-index.md
item_ids:
  - ae2lt:crystal_catalyzer
---

# Catalisador de Cristais

<Row>
  <BlockImage id="ae2lt:crystal_catalyzer" scale="4" />
</Row>

O **Catalisador de Cristais** é uma máquina de processamento especializada que usa água, FE, raios da rede ME e o item no seu slot de catalisador. Tem dois modos de operação: **Modo Cristal** e **Modo Pó**.

## Slots e Capacidade

| Slot | Capacidade | Notas |
|------|----------|-------|
| Slot de catalisador | 256 (normal) / 64 (Pigmee) | Guarda o item exigido pelo modo atual; o item **não é consumido** durante o processamento |
| Slot de matriz | 1 | Matriz de Colapso de Raios opcional para bônus de rendimento |
| Slot de saída | 1.024 | Saída processada; escrita apenas pela máquina, não aceita entrada externa |
| Slot de fluido | 16.000 mB | Alimentado com água por tubos de fluido; cada operação consome 1.000 mB |
| Buffer de FE | 1.000.000 FE | Buffer de energia interno |

## Modos de Operação

| Modo | Finalidade | Tempo de Processamento | Entradas de exemplo | Saídas de exemplo |
|------|---------|-----------------|----------------|-----------------|
| Modo Cristal | Extrai cristais dos blocos de cristal correspondentes | 1 segundo | Bloco de Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Cristal de Certus, Cristal de Fluix, Cristal de Sobrecarga |
| Modo Pó | Extrai pó de cristal dos blocos de cristal correspondentes | 2 segundos | Bloco de Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Pó de Certus, Pó de Fluix, Pó de Cristal de Sobrecarga |

Os dois modos compartilham o mesmo slot de catalisador, slot de fluido e slot de saída. O item no slot de catalisador é usado para casar receitas e calcular a contagem paralela, mas não é consumido.

## Fluxo de Operação

1. Selecione o Modo Cristal ou o Modo Pó com o botão de modo à esquerda
2. Alimente água no slot de fluido por tubos
3. Coloque um item compatível com o modo selecionado no slot de catalisador
4. Supply FE
5. Conecte a máquina a uma rede ME com armazenamento de raios
6. Quando uma receita casa, a máquina processa automaticamente
7. A saída pronta vai para o slot de saída

## Consumo de Raios

O Catalisador de Cristais normal consome raios da rede ME a cada operação completada. O tipo (Alta Tensão ou Altíssima Tensão) e a quantidade de raios exigidos são definidos por receita. O Catalisador de Cristal Pigmee nunca consome raios.

Se a rede não tiver raios suficientes quando a operação estiver pronta para concluir, a máquina pausa e espera até haja raios disponíveis. Nenhum fluido ou FE é desperdiçado nessa espera.

## Saída Paralela e Fluido

Cada operação sempre consome **1.000 mB de água**. A saída paralela e o bônus da matriz não aumentam o custo de água.

O tamanho da pilha no slot de catalisador determina a contagem paralela: contagem paralela = quantidade no slot / quantidade exigida pela receita. As receitas internas atualmente exigem 1 bloco correspondente cada, então inserir 64 blocos válidos faz a máquina calcular 64 saídas paralelas por operação.

A contagem paralela é travada quando o processamento começa. Adicionar ou remover itens do slot de catalisador durante o processamento não altera a saída já travada daquela operação.

## Bônus da Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada no slot de matriz, a saída por operação do Catalisador de Cristais é aumentada para **4×**. A matriz não é consumida durante o processamento.

Saída final = saída base × contagem paralela × multiplicador da matriz.

## Notas

* O Catalisador de Cristais é alimentado por **FE externo** em suas laterais, não por AE da rede ME
* Os Raios são consumidos do **armazenamento da rede ME**, então a máquina deve estar conectada a uma rede com raios disponíveis
* A própria máquina também é um dispositivo de rede ME — conectá-la à rede permite alimentá-la por Interfaces ou Fornecedores de Padrões do AE2
* Suporta Exportação Automática; os lados de saída podem ser configurados na GUI
* O Catalisador de Cristais **não** suporta Cartões de Aceleração
* O Modo Cristal completa em **1 segundo** no mínimo; o Modo Pó completa em **2 segundos** no mínimo (com FE suficiente)
