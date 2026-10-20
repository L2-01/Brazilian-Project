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

- O seletor de botões cria filtros **Normal**, **Mod** ou **Regex**. Um filtro Normal tem uma grade fixa de 45 entradas. Cada entrada pode selecionar um item, fluido ou tag e adicionar regras de NBT, durabilidade, encantamento, slot, lote ou estoque.
- Para detalhes de cada tipo de filtro e como configurá-los, veja [Filtros](../filters/index.md).

**Slots vazios = deixa tudo passar.** Se todos os 6 slots estiverem vazios, o canal transfere qualquer recurso correspondente (sujeito ao Tipo — um canal de Item ainda só move itens, obviamente). Os filtros são um estreitamento opcional, não uma exigência.

### O botão Qualquer / Todos

Use a Interação Primária no botão acima da grade de filtros para alternar entre os dois modos de correspondência:

- **Qualquer Correspondência** (padrão) — um recurso é permitido se passar por **pelo menos um** filtro. Os filtros funcionam como uma lista de itens aceitáveis; qualquer filtro que diga "sim" basta.
- **Todas as Correspondências** — um recurso só é permitido se passar por **todos** os filtros da grade. Os filtros funcionam como uma pilha de condições que precisam ser verdade ao mesmo tempo.

**Exemplo rápido:** suponha que você pôs um filtro **Normal** com uma entrada definida como `#c:ores` e um filtro **Mod** definido como `minecraft` na grade do mesmo canal.

- **Qualquer Correspondência**: o canal move qualquer coisa marcada com `c:ores`, **ou** qualquer coisa do `minecraft`. Qualquer filtro pode aceitar o recurso.
- **Todas as Correspondências**: o canal só move recursos que são **ao mesmo tempo** marcados com `c:ores` **e** do `minecraft`.

**Como mudar:** use a Interação Primária no botão para alternar entre Qualquer e Todos. A mudança vale na hora para o canal atual.

## Rotação de recursos

Num Remetente de Item ou Fluido com filtro, o botão **RR** ao lado da grade de filtros ativa a rotação de recursos. Ela vem desligada. Cada operação move um tipo de recurso correspondente distinto do armazenamento preso, e a próxima operação bem-sucedida começa depois daquele tipo. Slots duplicados contam como um tipo; componentes diferentes continuam distintos. Tipos bloqueados são pulados, e uma operação sem movimento deixa a vez inalterada. As regras existentes de lote, atraso, estoque, slot e distribuição de destinatário continuam valendo.

## Melhorias

![Grade de Melhorias 2x2](images/filters-upgrades-upgrades.png)

**O que é:** uma grade 2x2 de 4 slots de melhoria.

**O que faz:** melhorias de desempenho aumentam os tetos de lote e diminuem o atraso mínimo em tiques. A Melhoria Dimensional permite transferências entre dimensões.

**Por nó, não por canal.** As melhorias são compartilhadas por **todos os 9 canais** do nó. Subir o nível define o Lote de cada canal no seu novo máximo e permite um atraso menor. Canais que não são de energia mantêm seu Atraso configurado até você mudá-lo.

**O que cabe nos slots:**

- Só itens de melhoria são aceitos. Itens comuns são rejeitados.
- Para detalhes de cada melhoria e o que ela destrava, veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).

As melhorias Químicas do Mekanism e de Fonte do Ars são mantidas para compatibilidade futura, mas no momento não ativam essas integrações.

**Sem duplicatas.** Você não pode instalar duas da mesma melhoria num nó. O slot recusa qualquer melhoria já presente nos outros slots.

**Como instalar:** use a Interação Primária para colocar um item de melhoria num slot vazio, ou use Tecla Modificadora 1 + Interação Primária a partir do seu inventário. Use os mesmos controles para removê-la.

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
