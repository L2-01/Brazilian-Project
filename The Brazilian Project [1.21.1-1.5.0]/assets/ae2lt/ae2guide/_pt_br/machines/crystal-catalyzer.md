---
navigation:
  title: Catalisador de Cristais
  icon: ae2lt:crystal_catalyzer
  parent: machines/machines-index.md
item_ids:
  - ae2lt:crystal_catalyzer
  - ae2lt:pigmee_crystal_catalyzer
---

# Catalisador de Cristais

<Row>
  <BlockImage id="ae2lt:crystal_catalyzer" scale="4" />
  <BlockImage id="ae2lt:pigmee_crystal_catalyzer" scale="4" />
</Row>

O **Catalisador de Cristais** é uma máquina de processamento especializada que usa o fluido da receita, FE, raios da rede ME e o item no seu slot de catalisador. Ele tem dois modos de operação: **Modo Cristal** e **Modo Pó**.

O **Catalisador de Cristal Pigmee** é uma variante simplificada. Coloque uma pilha cheia (64) de um bloco de cristal ou rocha-mãe suportado no seu slot de catalisador; ele mantém os blocos e produz a saída base da receita a cada 5 segundos: um cristal para receitas comuns de bloco de cristal, ou dezesseis para receitas de rocha-mãe. Ele consome apenas 1.000 mB de água, não usa FE e nunca precisa de Raios nem de uma Matriz de Colapso.

As duas máquinas compartilham o conjunto de receitas, mas a Pigmee só aceita receitas de água. Receitas de fluidos especiais são exclusivas da máquina normal. O visualizador de receitas mantém os dados de FE, Raios, quantidade e tempo da máquina padrão. A máquina Pigmee ignora esses custos de energia e aplica suas próprias regras fixas de estoque, duração e saída base em tempo de execução; ela não registra receitas separadas de custo zero.

## Slots e Capacidade

| Slot | Capacidade | Notas |
|------|----------|-------|
| Slot de catalisador | 256 (normal) / 64 (Pigmee) | Guarda o item exigido pelo modo atual; o item **não é consumido** durante o processamento |
| Slot de matriz | 1 | Matriz de Colapso de Raios opcional para bônus de rendimento |
| Slot de saída | 16.384 normal / 64 Pigmee | Saída processada; escrita apenas pela máquina, não aceita entrada externa |
| Slot de fluido | 16.000 mB | Aceita o fluido da receita por tubos ou recipientes; receitas internas consomem 1.000 mB por ciclo |
| Buffer de FE | 1.000.000 FE | Buffer de energia interno |

## Modos de Operação

| Modo | Finalidade | Tempo de Processamento | Entradas de exemplo | Saídas de exemplo |
|------|---------|-----------------|----------------|-----------------|
| Modo Cristal | Extrai cristais dos blocos de cristal correspondentes | 1 segundo | Bloco de Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Cristal de Certus, Cristal de Fluix, Cristal de Sobrecarga |
| Modo Pó | Extrai pó de cristal dos blocos de cristal correspondentes | 2 segundos | Bloco de Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Pó de Certus, Pó de Fluix, Pó de Cristal de Sobrecarga |

Os dois modos compartilham o mesmo slot de catalisador, slot de fluido e slot de saída. O item no slot de catalisador é usado para casar receitas e calcular a contagem paralela, mas não é consumido.

## Fluxo de Operação

1. Selecione o Modo Cristal ou o Modo Pó com o botão de modo à esquerda
2. Alimente o fluido mostrado no JEI/EMI no slot de fluido por tubos ou recipientes
3. Coloque um item compatível com o modo selecionado no slot de catalisador
4. Forneça FE à máquina normal (a variante Pigmee não precisa)
5. Conecte a máquina normal a uma rede ME com armazenamento de raios; a variante Pigmee não precisa de raios
6. Quando uma receita casa, a máquina processa automaticamente
7. A saída pronta vai para o slot de saída

## Fluidos Especiais de Cristal

Essas integrações opcionais rodam no Modo Cristal, com 100.000 FE e 1 Raio de Alta Tensão por ciclo. O catalisador é mantido; cada receita tem saída base de um item.

| Cristal | Catalisador mantido | Fluido por ciclo |
|---------|-------------------|-----------------|
| Fluxite do Oritech | Bloco de Fluxite | 1 B de Matéria Estranha |
| Cristal de Uranite do Oritech | Cristal de Uranite | 1 B de Lama Mineral |
| Cristal do Tempo do Just Dire Things | Bloco de Cristal do Tempo | 1 B de Fluido do Tempo |

Essas receitas só carregam com o mod correspondente. A Pigmee não as executa; a Fluxite agora exige o catalisador normal. Receitas de água existentes mantêm seus custos.

