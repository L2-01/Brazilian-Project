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

A **Fábrica de Processamento de Sobrecarga** é o dispositivo de processamento maior e de maior vazão deste mod. Ela suporta E/S mista de itens e fluidos, e desbloqueia processamento paralelo via a Matriz de Colapso de Raios — tornando-se a espinha dorsal de qualquer linha de produção de Raios em escala industrial.

## Espaços e Capacidade

| Espaço / Componente | Capacidade | Notas |
|------------------|----------|-------|
| Entrada de Itens × 9 | 8.192 | Alimente os itens |
| Matriz × 1 | 32 | Instale Matrizes de Colapso de Raios para desbloquear paralelismo |
| Saída de Itens × 1 | 8.192 | Saída processada; escrita apenas pela máquina |
| Entrada de Fluido | 512.000 mB | Alimente o fluido exigido por tubos |
| Saída de Fluido | 512.000 mB | Guarda a saída de fluido |
| Buffer de FE | 640.000.000 FE (padrão) | Buffer de energia embutido |
| Espaços de Cartão de Velocidade | — | Até 4 Cartões de Velocidade do AE2 |

## Fluxo de Operação

1. Alimente as entradas de itens e fluidos
2. A máquina casa as entradas atuais contra as receitas registradas
3. Uma vez que uma receita casa e há Raios e FE suficientes disponíveis, o processamento começa
4. Raios e FE são consumidos ao longo do processamento
5. As saídas de itens e fluidos vão para seus respectivos espaços de saída

## Processamento Paralelo

<ItemImage id="ae2lt:lightning_collapse_matrix" scale="2" float="left" />

O paralelismo da fábrica é determinado pelo número de **Matrizes de Colapso de Raios** instaladas. O espaço de matriz comporta até 32 matrizes, cada uma fornecendo uma quantidade configurável de paralelismo (padrão 8 por matriz, máximo 32 × 8 = 256):

* Sem matrizes instaladas, a fábrica não consegue paralelizar
* Instalar mais matrizes eleva linearmente o teto de paralelismo
* O paralelismo efetivo também é limitado pelos materiais de entrada disponíveis e pelo custo por operação de cada receita
* Paralelismo maior significa mais saída por ciclo, com um aumento linear no consumo de FE

## Cartões de Velocidade e Consumo de Energia

A Fábrica de Processamento de Sobrecarga aceita até 4 Cartões de Velocidade. Cada cartão eleva significativamente o teto de FE por tique:

| Cartões de Velocidade | Teto de FE por tique (padrão) |
|-------------|---------------------------|
| 0 | 400.000 FE |
| 1 | 2.000.000 FE |
| 2 | 8.000.000 FE |
| 3 | 32.000.000 FE |
| 4 | 128.000.000 FE |

## E/S de Fluidos

A entrada e a saída de fluidos podem usar qualquer sistema de tubos de fluido. O espaço de entrada valida estritamente o tipo de fluido contra a receita.

## Exportação Automática

Com a Exportação Automática ligada, as saídas de itens são empurradas automaticamente para contêineres adjacentes nos lados permitidos. Os lados são configurados na tela "Configurar Lados de Saída" da GUI.

## Alimentação de Energia

A Fábrica de Processamento de Sobrecarga é alimentada por **FE externo** nas suas laterais — ela não puxa AE da rede ME diretamente. Use qualquer tubo ou cabo de FE para conectar energia a uma de suas laterais.
