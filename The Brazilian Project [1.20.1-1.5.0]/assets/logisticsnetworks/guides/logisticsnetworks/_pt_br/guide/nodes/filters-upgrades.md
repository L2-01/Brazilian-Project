---
navigation:
  title: Filtros e Melhorias
  parent: nodes/index.md
  position: 3
---

# Filtros e Melhorias

![Painel de Filtros e Melhorias — grade de filtros 3x3, grade de melhorias 3x2, botão Ajustes](images/filters-upgrades-full.png)

O painel abaixo das Configurações do Canal. Dois grupos de espaços que são *lado a lado* mas significam coisas diferentes:

- **Filtros** (a grade 3x3 à esquerda) — por **canal**. Mudam quando você troca o número de canal no Cabeçalho.
- **Melhorias** (a grade 3x2 à direita) — por **nó**. Compartilhadas entre todos os 9 canais do nó.

E no canto direito o botão **Ajustes** abre opções avançadas por canal.

## Filtros

![Grade de Filtros 3x3](images/filters-grid.png)

**O que é:** nove espaços onde você larga itens de Filtro (o próprio item — Filtro Pequeno, Filtro de Tag, Filtro Regex, etc. — não um punhado de blocos).

**O que faz:** decide quais recursos este canal pode transferir. Quando um canal tem filtros instalados, uma tentativa de transferência pergunta a todos os filtros "este recurso passa?" — e usa suas respostas combinadas para decidir. Sem filtros, o canal transfere tudo que corresponde ao seu Tipo.

**Lista-Branca vs Lista-Negra:** cada item de filtro carrega sua própria alternância de modo que você define segurando-o na mão — clique com o botão direito num item de filtro na sua mão para abrir seu menu, alterne Lista-Branca / Lista-Negra ali, depois coloque-o de volta no espaço do canal. A configuração de modo é armazenada no item do filtro, não no canal, então o mesmo item de filtro pode ser Lista-Branca num espaço e Lista-Negra em outro (apenas reconfigure-o antes de mover entre canais, ou duplique-o numa grade de fabricação — veja a página de cada filtro para a receita de cópia).

## Botão Qualquer / Todos

![Botão Qualquer](images/filters-any.png)

![Botão Todos](images/filters-all.png)

**O que é:** o botão do cabeçalho do painel de Filtros. Mostra o modo de combinação atual da grade.

**O que faz:** quando mais de um filtro está instalado no canal, cada filtro retorna "sim" ou "não" para uma transferência. Este botão decide como essas respostas são combinadas:

- **Qualquer** — se pelo menos um filtro retorna "sim", a transferência é permitida.
- **Todos** — se pelo menos um filtro retorna "não", a transferência é bloqueada. Todo filtro precisa concordar.

**Exemplo (Qualquer):** um canal com um Filtro de Tag correspondendo `#forge:ingots` *e* um Filtro Regex correspondendo `^Raw `. Qualquer = "passe se for um lingote OU começar com Raw".

**Exemplo (Todos):** o mesmo par de filtros. Todos = "passe apenas se for um lingote E começar com Raw" — ou seja, apenas lingotes brutos.

**Como mudar:** clique esquerdo no botão para alternar entre Qualquer e Todos.

## Espaços de Melhoria

![Grade de Melhorias 3x2](images/upgrades-grid.png)

**O que é:** seis espaços onde você larga itens de melhoria — os físicos.

**O que faz:** eleva os tetos do nó ou desbloqueia tipos de canal. Duas famílias:

1. **Melhorias de desempenho** (Ferro / Ouro / Diamante / Netherita) — aumentam a quantidade máxima por transferência e reduzem o atraso mínimo entre transferências. Cobertas em detalhe em [Melhorias de Desempenho](upgrades-performance.md).
2. **Melhorias especiais** (Dimensional / Química do Mekanism / Fonte de Ars) — desbloqueiam transferências entre dimensões e tipos de recursos especiais. Cobertas em [Melhorias Especiais](upgrades-special.md).

**Pegadinha:** as melhorias são por nó, não por canal. Quaisquer que você instale aqui afetam todos os 9 canais deste nó ao mesmo tempo.

## Botão Ajustes

![Botão Ajustes](images/adjustments.png)

![Painel de Ajustes aberto — Cant. Exata, Extrair Só, Dano Ignor., NBT Ignor., Espaço Est.](images/adjustments-panel.png)

**O que é:** um pequeno botão no canto direito do painel de Filtros e Melhorias. Abre uma sobreposição com cinco alternâncias — uma por comportamento avançado — que se aplicam ao canal selecionado no momento.

**O que faz:** cada alternância modifica uma única parte do comportamento de correspondência ou transferência do canal:

| Alternância | Efeito |
|--------------|--------|
| **Cant. Exata** | Exige que uma tentativa de transferência mova a pilha inteira. Se apenas parte da pilha puder ser movida (por exemplo, o destino tem 3 vagas mas o lote pede 10), o Emissor **não** transfere nada — em vez de mover o lote parcial de 3. Útil para roteamento rígido onde meia pilha quebraria um contador ou fabricador. |
| **Extrair Só** | O Emissor para de tentar inserir num Receptor — em vez disso apenas **extrai** da origem e descarta. Útil como válvula de purga. Sem efeito em Receptores. |
| **Dano Ignor.** | Ignora o valor de durabilidade/dano de um item ao corresponder. Ferramentas e armaduras com qualquer dano contam como o mesmo item. Útil para canalizar "toda Picareta de Diamante danificada" sem filtrar por NBT específico. |
| **NBT Ignor.** | Remove dados de componente/NBT da correspondência. Duas pilhas do mesmo item mas com NBT diferente contam como iguais. Útil para corresponder itens encantados ou nomeados apenas pelo seu tipo base. |
| **Espaço Est.** | Força o Emissor a calcular uma quantidade máxima em **estática** (uma vez, em vez de por pilha). Pouco útil para a maioria das configurações; use apenas se um mod sensível a side-effects reclamar sobre a extração iterativa do Emissor. |

**Como mudar:** clique esquerdo em qualquer alternância para ligá-la ou desligá-la.

**Pegadinha:** os Ajustes são por canal. Cada um dos 9 canais tem seu próprio conjunto das cinco alternâncias — trocar de número de canal mostra os Ajustes daquele canal.

---

Para o que os filtros correspondem além de "o mesmo item" — verifique a página de cada filtro em [Filtros](../filters/index.md). Para o que cada melhoria desbloqueia — veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).
