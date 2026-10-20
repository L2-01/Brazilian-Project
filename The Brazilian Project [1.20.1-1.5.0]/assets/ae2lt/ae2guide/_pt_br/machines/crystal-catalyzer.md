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

O **Catalisador de Cristais** é uma máquina de processamento especializada que usa o fluido da receita, FE, raios da rede ME e o item no seu espaço de catalisador. Ele tem dois modos de operação: **Modo Cristal** e **Modo Pó**.

O **Catalisador de Cristal Pigmee** é uma variante simplificada. Coloque uma pilha completa (64) de um bloco de cristal suportado no seu espaço de catalisador; ele mantém os blocos e produz a saída base da receita a cada 5 segundos: um cristal para receitas comuns de bloco de cristal, ou oito para receitas de rocha-matriz do AE2CS. Ele consome apenas 1.000 mB de água, não usa FE nenhum e nunca precisa de Raios ou de uma Matriz de Colapso.

As duas máquinas compartilham o conjunto de receitas, mas a Pigmee só aceita receitas de água. Receitas de fluidos especiais são exclusivas da máquina normal. O visualizador de receitas mantém os dados de FE, Raios, quantidade e tempo da máquina padrão. A máquina Pigmee ignora esses custos de energia e aplica suas próprias regras fixas de estoque, duração e saída base em tempo de execução; ela não registra receitas separadas de custo zero.

## Espaços e Capacidade

| Espaço | Capacidade | Notas |
|------|----------|-------|
| Espaço de catalisador | 256 (normal) / 64 (Pigmee) | Guarda o item exigido pelo modo atual; o item **não é consumido** durante o processamento |
| Espaço de matriz | 1 | Matriz de Colapso de Raios opcional para bônus de rendimento |
| Espaço de saída | 16.384 normal / 64 Pigmee | Saída processada; gravada apenas pela máquina, não aceita entrada externa |
| Espaço de fluido | 16.000 mB | Aceita o fluido da receita por tubos ou contêineres; receitas internas consomem 1.000 mB por ciclo |
| Buffer de FE | 1.000.000 FE | Buffer de energia interno |

## Modos de Operação

| Modo | Propósito | Tempo de Processamento | Entradas de exemplo | Saídas de exemplo |
|------|---------|-----------------|----------------|-----------------|
| Modo Cristal | Extrair cristais de blocos de cristal correspondentes | 1 segundo | Bloco de Quartzo Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Cristal de Quartzo Certus, Cristal de Fluix, Cristal de Sobrecarga |
| Modo Pó | Extrair pó de cristal de blocos de cristal correspondentes | 2 segundos | Bloco de Quartzo Certus, Bloco de Fluix, Bloco de Cristal de Sobrecarga | Pó de Quartzo Certus, Pó de Fluix, Pó de Cristal de Sobrecarga |

Ambos os modos compartilham o mesmo espaço de catalisador, espaço de fluido e espaço de saída. O item no espaço de catalisador é usado para casamento de receita e cálculo da contagem paralela, mas não é consumido.

## Fluxo de Operação

1. Selecione o Modo Cristal ou o Modo Pó com o botão de modo à esquerda
2. Alimente o fluido mostrado no JEI/EMI no espaço de fluido por tubos ou contêineres
3. Coloque um item correspondente ao modo selecionado no espaço de catalisador
4. Forneça FE à máquina normal (a variante Pigmee não precisa)
5. Conecte a máquina normal a uma rede ME com armazenamento de raios; a variante Pigmee não precisa de raios
6. Quando uma receita corresponde, a máquina processa automaticamente
7. A saída concluída vai para o espaço de saída

## Fluidos de Cristal Especiais

Essas integrações opcionais rodam no Modo Cristal, com 100.000 FE e 1 Raio de Alta Tensão por ciclo. O catalisador é mantido; cada receita tem saída base de um item.

| Cristal | Catalisador mantido | Fluido por ciclo |
|---------|-------------------|-----------------|
| Fluxita do Oritech | Bloco de Fluxita | 1 B de Matéria Estranha |
| Cristal de Uranita do Oritech | Cristal de Uranita | 1 B de Lama Mineral |
| Cristal do Tempo do Just Dire Things | Bloco de Cristal do Tempo | 1 B de Fluido do Tempo |

