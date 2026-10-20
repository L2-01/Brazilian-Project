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

O **Catalisador de Cristais** é uma máquina de processamento especializada que usa água, FE, raios da rede ME e o item no seu espaço de catalisador. Ela tem dois modos de operação: **Modo Cristal** e **Modo Pó**.

## Espaços e Capacidade

| Espaço | Capacidade | Notas |
|------|----------|-------|
| Espaço de catalisador | 256 | Guarda o item exigido pelo modo atual; o item **não é consumido** durante o processamento |
| Espaço de matriz | 1 | Matriz de Colapso de Raios opcional para um bônus de rendimento |
| Espaço de saída | 1.024 | Saída processada; escrita apenas pela máquina, não aceita entrada externa |
| Espaço de fluido | 16.000 mB | Alimentado com água por tubos de fluido; cada operação consome 1.000 mB |
| Buffer de FE | 1.000.000 FE | Buffer de energia embutido |

## Modos de Operação

| Modo | Propósito | Tempo de Processamento | Entradas de exemplo | Saídas de exemplo |
|------|---------|-----------------|----------------|-----------------|
| Modo Cristal | Extrai cristais de blocos de cristal correspondentes | 1 segundo | Bloco de Quartzo Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Cristal de Quartzo Certus, Cristal de Fluix, Cristal de Sobrecarga |
| Modo Pó | Extrai pó de cristal de blocos de cristal correspondentes | 2 segundos | Bloco de Quartzo Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Pó de Quartzo Certus, Pó de Fluix, Pó de Cristal de Sobrecarga |

Ambos os modos dividem o mesmo espaço de catalisador, espaço de fluido e espaço de saída. O item no espaço de catalisador é usado para casar a receita e calcular a contagem paralela, mas não é consumido.

## Fluxo de Operação

1. Selecione o Modo Cristal ou Modo Pó com o botão de modo à esquerda
2. Alimente água para o espaço de fluido por tubos
3. Coloque um item correspondente ao modo selecionado no espaço de catalisador
4. Forneça FE
5. Conecte a máquina a uma rede ME com armazenamento de raios
6. Uma vez que uma receita casa, a máquina processa automaticamente
7. A saída concluída vai para o espaço de saída

## Consumo de Raios

O Catalisador de Cristais consome raios da rede ME toda vez que completa uma operação. O tipo (Alta Tensão ou Altíssima Tensão) e a quantidade de raios exigidos são definidos por receita.

Se a rede não tiver raios suficientes quando a operação estiver pronta para completar, a máquina pausa e espera até que raios fiquem disponíveis. Nenhuma água ou FE é desperdiçada durante essa espera.

## Saída Paralela e Água

Cada operação sempre consome **1.000 mB de água**. A saída paralela e o bônus de matriz não aumentam o custo de água.

O tamanho da pilha no espaço de catalisador determina a contagem paralela: contagem paralela = quantidade no espaço / quantidade exigida pela receita. As receitas embutidas atualmente exigem 1 bloco correspondente cada, então inserir 64 blocos válidos faz a máquina calcular 64 saídas paralelas por operação.

A contagem paralela é travada quando o processamento começa. Adicionar ou remover itens do espaço de catalisador durante o processamento não muda a saída já travada daquela operação.

## Bônus da Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada no espaço de matriz, a saída por operação do Catalisador de Cristais aumenta para **4×**. A matriz não é consumida durante o processamento.

Saída final = saída base × contagem paralela × multiplicador da matriz.

## Notas

* O Catalisador de Cristais é alimentado por **FE externo** nas suas laterais, não por AE da rede ME
* Os raios são consumidos do **armazenamento da rede ME**, então a máquina precisa estar conectada a uma rede com raios disponíveis
* A própria máquina também é um dispositivo de rede ME — conectá-la à rede permite alimentá-la por Interfaces ou Fornecedores de Padrões do AE2
* Suporta Exportação Automática; os lados de saída podem ser configurados na GUI
* O Catalisador de Cristais **não** suporta Cartões de Velocidade
* O Modo Cristal completa em **1 segundo** no mínimo; o Modo Pó completa em **2 segundos** no mínimo (com FE suficiente)
