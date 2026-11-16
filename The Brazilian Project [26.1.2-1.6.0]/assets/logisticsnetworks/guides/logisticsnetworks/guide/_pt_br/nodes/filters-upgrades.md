---
navigation:
  title: Filtros e Melhorias
  parent: nodes/index.md
  position: 3
---

# Filtros e Melhorias

![Right-side panel — Filters 3x2 grid, Upgrades 2x2 grid, Docs button, Tweaks button](images/filters-upgrades-full.png)

O painel direito da tela de configuração do nó guarda quatro coisas: uma grade 3x2 de espaços de filtro, uma grade 2x2 de espaços de melhoria, um botão **Documentação** e um botão **Alterações**. Cada um é coberto abaixo.

## Filtros

![Grade 3x2 de botões + de filtro com alternância Qualquer](images/filters-upgrades-filters.png)

**O que é:** uma grade 3x2 de 6 botões de filtro virtuais mais um botão de alternância (rotulado **Qualquer** ou **Todos**) acima da grade. Um botão vazio mostra um **+**; um configurado mostra seu tipo — **N** (Padrão), **Mo** (Mod) ou **Rx** (Regex).

**O que faz:** os botões de filtro decidem quais recursos este canal pode mover.

- Use **Interação Primária (padrão: Clique Esquerdo)** num botão vazio para abrir um pequeno seletor e escolher um tipo — **Padrão**, **Mod** ou **Regex**. O filtro é criado e sua configuração abre.
- Use Interação Primária num botão configurado para editar aquele filtro.
- Use **Interação Secundária (padrão: Clique Direito)** num botão configurado para removê-lo (o espaço volta a **+**).
- **Solte um item num botão** carregando-o e usando Interação Primária para adicionar aquele item direto ao filtro.

**Por canal, não por nó.** Os espaços de filtro pertencem a **um canal por vez** — aquele selecionado no [Cabeçalho](header.md). Troque para outro número de canal e os 6 espaços se preenchem com os filtros daquele canal. Isso significa que cada canal tem seu próprio conjunto independente de 6 espaços de filtro, então um único nó pode rodar 6 configurações de filtro completamente diferentes.

**Tipos de filtro disponíveis:**

- O seletor de botões cria filtros **Padrão**, **Mod** ou **Regex**. Um filtro Padrão tem uma grade fixa de 45 entradas. Cada entrada pode selecionar um item, fluido ou tag e adicionar regras de NBT, durabilidade, encantamento, espaço, lote ou estoque.
- Para detalhes de cada tipo de filtro e como configurá-los, veja [Filtros](../filters/index.md).

**Espaços vazios = passa tudo.** Se os 6 espaços estiverem vazios, o canal transfere qualquer recurso correspondente (sujeito ao Tipo — um canal de Itens ainda só move itens, obviamente). Filtros são um estreitamento opcional, não uma exigência.

### O botão Qualquer / Todos

Use Interação Primária no botão acima da grade de filtros para alternar entre os dois modos de correspondência:

- **Corresponder Qualquer** (padrão) — um recurso é permitido se passar em **ao menos um** filtro. Os filtros funcionam como uma lista de itens aceitáveis; qualquer filtro que diga "sim" basta.
- **Corresponder Todos** — um recurso só é permitido se passar em **todos** os filtros da grade. Os filtros funcionam como uma pilha de condições que precisam ser verdade ao mesmo tempo.

**Exemplo rápido:** suponha que você colocou um filtro **Padrão** com uma entrada definida como `#c:ores` e um filtro **Mod** definido como `minecraft` na grade do mesmo canal.

- **Corresponder Qualquer**: o canal move qualquer coisa com a tag `c:ores`, **ou** qualquer coisa de `minecraft`. Qualquer filtro pode aceitar o recurso.
- **Corresponder Todos**: o canal só move recursos que são **ao mesmo tempo** tagueados `c:ores` **e** de `minecraft`.

**Como mudar:** use Interação Primária no botão para alternar entre Qualquer e Todos. A mudança tem efeito instantâneo para o canal atual.

## Rodízio de recursos

Num Emissor de Item ou Fluido com filtro, o botão **RR** ao lado da grade de filtros ativa o rodízio de recursos. Ele fica desligado por padrão. Cada operação move um tipo de recurso correspondente distinto do armazenamento anexado, e a próxima operação bem-sucedida começa depois daquele tipo. Espaços duplicados contam como um tipo; componentes diferentes continuam distintos. Tipos bloqueados são pulados, e nenhum movimento deixa a vez inalterada. As regras existentes de lote, atraso, estoque, espaço e distribuição de receptores continuam valendo.

## Melhorias

![Upgrades 2x2 grid](images/filters-upgrades-upgrades.png)

**O que é:** uma grade 2x2 de 4 espaços de melhoria.

**O que faz:** melhorias de desempenho aumentam os tetos de lote e diminuem o atraso mínimo de tiques. A Melhoria Dimensional habilita transferências entre dimensões.

**Por nó, não por canal.** As melhorias são compartilhadas por **todos os 9 canais** do nó. Aumentar o nível define o Lote de cada canal para o novo máximo e permite um atraso menor. Canais que não são de energia mantêm seu Atraso configurado até você mudá-lo.

**O que cabe nos espaços:**

- Só itens de melhoria são aceitos. Itens comuns são rejeitados.
- Para detalhes de cada melhoria e o que ela desbloqueia, veja [Melhorias de Desempenho](upgrades-performance.md) e [Melhorias Especiais](upgrades-special.md).

As melhorias Mekanism Chemical e Ars Source são mantidas para compatibilidade futura, mas atualmente não habilitam essas integrações.

**Sem duplicatas.** Você não pode instalar duas melhorias iguais num nó. O espaço recusa qualquer melhoria que já esteja presente nos outros espaços.

**Como instalar:** use Interação Primária para colocar um item de melhoria num espaço vazio, ou use Tecla Modificadora 1 + Interação Primária a partir do seu inventário. Use os mesmos controles para removê-la.

## Documentação

![Docs button](images/filters-upgrades-docs.png)

**O que é:** o botão no canto inferior esquerdo do painel.

**O que faz:** abre o livro-guia do Logistics Networks — o próprio livro que você está lendo agora. Útil como atalho se surgir uma dúvida no meio do setup e você não quiser fechar a tela do nó e procurar o livro no inventário.

**Como usar:** use Interação Primária. O livro abre. Feche-o para voltar à tela do nó.

## Alterações

![Tweaks button](images/filters-upgrades-tweaks.png)

**O que é:** o botão no canto inferior direito do painel.

**O que faz:** abre um pequeno diálogo com amostras de tema. Os temas recolorem a UI da tela do nó — Filtros, Melhorias, Cabeçalho e Configurações de Canal seguem todos o tema selecionado.

**Como usar:** use Interação Primária para abrir o diálogo e em qualquer amostra para aplicar aquele tema. Feche o diálogo com o botão × no canto ou usando Interação Primária fora dele. A escolha de tema é do lado do cliente e persiste entre sessões.

Alterações é puramente cosmético — o tema não tem efeito sobre transferências, filtros ou melhorias.
