---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter, logisticsnetworks:mod_filter, logisticsnetworks:name_filter]
navigation:
  title: Filtros
  position: 4
---

# Filtros

Filtros são regras virtuais de canal que decidem exatamente quais recursos um canal pode mover. Abra-os pela grade de filtros 3x2 no lado direito da tela do nó; veja [Filtros e Melhorias](../nodes/filters-upgrades.md).

Sem nenhum filtro, o canal transfere tudo que corresponder ao seu Tipo. Adicione um filtro e só os recursos que passarem nas regras dele vão adiante.

Espaços de filtro são **por canal**. Todo canal de um nó mantém seu próprio conjunto independente de 6 botões de filtro, então um nó pode rodar 6 configurações de filtro totalmente diferentes ao mesmo tempo.

## Emissor vs Receptor

Filtros existem tanto em Emissores quanto em Receptores, mas fazem trabalhos diferentes dependendo de em qual lado da transferência você os coloca:

- **Emissor (exportador)**: o filtro decide **o que o Emissor puxa** de dentro do bloco ao qual está anexo. Apenas recursos que passam no filtro são extraídos e oferecidos à rede.
- **Receptor (importador)**: o filtro decide **o que o Receptor aceita** para dentro do bloco ao qual está anexo. A rede pode estar cheia de recursos, mas o Receptor só pega os que passam no seu filtro.

A maioria das configurações coloca filtros nos dois lados. Um filtro no lado do Emissor decide o que sai da origem; um filtro no lado do Receptor decide o que chega ao destino. Um padrão comum é um Emissor puxando uma variedade ampla de itens de um baú de descarte, e vários Receptores cada um filtrando um subconjunto restrito.

Lista Branca / Lista Negra, Corresponder Qualquer / Corresponder Todos e toda regra por entrada respeitam essa divisão Emissor-vs-Receptor. Estoque em particular muda de significado entre os dois lados, já que "manter uma reserva" e "limitar o destino" não são a mesma coisa.

## Lista Branca vs Lista Negra

Todo filtro tem dois modos:

- **Lista Branca**: o filtro é uma lista de coisas que o canal **pode** mover. Qualquer coisa fora da lista é bloqueada.
- **Lista Negra**: o filtro é uma lista de coisas que o canal **não pode** mover. Todo o resto passa.

Abra um filtro virtual pela grade de filtros do nó para trocar o modo.

## Corresponder Qualquer vs Corresponder Todos

Quando um canal tem mais de um filtro na grade, o botão **Qualquer / Todos** no topo do painel de Filtros decide como eles se combinam:

- **Corresponder Qualquer**: um recurso passa se **pelo menos um** filtro o aceitar.
- **Corresponder Todos**: um recurso só passa se **todo** filtro o aceitar.