## Rochas-mãe Não Degradáveis

O Modo Cristal suporta as seguintes rochas-mãe que não degradam ao crescer cristais. Cada uma tem saída base de **16 itens** e a rocha-mãe é mantida.

| Rocha-mãe | Mod | Produto |
|-------------|-----|---------|
| Drusa de Ametista | Minecraft | Pedaço de Ametista |
| Drusa de Certus Perfeita | AE2 | Cristal de Certus |
| Drusa de Cristal de Sobrecarga Perfeita | AE2LT | Cristal de Sobrecarga |
| Drusa de Brasa Perfeita | Applied Generators | Cristal de Brasa |
| Drusa de Cristal Energizado Perfeita | NeoECOAE | Cristal Energizado |

Com uma versão do AE2CS que inclua rochas-mãe, o Modo Cristal também suporta todas as 11 famílias: Nether Quartz, Energized Certus Quartz, Ender Quartz, Energized Fluix, Fluix, Redstone, Resonating, Quantum, Link, Meteor e Entro.

Os produtos das rochas-mãe do AE2CS correspondem aos aglomerados maduros respectivos: as dez primeiras rendem cristais purificados do AE2CS, enquanto a Entro rende o Cristal Entro do ExtendedAE e exige o ExtendedAE.

Cada ciclo normal usa 1 B de água, 100.000 FE e 1 Raio de Alta Tensão, com os bônus usuais de paralelismo e matriz. Uma rocha-mãe produz 16 itens por segundo sem matriz, ou 128 com matriz. Com matriz, 128 rochas-mãe alcançam 16.384 itens por segundo. O paralelismo é limitado pela capacidade total do slot de saída: inserir mais rochas-mãe ainda funciona, com máximo de 16.384 itens por ciclo.

A Pigmee também aceita essas receitas de água: 64 rochas-mãe correspondentes produzem dezesseis cristais a cada 5 segundos por 1 B de água, sem consumir as rochas. Receitas de compatibilidade só carregam quando seu mod e seus itens estão presentes.

Variantes degradáveis, blocos de drusa Entro do ExtendedAE e blocos de drusa de Cristal do Tempo que revertem a um estágio imaturo não se qualificam. A rocha-mãe Entro do AE2CS não degrada e é suportada.

## Consumo de Raios

O Catalisador de Cristais normal consome raios da rede ME a cada operação completada. O tipo (Alta Tensão ou Altíssima Tensão) e a quantidade de raios exigidos são definidos por receita. O Catalisador de Cristal Pigmee nunca consome raios.

Se a rede não tiver raios suficientes quando a operação estiver pronta para concluir, a máquina pausa e espera até haja raios disponíveis. Nenhum fluido ou FE é desperdiçado nessa espera.

## Saída Paralela e Fluido

Cada receita interna consome **1.000 mB do fluido especificado por ciclo**. A saída paralela e o bônus da matriz não aumentam esse custo. Com 256 catalisadores e uma matriz, uma receita de saída base um produz 2.048 itens pelo mesmo balde de fluido.

Na máquina normal, a contagem paralela é quantidade no slot / quantidade exigida pela receita, limitada pela capacidade total do slot de saída. Receitas com saída base de um item exigem 1 bloco correspondente cada, então inserir 64 blocos válidos faz a máquina calcular 64 saídas paralelas por operação. A variante Pigmee exige exatamente uma pilha cheia (64 blocos) e produz apenas a saída base da receita, sem escalar pela contagem de catalisadores.

A contagem paralela é travada quando o processamento começa. Adicionar ou remover itens do slot de catalisador durante o processamento não altera a saída já travada daquela operação.

## Bônus da Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada no slot de matriz, a saída por operação do Catalisador de Cristais normal é aumentada para **8×**. A matriz não é consumida durante o processamento. A variante Pigmee não tem efeito de slot de matriz e sempre produz apenas a saída base da receita.

Saída final = saída base × contagem paralela × multiplicador da matriz.

## Notas

* O Catalisador de Cristais é alimentado por **FE externo** em suas laterais, não por AE da rede ME
* Os Raios são consumidos do **armazenamento da rede ME**, então a máquina deve estar conectada a uma rede com raios disponíveis
* A própria máquina também é um dispositivo de rede ME — conectá-la à rede permite alimentá-la por Interfaces ou Fornecedores de Padrões do AE2
* Suporta Exportação Automática; os lados de saída podem ser configurados na GUI
* O Catalisador de Cristais **não** suporta Cartões de Aceleração
* O Modo Cristal completa em **1 segundo** no mínimo; o Modo Pó completa em **2 segundos** no mínimo; os ciclos do Catalisador de Cristal Pigmee levam **5 segundos** (sem FE exigido)
