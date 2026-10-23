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

A **Fábrica de Processamento de Sobrecarga** é o maior dispositivo de processamento e o de maior vazão deste mod. Ela suporta E/S mista de itens e fluidos, e desbloqueia processamento paralelo via Matriz de Colapso de Raios — tornando-se a espinha dorsal de qualquer linha de produção industrial de Raios em larga escala.

## Slots e Capacidade

| Slot / Componente | Capacidade | Notas |
|------------------|----------|-------|
| Entrada de Itens × 9 | 16.384 | Alimente os itens |
| Matriz × 1 | 32 | Instale Matrizes de Colapso de Raios para desbloquear paralelismo |
| Saída de Itens × 1 | 16.384 | Saída processada; escrita apenas pela máquina |
| Entrada de Fluido | 1.024.000 mB | Alimente o fluido exigido por tubos |
| Saída de Fluido | 1.024.000 mB | Guarda a saída de fluido |
| Buffer de FE | 640.000.000 FE (padrão) | Buffer de energia interno |
| Slots de Cartão de Aceleração | — | Até 4 Cartões de Aceleração do AE2 |

## Fluxo de Operação

1. Alimente as entradas de itens e fluidos
2. A máquina casa as entradas atuais com as receitas registradas
3. Quando uma receita casa e os Raios e o FE exigidos estão disponíveis, o processamento começa
4. O FE é gasto durante o processamento; entradas de itens, entradas de fluidos e Raios são consumidos quando a operação conclui
5. Saídas de itens e fluidos vão para seus respectivos slots de saída

## Processamento Paralelo

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O paralelismo da fábrica é determinado pelo número de **Matrizes de Colapso de Raios** instaladas. O slot de matriz comporta até 32 matrizes, cada uma fornecendo uma quantidade configurável de paralelismo (padrão 8 por matriz, máx. 32 × 8 = 256):

Segure Matrizes de Colapso de Raios e **use agachado** a Fábrica de Processamento de Sobrecarga para inseri-las diretamente no seu slot de matriz. A fábrica insere o máximo possível, até 32, e deixa o restante na sua mão.

* Sem matrizes instaladas, a fábrica não pode paralelizar
* Instalar mais matrizes eleva linearmente o teto de paralelismo
* O paralelismo efetivo também é limitado pelos materiais de entrada disponíveis e pelo custo por operação de cada receita
* Mais paralelismo significa mais saída por ciclo e custo total de FE maior. O custo total de FE usa a fórmula de escala paralela da fábrica, não um simples multiplicador linear

## Cartões de Aceleração e Consumo de Energia

A Fábrica de Processamento de Sobrecarga aceita até 4 Cartões de Aceleração. Cada cartão eleva significativamente o teto de FE por tick:

| Cartões de Aceleração | Teto de FE por tick (padrão) |
|-------------|---------------------------|
| 0 | 400.000 FE |
| 1 | 2.000.000 FE |
| 2 | 8.000.000 FE |
| 3 | 32.000.000 FE |
| 4 | 128.000.000 FE |

## E/S de Fluido

A entrada e a saída de fluido podem usar qualquer sistema de tubos de fluido. O slot de entrada valida estritamente o tipo de fluido contra a receita.

## Exportação Automática

Com a Exportação Automática habilitada, saídas de itens são empurradas automaticamente para recipientes adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.

## Alimentação de Energia

A Fábrica de Processamento de Sobrecarga é alimentada por **FE externo** em suas laterais — ela não puxa AE da rede ME diretamente. Use qualquer tubo ou cabo de FE para conectar energia a um de seus lados.