Para um passo a passo completo, veja [Filtros e Melhorias](../nodes/filters-upgrades.md#filters).

## Tipos de Filtro

### Filtro Normal

Escolha **Filtro Normal** no seletor de filtros do canal para abrir sua grade de **45 entradas**.

- Corresponde a ids exatos de itens e fluidos.
- Coloque qualquer item ou balde de fluido em um espaço de entrada para adicioná-lo à lista.
- Arraste um item ou fluido do EMI ou do JEI sobre uma entrada para adicionar uma regra fantasma.
- Remova a entrada para tirá-la da lista.
- Espaços de entrada vazios são ignorados.

Cada entrada também pode abrir uma página de Detalhes para correspondência por tag, substituições de lote, limites de estoque, regras de NBT e restrições de espaço do inventário anexo.

### Mod

Filtros de Mod correspondem a todo item ou fluido de um id de mod configurado.

- Defina o id do mod, como `minecraft`, `create`, `mekanism` ou `ae2`.
- Um filtro de Mod corresponde a um mod.
- Para corresponder a vários mods, coloque múltiplos filtros de Mod no mesmo canal e use **Corresponder Qualquer**.

### Regex

Filtros de Regex correspondem aos nomes de exibição dos recursos com sintaxe de regex restrita e insensível a maiúsculas.

- O comprimento máximo do padrão é 128 caracteres.
- Suportado: literais, `.`, classes de caracteres como `[A-Z]`, `^`, `$`, pontuação escapada e alternativas `|` de nível superior.
- Não suportado: grupos, lookarounds, retrovisores, flags inline e operadores de repetição `*`, `+`, `?` ou `{...}`.
- A correspondência busca no nome completo, então `Iron` já corresponde a `Iron Ingot`; `.*Iron.*` é desnecessário e rejeitado.
- Padrões inseguros ou malformados permanecem visíveis para correção, mas não correspondem a nada.

Para itens, o botão de escopo escolhe o que é pesquisado:

- **Nome**: apenas o nome do item.
- **Tooltip**: as linhas do tooltip abaixo do nome (encantamentos, lore, info do mod).
- **Ambos**: o nome e as linhas do tooltip.

Fluidos e químicos sempre correspondem pelo nome. Em um servidor dedicado, o texto do tooltip vem do servidor, em inglês, então linhas que um mod só adiciona no cliente não são vistas. Se o código de tooltip de um mod falhar no servidor, o filtro usa as linhas que ainda conseguiu ler.

Exemplos comuns:

| Padrão | Corresponde |
|---------|---------|
| `Iron` | Qualquer coisa contendo "Iron" |
| `^Iron` | Nomes começando com "Iron" |
| `Ingot$` | Nomes terminando com "Ingot" |
| `^Iron Ingot$` | Exatamente "Iron Ingot" |
| `Iron|Gold` | Nomes contendo "Iron" ou "Gold" |
| `[IG]ron` | "Iron" ou "Gron" |

Padrões compilados são reutilizados durante cada operação de transferência. Mantenha as expressões restritas em canais de alto tráfego.

### Espaço

Filtros de Espaço restringem quais índices de espaço do bloco anexo o canal pode ler ou escrever.

- Use espaços e intervalos separados por vírgula, como `0`, `0-8` ou `0-3,5`.
- Índices de espaço válidos são `0` a `53`.
- Em Emissores, apenas os espaços de origem listados são extraídos.
- Em Receptores, apenas os espaços de destino listados recebem inserção.

## Detalhes da Entrada

Todo espaço da grade principal de um Filtro Normal é mais que uma verificação de item único. Abra a página de Detalhes de uma entrada preenchida para configurar estas regras por entrada:

- **Item ou #tag**: corresponde a um id exato como `minecraft:iron_ingot`, ou a uma tag como `#c:ores`.
- **Lote**: substitui quantos desta entrada se movem por transferência no lado do Emissor.
- **Estoque**: reserva itens em Emissores, ou limita o estoque do destino em Receptores.
- **NBT**: adiciona até 6 regras ativas de NBT/componente, ou cole SNBT puro para casos avançados.
- **Espaços**: restringe esta entrada a índices de espaço específicos do inventário anexo.

Deixe Lote ou Estoque em `0` para cair de volta nas configurações do canal ou desabilitar o limite.

Lote e Estoque também aceitam contas simples como `64*7`. O resultado aparece ao pressionar Enter.

## Copiar e Colar um Filtro

Com uma tela de filtro aberta, você pode copiar sua configuração inteira e colá-la em outro filtro aberto. Use **Ctrl+C** para copiar e **Ctrl+V** para colar, ou use a **Interação Primária (padrão: Botão Esquerdo)** nos botões de ícone de **copiar** e **colar** no canto superior direito do cabeçalho do filtro. Passe o cursor em qualquer um deles para ver o tooltip; o botão de colar fica esmaecido até algo ser copiado.

Esta área de transferência vive apenas na sua sessão de jogo atual. Ela **não** é salva no item de filtro, numa config ou na área de transferência do seu sistema operacional, e é limpa ao sair do jogo. É separada da área de transferência de [Copiar / Colar](../wrench/copy-paste.md) da chave.

O que é copiado depende do tipo de filtro:

- **Filtro Normal**: toda entrada mais suas regras por entrada — item, fluido, químico ou `#tag`, quantidades de lote e estoque, mapeamento de espaços, NBT (flag estrita, SNBT puro, regras e modo Corresponder Qualquer/Todos), durabilidade e estado encantado — junto do modo Lista Branca/Lista Negra e do Tipo do filtro.
- **Mod**: modo Lista Branca/Lista Negra, Tipo e o id de mod selecionado.
- **Regex**: modo Lista Branca/Lista Negra, Tipo, o padrão de regex e o escopo de correspondência.

Uma mensagem curta sobreposta confirma cada ação (`Filter copied`, `Filter pasted` e assim por diante).

Notas:

- Colar **substitui** o filtro de destino. Os espaços do filtro padrão são limpos primeiro e depois preenchidos a partir da área de transferência.
- Se o filtro copiado tiver mais entradas do que o destino comporta, a colagem preenche o destino até a capacidade e informa a truncagem, por exemplo `Filter pasted: 6/8 slots copied`.
- Colar em um tipo de filtro diferente (um filtro padrão num filtro Regex, por exemplo) é rejeitado com uma mensagem de tipo incompatível.
- Ctrl+C e Ctrl+V são ignorados enquanto uma caixa de texto como o campo de regex ou de id de mod estiver focada, então a digitação nunca é sequestrada.

## Copiando Filtros entre Nós

Configurações de filtro também são copiadas com o copiar/colar de nós, a sincronia de nós rotulados e os fluxos de salvar/carregar `.lnet`. Para limpar um filtro virtual, limpe suas entradas dentro do menu do filtro.