Essas receitas só carregam com o mod correspondente. A Pigmee não pode rodá-las; a Fluxita agora exige o catalisador normal. As receitas de água existentes mantêm seus custos.

## Rochas-Matriz do AE2 Crystal Science

Com uma versão do AE2CS que inclua rochas-matriz, o Modo Cristal também suporta todas as 11 famílias: Quartzo do Nether, Quartzo Certus Energizado, Quartzo do Ender, Fluix Energizado, Fluix, Redstone, Ressonante, Quantum, Link, Meteoro e Entro.

A rocha-matriz é mantida como catalisador. Os produtos correspondem aos aglomerados maduros equivalentes: as dez primeiras rendem cristais purificados do AE2CS, enquanto o Entro rende o Cristal Entro do ExtendedAE e requer o ExtendedAE. Cada ciclo normal usa 1 B de água, 100.000 FE e 1 Raio de Alta Tensão, com saída base de oito itens e os bônus usuais de paralelismo e matriz. Com uma matriz, 256 rochas-matriz produzem 16.384 cristais por segundo. O espaço de saída da variante normal comporta 16.384 itens.

A Pigmee também aceita essas receitas de água: 64 rochas-matriz correspondentes produzem oito cristais a cada 5 segundos por 1 B de água, sem consumir as rochas. Essas receitas não carregam quando o AE2CS está ausente ou sua versão instalada não tem rochas-matriz.

## Consumo de Raios

O Catalisador de Cristais normal consome raios da rede ME a cada operação concluída. O tipo (Alta Tensão ou Altíssima Tensão) e a quantidade de raios exigidos são definidos por receita. O Catalisador de Cristal Pigmee nunca consome raios.

Se a rede não tiver raios suficientes quando a operação estiver pronta para concluir, a máquina pausa e espera até que haja raios disponíveis. Nenhum fluido ou FE é desperdiçado durante essa espera.

## Saída Paralela e Fluido

Cada receita interna consome **1.000 mB do fluido especificado por ciclo**. Saída paralela e o bônus de matriz não aumentam esse custo. Com 256 catalisadores e uma matriz, uma receita de saída base um produz 2.048 itens pelo mesmo balde de fluido.

Para a máquina normal, a contagem paralela é quantidade no espaço / quantidade exigida pela receita. Receitas com saída base de um item exigem 1 bloco correspondente cada, então inserir 64 blocos válidos faz a máquina calcular 64 saídas paralelas por operação. A variante Pigmee exige exatamente uma pilha completa (64 blocos) e produz apenas a saída base da receita, sem escalar pela contagem de catalisadores.

A contagem paralela é travada quando o processamento começa. Adicionar ou remover itens do espaço de catalisador durante o processamento não altera a saída já travada daquela operação.

## Bônus da Matriz de Colapso de Raios

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

Com uma **Matriz de Colapso de Raios** instalada no espaço de matriz, a saída por operação do Catalisador de Cristais normal aumenta para **8×**. A matriz não é consumida durante o processamento. A variante Pigmee não tem efeito de espaço de matriz e sempre produz apenas a saída base da receita.

Saída final = saída base × contagem paralela × multiplicador da matriz.

## Notas

* O Catalisador de Cristais é alimentado por **FE externo** nas suas laterais, não por AE da rede ME
* Os Raios são consumidos do **armazenamento da rede ME**, então a máquina precisa estar conectada a uma rede com raios disponíveis
* A máquina em si também é um dispositivo de rede ME — conectá-la à rede permite alimentá-la por Interfaces ou Fornecedores de Padrões de AE2
* Suporta Exportação Automática; os lados de saída podem ser configurados na GUI
* O Catalisador de Cristais **não** suporta Cartões de Aceleração
* O Modo Cristal conclui em **1 segundo** no mínimo; o Modo Pó conclui em **2 segundos** no mínimo; os ciclos do Catalisador de Cristal Pigmee levam **5 segundos** (sem FE necessário)
