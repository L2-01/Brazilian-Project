---
navigation:
  title: Fábrica de Processamento de Sobrecarga
  icon: ae2lt:overload_processing_factory
  parent: machines/machines-index.md
item_ids:
  - ae2lt:overload_processing_factory
---

# Fábrica de Processamento de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overload_processing_factory" scale="4" />
</Row>

A **Fábrica de Processamento de Sobrecarga** é o maior dispositivo de processamento e o de maior taxa de transferência deste mod. Ela suporta E/S mista de itens e fluidos, e desbloqueia processamento paralelo via a Matriz de Colapso de Raios — tornando-se a espinha dorsal de qualquer linha industrial de produção de Raios em larga escala.

## Espaços e Capacidade

| Espaço / Componente | Capacidade | Notas |
|------------------|----------|-------|
| Entrada de itens × 9 | 16.384 | Insira os itens |
| Matriz × 1 | 32 | Instale Matrizes de Colapso de Raios para desbloquear paralelismo |
| Saída de itens × 1 | 16.384 | Saída processada; gravada apenas pela máquina |
| Entrada de fluido | 1.024.000 mB | Alimente o fluido necessário por tubos |
| Saída de fluido | 1.024.000 mB | Guarda a saída de fluido |
| Buffer de FE | 640.000.000 FE (padrão) | Buffer de energia interno |
| Espaços de Cartão de Aceleração | — | Até 4 Cartões de Aceleração de AE2 |

## Fluxo de Operação

1. Alimente as entradas de itens e fluido
2. A máquina compara as entradas atuais com as receitas registradas
3. Quando uma receita corresponde e os Raios e FE necessários estão disponíveis, o processamento começa
4. FE é gasto durante o processamento; entradas de itens, entradas de fluido e Raios são consumidos quando a operação conclui
5. As saídas de itens e fluido vão para seus respectivos espaços de saída

## Processamento Paralelo

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O paralelismo da fábrica é determinado pelo número de **Matrizes de Colapso de Raios** instaladas. O espaço de matriz comporta até 32 matrizes, cada uma fornecendo uma quantidade configurável de paralelismo (padrão 8 por matriz, máximo 32 × 8 = 256):

Segure Matrizes de Colapso de Raios e **use agachado** na Fábrica de Processamento de Sobrecarga para inseri-las diretamente no espaço de matriz. A fábrica insere o máximo possível, até 32, e deixa o restante na sua mão.

* Sem matrizes instaladas, a fábrica não pode paralelizar
* Instalar mais matrizes eleva linearmente o teto de paralelismo
* O paralelismo efetivo também é limitado pelos materiais de entrada disponíveis e pelo custo por operação de cada receita
* Paralelismo maior significa mais saída por ciclo e custo total de FE maior. O custo total de FE usa a fórmula de escalonamento paralelo da fábrica, não um multiplicador linear simples

## Cartões de Aceleração e Consumo de Energia

A Fábrica de Processamento de Sobrecarga aceita até 4 Cartões de Aceleração. Cada cartão eleva significativamente o teto de FE por tique:

| Cartões de Aceleração | Teto de FE por tique (padrão) |
|-------------|---------------------------|
| 0 | 400.000 FE |
| 1 | 2.000.000 FE |
| 2 | 8.000.000 FE |
| 3 | 32.000.000 FE |
| 4 | 128.000.000 FE |

## E/S de Fluido

A entrada e a saída de fluido podem usar qualquer sistema de tubos de fluido. O espaço de entrada valida estritamente o tipo de fluido conforme a receita.

## Exportação Automática

Com a Exportação Automática ativada, as saídas de itens são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.

## Alimentação de Energia

A Fábrica de Processamento de Sobrecarga é alimentada por **FE externo** nas suas laterais — ela não puxa AE diretamente da rede ME. Use qualquer tubo ou cabo de FE para conectar energia a um dos seus lados.
