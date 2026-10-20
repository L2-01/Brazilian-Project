---
navigation:
  title: Filtros e Melhorias
  parent: nodes/index.md
  position: 3
---

# Filtros e Melhorias

![Painel direito — grade de Filtros 3x2, grade de Melhorias 2x2, botão Docs, botão Ajustes](images/filters-upgrades-full.png)

O painel direito da tela de configuração do nó guarda quatro coisas: uma grade 3x2 de slots de filtro, uma grade 2x2 de slots de melhoria, um botão **Docs** e um botão **Ajustes**. Cada um é coberto abaixo.

## Filtros

![Grade de Filtros 3x2 de botões + com alternância Qualquer](images/filters-upgrades-filters.png)

**O que é:** uma grade 3x2 de 6 botões virtuais de filtro mais um botão de alternância (rotulado **Qualquer** ou **Todos**) acima da grade. Um botão vazio mostra um **+**; um configurado mostra seu tipo — **N** (Normal), **Mo** (Mod) ou **Rx** (Regex).

**O que faz:** os botões de filtro decidem quais recursos este canal pode mover.

- Use a **Interação Primária (padrão: Botão Esquerdo)** num botão vazio para abrir um pequeno seletor e escolher um tipo — **Normal**, **Mod** ou **Regex**. O filtro é criado e sua configuração abre.
- Use a Interação Primária num botão configurado para editar aquele filtro.
- Use a **Interação Secundária (padrão: Botão Direito)** num botão configurado para removê-lo (o slot volta a **+**).
- **Largue um item num botão** carregando-o e usando a Interação Primária para adicionar aquele item direto ao filtro.

**Por canal, não por nó.** Os slots de filtro pertencem a **um canal por vez** — o que estiver selecionado no [Cabeçalho](header.md). Mude para outro número de canal e os 6 slots se reenchem com os filtros daquele canal. Isso significa que cada canal tem seu próprio conjunto independente de 6 slots de filtro, então um único nó pode rodar 6 configurações de filtro completamente diferentes.

**Tipos de filtro disponíveis:**

- O seletor de botões cria filtros **Normal**, **Mod** ou **Regex**. Dentro de um filtro Normal você configura regras de item, fluido, produto químico, tag, NBT, durabilidade, encantamento, slot, lote e estoque, e ajusta sua capacidade.
- Para detalhes de cada tipo de filtro e como configurá-los, veja [Filtros](../filters/index.md).

**Slots vazios = deixa tudo passar.** Se todos os 6 slots estiverem vazios, o canal transfere qualquer recurso correspondente (sujeito ao Tipo — um canal de Item ainda só move itens, obviamente). Os filtros são um estreitamento opcional, não uma exigência.

### O botão Qualquer / Todos

Use a Interação Primária no botão acima da grade de filtros para alternar entre os dois modos de correspondência:

- **Qualquer Correspondência** (padrão) — um recurso é permitido se passar por **pelo menos um** filtro. Os filtros funcionam como uma lista de itens aceitáveis; qualquer filtro que diga "sim" basta.
- **Todas as Correspondências** — um recurso só é permitido se passar por **todos** os filtros da grade. Os filtros funcionam como uma pilha de condições que precisam ser verdade ao mesmo tempo.

**Exemplo rápido:** suponha que você pôs um **Filtro de Tag** definido como `c:ores` e um **Filtro de Quantidade** definido para "manter 64 no baú" na grade do mesmo canal.

- **Qualquer Correspondência**: o canal move qualquer coisa marcada com `c:ores`, **ou** qualquer coisa que o Filtro de Quantidade permita. Qualquer uma das regras dispara.
- **Todas as Correspondências**: o canal só move itens que são **ao mesmo tempo** marcados com `c:ores` **e** passam no limite do Filtro de Quantidade.

**Como mudar:** use a Interação Primária no botão para alternar entre Qualquer e Todos. A mudança vale na hora para o canal atual.

## Rotação de recursos

Num Remetente de Item ou Fluido com filtro, o botão **RR** ao lado da grade de filtros ativa a rotação de recursos. Ela vem desligada. Cada operação move um tipo de recurso correspondente distinto do armazenamento preso, e a próxima operação bem-sucedida começa depois daquele tipo. Slots duplicados contam como um tipo; componentes diferentes continuam distintos. Tipos bloqueados são pulados, e uma operação sem movimento deixa a vez inalterada. As regras existentes de lote, atraso, estoque, slot e distribuição de destinatário continuam valendo.

## Melhorias

![Grade de Melhorias 2x2](images/filters-upgrades-upgrades.png)

**O que é:** uma grade 2x2 de 4 slots de melhoria.

**O que faz:** os itens de melhoria instalados aqui afetam o nó inteiro — aumentam os tetos de lote, diminuem o atraso mínimo em tiques e desbloqueiam capacidades especiais (como os tipos de canal Químico e Fonte).

**Por nó, não por canal.** As melhorias são compartilhadas por **todos os 9 canais** do nó. Subir o nível define o Lote de cada canal no seu novo máximo e permite um atraso menor. Canais que não são de energia mantêm seu Atraso configurado até você mudá-lo.

**O que cabe nos slots:**

- Só itens de melhoria (Ferro / Ouro / Diamante / Netherita / Dimensional / Química do Mekanism / Fonte de Ars). Itens comuns são rejeitados.
- Para detalhes de cada melhoria e o que ela destrava, veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).

**Sem duplicatas.** Você não pode instalar duas da mesma melhoria num nó. O slot recusa qualquer melhoria já presente nos outros slots. Misture e combine — uma Diamante, uma Dimensional, uma Química do Mekanism, uma Fonte de Ars — para acumular efeitos diferentes.

**Como instalar:** clique com o botão esquerdo num item de melhoria para colocá-lo num slot vazio, ou use Shift+clique a partir do seu inventário. Clique com o botão esquerdo de novo (ou Shift+clique para retirar) para removê-la.

## Docs

![Botão Docs](images/filters-upgrades-docs.png)

**O que é:** o botão no canto inferior esquerdo do painel.

**O que faz:** abre o livro-guia do Logistics Networks — o próprio livro que você está lendo agora. Útil como atalho se você tiver uma dúvida no meio do ajuste e não quiser fechar a tela do nó e procurar o livro no inventário.

**Como usar:** use a Interação Primária. O livro abre. Feche-o para voltar à tela do nó.

## Ajustes

![Botão Ajustes](images/filters-upgrades-tweaks.png)

**O que é:** o botão no canto inferior direito do painel.

**O que faz:** abre um pequeno diálogo com amostras de tema. Os temas recolorem a interface da tela do nó — Filtros, Melhorias, Cabeçalho e Configurações de Canal seguem o tema selecionado.

**Como usar:** use a Interação Primária para abrir o diálogo e em qualquer amostra para aplicar aquele tema. Feche o diálogo com o botão × no canto ou usando a Interação Primária fora dele. A escolha do tema é do lado do cliente e persiste entre sessões.

Ajustes é puramente cosmético — o tema não tem efeito sobre transferências, filtros ou melhorias.
