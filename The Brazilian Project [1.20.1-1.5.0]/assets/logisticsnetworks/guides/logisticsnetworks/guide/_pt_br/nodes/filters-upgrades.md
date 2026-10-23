---
navigation:
  title: Filtros e Melhorias
  parent: nodes/index.md
  position: 3
---

# Filtros e Melhorias

![Painel do lado direito — grade de Filtros 3x3, grade de Melhorias 2x2, botão Documentação, botão Alterações](images/filters-upgrades-full.png)

O painel do lado direito da tela de configuração do nó guarda quatro coisas: uma grade 3x3 de espaços de filtro, uma grade 2x2 de espaços de melhoria, um botão **Documentação** e um botão **Alterações**. Cada um é coberto abaixo.

## Filtros

![Grade de Filtros 3x3 com botão Qualquer](images/filters-upgrades-filters.png)

**O que é:** uma grade 3x3 de 9 espaços de filtro mais um botão de alternância (rotulado **Qualquer** ou **Todos**) acima da grade.

**O que faz:** os espaços de filtro decidem quais recursos este canal pode mover. Solte itens de filtro nos 9 espaços para montar um conjunto de regras para o canal atual.

**Por canal, não por nó.** Os espaços de filtro pertencem a **um canal por vez** — o que estiver selecionado no [Cabeçalho](header.md). Troque para outro número de canal e os 9 espaços se reabastecem com os filtros daquele canal. Isso significa que todo canal tem seu próprio conjunto independente de 9 espaços de filtro, então um único nó pode rodar 9 configurações de filtro completamente diferentes.

**O que cabe nos espaços:**

- Só itens de filtro (Filtro Pequeno, Filtro Médio, Filtro Grande, Filtro de Tag, Filtro de Mod, Filtro de Quantidade, Filtro de Durabilidade, Filtro NBT, Filtro de Espaço, Filtro de Regex). Itens e blocos comuns são rejeitados.
- Para detalhes de cada tipo de filtro e como configurá-los, veja [Filtros](../filters.md).

**Espaços vazios = deixam tudo passar.** Se todos os 9 espaços estiverem vazios, o canal transfere qualquer recurso correspondente (sujeito ao Tipo — um canal de Item ainda só move itens, obviamente). Filtros são uma restrição opcional, não um requisito.

### O botão Qualquer / Todos

Clique no botão acima da grade de filtros para alternar entre os dois modos de correspondência:

- **Corresponder Qualquer** (padrão) — um recurso é permitido se passar por **pelo menos um** filtro. Os filtros funcionam como uma checklist de itens aceitáveis; qualquer filtro que diga "sim" é suficiente.
- **Corresponder Todos** — um recurso é permitido só se passar por **todo** filtro da grade. Os filtros funcionam como uma pilha de condições que têm que ser verdade ao mesmo tempo.

**Exemplo rápido:** suponha que você colocou um **Filtro de Tag** definido como `c:ores` e um **Filtro de Quantidade** definido para "manter 64 no baú" na grade do mesmo canal.

- **Corresponder Qualquer**: o canal moverá qualquer coisa com a tag `c:ores`, **ou** qualquer coisa que o Filtro de Quantidade permita. Qualquer regra dispara.
- **Corresponder Todos**: o canal só moverá itens que sejam **tanto** com a tag `c:ores` **quanto** passem no limite do Filtro de Quantidade.

**Como mudar:** clique esquerdo no botão para alternar entre Qualquer e Todos. A mudança vale instantaneamente para o canal atual.

## Melhorias

![Grade de Melhorias 2x2](images/filters-upgrades-upgrades.png)

**O que é:** uma grade 2x2 de 4 espaços de melhoria.

**O que faz:** itens de melhoria instalados aqui afetam o nó inteiro — eles aumentam os tetos de lote, baixam o atraso mínimo em tiques e destravam capacidades especiais (como os tipos de canal Químico e Fonte).

**Por nó, não por canal.** Este é o oposto dos Filtros. Melhorias são compartilhadas por **todos os 9 canais** do nó. Insira uma Melhoria de Diamante e todo canal do nó se beneficia do teto de lote maior e do atraso menor. Você não precisa (e não pode) instalar melhorias separadas para cada canal.

**O que cabe nos espaços:**

- Só itens de melhoria (Ferro / Ouro / Diamante / Netherita / Dimensional / Química do Mekanism / Fonte de Ars). Itens comuns são rejeitados.
- Para detalhes de cada melhoria e o que ela destrava, veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).

**Sem duplicatas.** Você não pode instalar duas da mesma melhoria num nó. O espaço recusa qualquer melhoria já presente nos outros espaços. Misture e combine — uma de Diamante, uma Dimensional, uma Química do Mekanism, uma de Fonte de Ars — para empilhar efeitos diferentes.

**Como instalar:** clique esquerdo num item de melhoria sobre um espaço vazio, ou shift-clique a partir do seu inventário. Clique esquerdo de novo (ou shift-clique para fora) para remover.

## Documentação

![Botão Documentação](images/filters-upgrades-docs.png)

**O que é:** o botão no canto inferior esquerdo do painel.

**O que faz:** abre o livro-guia do Logistics Networks — o próprio livro que você está lendo agora. Útil como atalho se você tiver uma dúvida no meio da configuração e não quiser fechar a tela do nó e procurar o livro no inventário.

**Como usar:** clique esquerdo. O livro abre. Feche-o para voltar à tela do nó.

## Alterações

![Botão Alterações](images/filters-upgrades-tweaks.png)

**O que é:** o botão no canto inferior direito do painel.

**O que faz:** abre um pequeno diálogo com amostras de tema. Temas recolorem a interface da tela do nó — Filtros, Melhorias, Cabeçalho e Configurações de Canal seguem o tema selecionado.

**Como usar:** clique esquerdo para abrir o diálogo. Clique em qualquer amostra para aplicar aquele tema. Feche o diálogo com o botão × no canto ou clicando fora dele. A escolha do tema é do lado do cliente e persiste entre sessões.

Alterações é puramente cosmético — o tema não tem efeito sobre transferências, filtros ou melhorias.
