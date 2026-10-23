---
navigation:
  title: Filtros e Melhorias
  parent: nodes/index.md
  position: 3
---

# Filtros e Melhorias

![Painel direito — grade de Filtros 3x2, grade de Melhorias 2x2, botão Docs, botão Ajustes](images/filters-upgrades-full.png)

O painel direito da tela de configuração do nó guarda quatro coisas: uma grade 3x2 de espaços de filtro, uma grade 2x2 de espaços de melhoria, um botão **Docs** e um botão **Ajustes**. Cada um é coberto abaixo.

## Filtros

![Grade de Filtros 3x2 de botões + com alternância Qualquer](images/filters-upgrades-filters.png)

**O que é:** uma grade 3x2 de 6 botões virtuais de filtro mais um botão de alternância (rotulado **Qualquer** ou **Todos**) acima da grade. Um botão vazio mostra um **+**; um configurado mostra seu tipo — **N** (Normal), **Mo** (Mod) ou **Rx** (Regex).

**O que faz:** os botões de filtro decidem quais recursos este canal pode mover.

- Use a **Interação Primária (padrão: Botão Esquerdo)** em um botão vazio para abrir um pequeno seletor e escolher um tipo — **Normal**, **Mod** ou **Regex**. O filtro é criado e sua configuração abre.
- Use a Interação Primária em um botão configurado para editar aquele filtro.
- Use a **Interação Secundária (padrão: Botão Direito)** em um botão configurado para removê-lo (o espaço volta a ser **+**).
- **Solte um item sobre um botão** carregando-o e usando a Interação Primária para adicionar aquele item direto ao filtro.

**Por canal, não por nó.** Os espaços de filtro pertencem a **um canal por vez** — o que estiver selecionado no [Cabeçalho](header.md). Troque para outro número de canal e os 6 espaços se preenchem com os filtros daquele canal. Isso significa que todo canal tem seu próprio conjunto independente de 6 espaços de filtro, então um único nó pode rodar 6 configurações de filtro completamente diferentes.

**Tipos de filtro disponíveis:**

- O seletor de botões cria filtros **Normal**, **Mod** ou **Regex**. Dentro de um filtro Normal você configura regras de item, fluido, químico, tag, NBT, durabilidade, encantado, espaço, lote e estoque, e ajusta sua capacidade.
- Para detalhes sobre cada tipo de filtro e como configurá-los, veja [Filtros](../filters/index.md).

**Espaços vazios = passa tudo.** Se os 6 espaços estiverem vazios, o canal transfere qualquer recurso correspondente (sujeito ao Tipo — um canal de Itens ainda só move itens, obviamente). Filtros são um refinamento opcional, não uma exigência.

### O botão Qualquer / Todos

Use a Interação Primária no botão acima da grade de filtros para alternar entre os dois modos de correspondência:

- **Corresponder Qualquer** (padrão) — um recurso é permitido se passar em **pelo menos um** filtro. Os filtros funcionam como uma lista de itens aceitáveis; qualquer filtro que diga "sim" basta.
- **Corresponder Todos** — um recurso só é permitido se passar em **todos** os filtros da grade. Os filtros funcionam como uma pilha de condições que precisam ser todas verdadeiras ao mesmo tempo.

**Exemplo rápido:** suponha que você coloque um **Filtro de Tag** definido como `c:ores` e um **Filtro de Quantidade** definido para "manter 64 no baú" na grade do mesmo canal.

- **Corresponder Qualquer**: o canal moverá qualquer coisa marcada com `c:ores`, **ou** qualquer coisa que o Filtro de Quantidade permitir. Qualquer uma das regras basta.
- **Corresponder Todos**: o canal só moverá itens que sejam **tanto** marcados com `c:ores` **quanto** passem no limite do Filtro de Quantidade.

**Como alterar:** use a Interação Primária no botão para alternar entre Qualquer e Todos. A mudança tem efeito instantâneo para o canal atual.

## Rodízio de recursos

Em um Emissor de Itens ou Fluidos com filtro, o botão **RR** ao lado da grade de filtros ativa o rodízio de recursos. Fica desligado por padrão. Cada operação move um tipo de recurso correspondente distinto do armazenamento anexo, e a próxima operação bem-sucedida começa a partir do tipo seguinte. Espaços duplicados contam como um tipo; componentes diferentes continuam distintos. Tipos bloqueados são ignorados, e nenhuma movimentação deixa a vez inalterada. As regras existentes de lote, atraso, estoque, espaço e distribuição entre receptores continuam valendo.

## Melhorias

![Grade de Melhorias 2x2](images/filters-upgrades-upgrades.png)

**O que é:** uma grade 2x2 de 4 espaços de melhoria.

**O que faz:** itens de melhoria instalados aqui afetam o nó inteiro — eles aumentam os limites de lote, diminuem o atraso mínimo em ticks e desbloqueiam capacidades especiais (como os tipos de canal Químico e Fonte).

**Por nó, não por canal.** As melhorias são compartilhadas por **todos os 9 canais** do nó. Aumentar o nível define o Lote de cada canal em seu novo máximo e permite um atraso menor. Canais que não são de energia mantêm seu Atraso configurado até você mudá-lo.

**O que cabe nos espaços:**

- Apenas itens de melhoria (Ferro / Ouro / Diamante / Netherita / Dimensional / Química do Mekanism / Fonte de Ars). Itens comuns são rejeitados.
- Para detalhes sobre cada melhoria e o que ela desbloqueia, veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).

**Sem duplicatas.** Você não pode instalar duas da mesma melhoria em um nó. O espaço recusa qualquer melhoria já presente nos outros espaços. Misture — uma de Diamante, uma Dimensional, uma Química do Mekanism, uma de Fonte de Ars — para empilhar efeitos diferentes.

**Como instalar:** clique com o botão esquerdo em um item de melhoria para colocá-lo em um espaço vazio, ou shift+clique do seu inventário. Clique de novo com o botão esquerdo (ou shift+clique para tirar) para remover.

## Docs

![Botão Docs](images/filters-upgrades-docs.png)

**O que é:** o botão no canto inferior esquerdo do painel.

**O que faz:** abre o livro-guia do Logistics Networks — o próprio livro que você está lendo agora. Útil como atalho se você tiver uma dúvida no meio da configuração e não quiser fechar a tela do nó para achar o livro no inventário.

**Como usar:** use a Interação Primária. O livro abre. Feche-o para voltar à tela do nó.

## Ajustes

![Botão Ajustes](images/filters-upgrades-tweaks.png)

**O que é:** o botão no canto inferior direito do painel.

**O que faz:** abre um pequeno diálogo com amostras de tema. Os temas recolorem a interface da tela do nó — Filtros, Melhorias, Cabeçalho e Configurações de Canal seguem o tema selecionado.

**Como usar:** use a Interação Primária para abrir o diálogo e em qualquer amostra para aplicar aquele tema. Feche o diálogo com o botão × no canto ou usando a Interação Primária fora dele. A escolha do tema é do lado do cliente e persiste entre sessões.

Ajustes é puramente cosmético — o tema não tem efeito sobre transferências, filtros ou melhorias.
