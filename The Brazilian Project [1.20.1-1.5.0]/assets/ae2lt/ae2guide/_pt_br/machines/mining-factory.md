---
navigation:
  title: Fábrica de Mineração
  icon: ae2lt:mining_factory
  parent: machines/machines-index.md
item_ids:
  - ae2lt:mining_factory
---

# Fábrica de Mineração

<BlockImage id="ae2lt:mining_factory" scale="4" />

A **Fábrica de Mineração** produz os itens largados de mineração da tabela de itens de cada bloco sem colocar nem quebrar blocos. Insira itens de bloco junto com uma ferramenta com durabilidade ou um Plano de Aniquilação de AE2, depois conecte uma rede ME contendo Raios HV e forneça FE.

## Processamento e custo

Cada lote leva 5 tiques e consome blocos, durabilidade da ferramenta, FE e um Raio HV ao concluir. O processamento para quando a energia é insuficiente, a ferramenta está inutilizável ou a saída está bloqueada.

Por padrão, a fábrica processa 8 blocos por lote sem matrizes. Com matrizes instaladas, cada **Matriz de Colapso de Raios** fornece 256 operações paralelas, até 8 matrizes e 2.048 operações paralelas. A amostragem de saque equivale à mineração por bloco em rendimento de longo prazo, com mais variação entre lotes.

Ferramentas consomem durabilidade por bloco, com suporte a Fortuna e Toque Suave, a um custo padrão de 256 FE por bloco. Um **Plano de Aniquilação** funciona como uma ferramenta de nível diamante com seus encantamentos, sem consumir durabilidade e a um padrão de 1.024 FE por bloco.

Se uma ferramenta quebrar durante um lote, apenas os blocos concluídos são cobrados e as entradas não processadas permanecem. As propriedades Inquebrável e inquebrável ainda se aplicam.

## Espaços e automação

| Espaço | Capacidade |
| --- | ---: |
| Entrada de blocos | 4.096 |
| Ferramenta | 1 |
| Matriz | 8 |
| Saída ×9 | 4.096 cada |

O buffer interno comporta 4.000.000 FE e aceita FE de qualquer lado, ou energia do Applied Flux pela rede ME ou por uma frequência vinculada. Tubos podem inserir blocos, ferramentas e matrizes e extrair produtos.

A **Exportação Automática** e as configurações de lados de saída começam desativadas. Ative-as para enviar produtos a contêineres adjacentes nos lados selecionados. Um cartão de memória copia essas configurações, a frequência e a contagem de matrizes, retirando ou devolvendo matrizes do inventário do jogador.

## Compatibilidade

Suporta itens de bloco comuns e ferramentas com componente de durabilidade. Blocos com entidades de bloco (incluindo contêineres) e ferramentas que só usam energia não são suportados. Condições de saque que exigem contexto de mundo podem não se aplicar; mineração em área e corte em cadeia com motosserra não têm efeito.

<RecipeFor id="ae2lt:mining_factory" />
