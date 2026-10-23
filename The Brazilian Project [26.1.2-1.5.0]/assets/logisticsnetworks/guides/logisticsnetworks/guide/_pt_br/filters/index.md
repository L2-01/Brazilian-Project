---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter, logisticsnetworks:mod_filter, logisticsnetworks:name_filter]
navigation:
  title: Filtros
  position: 4
---

# Filtros

Filtros são regras virtuais de canal que decidem exatamente quais recursos um canal pode mover. Abra-os pela grade de filtros 3x2 à direita da tela do nó; veja [Filtros e Melhorias](../nodes/filters-upgrades.md).

Sem nenhum filtro, o canal transfere tudo que corresponde ao seu Tipo. Adicione um filtro e só os recursos que passarem nas regras dele atravessam.

Os espaços de filtro são **por canal**. Cada canal de um nó mantém seu próprio conjunto independente de 6 botões de filtro, então um nó pode rodar 6 configurações de filtro totalmente diferentes ao mesmo tempo.

## Emissor vs Receptor

Filtros vivem tanto em Emissores quanto em Receptores, mas fazem trabalhos diferentes dependendo do lado da transferência em que você os coloca:

- **Emissor (exportador)**: o filtro decide **o que o Emissor retira** do bloco ao qual está anexado. Só os recursos que passam no filtro são extraídos e oferecidos à rede.
- **Receptor (importador)**: o filtro decide **o que o Receptor aceita** no bloco ao qual está anexado. A rede pode estar cheia de recursos, mas o Receptor só pega os que passam no seu filtro.

A maioria dos setups põe filtros nos dois lados. Um filtro do lado do Emissor decide o que sai da fonte; um filtro do lado do Receptor decide o que chega ao destino. Um padrão comum é um Emissor puxando uma variedade de itens de um baú de despejo, e vários Receptores filtrando cada um um subconjunto estreito.

Lista-Branca / Lista-Negra, Corresponder Qualquer / Corresponder Todos e todas as regras por entrada honram essa divisão Emissor-vs-Receptor. Estoque em particular troca de significado entre os dois lados, já que "manter uma reserva" e "limitar o destino" não são a mesma coisa.

## Lista-Branca vs Lista-Negra

Todo filtro tem dois modos:

- **Lista-Branca**: o filtro é uma lista de coisas que o canal **pode** mover. Qualquer coisa fora da lista é bloqueada.
- **Lista-Negra**: o filtro é uma lista de coisas que o canal **não pode** mover. Todo o resto passa.

Abra um filtro virtual pela grade de filtros do nó para alternar o modo.

## Corresponder Qualquer vs Corresponder Todos

Quando um canal tem mais de um filtro na grade, o botão **Qualquer / Todos** no topo do painel Filtros decide como eles se combinam:

- **Corresponder Qualquer**: um recurso passa se **ao menos um** filtro o aceita.
- **Corresponder Todos**: um recurso só passa se **todos** os filtros o aceitam.

Para um passo a passo completo, veja [Filtros e Melhorias](../nodes/filters-upgrades.md#filters).

## Tipos de filtro

### Filtro Padrão

Escolha **Padrão** no seletor de filtros do canal para abrir sua grade de **45 entradas**.

- Corresponde ids exatos de itens e de fluidos.
- Coloque qualquer item ou balde de fluido num espaço de entrada para adicioná-lo à lista.
- Arraste um item ou fluido do JEI até uma entrada para adicionar uma regra fantasma.
- Remova a entrada para tirá-la da lista.
- Espaços de entrada vazios são ignorados.

Cada entrada também pode abrir uma página de Detalhes para correspondência por tag, substituição de lote, limites de estoque, regras de NBT e restrições de espaços do inventário anexado.

Quando um desses filtros é aberto a partir de um canal de nó, o botão **Examinar armazenamento conectado** pode preencher entradas vazias a partir do inventário ou tanque de fluido anexado. A tela informa quantas entradas foram adicionadas, se o filtro encheu, se nada novo foi encontrado ou se nenhum armazenamento compatível estava disponível. O exame está ativo para canais de item e fluido.

### Mod

Filtros de Mod correspondem a cada item ou fluido de um id de mod configurado.

- Defina o id do mod, como `minecraft`, `create`, `mekanism` ou `ae2`.
- Um filtro de Mod corresponde a um mod.
- Para corresponder a vários mods, coloque múltiplos filtros de Mod no mesmo canal e use **Corresponder Qualquer**.

### Regex

Filtros Regex correspondem aos nomes de exibição dos recursos com uma sintaxe regex restrita e insensível a maiúsculas.

- O comprimento máximo do padrão é 128 caracteres.
- Suportado: literais, `.`, classes de caracteres como `[A-Z]`, `^`, `$`, pontuação escapada e alternativas `|` de primeiro nível.
- Não suportado: grupos, lookarounds, retroreferências, flags inline e operadores de repetição `*`, `+`, `?` ou `{...}`.
- A correspondência busca o nome inteiro, então `Iron` já corresponde a `Iron Ingot`; `.*Iron.*` é desnecessário e rejeitado.
- Padrões inseguros ou malformados ficam visíveis para correção, mas não correspondem a nada.

Para itens, o botão de escopo escolhe o que é pesquisado:

- **Nome**: só o nome do item.
- **Tooltip**: as linhas de tooltip abaixo do nome (encantamentos, lore, info do mod).
- **Ambos**: o nome e as linhas de tooltip.

Fluidos sempre correspondem por nome. Num servidor dedicado o texto do tooltip vem do servidor, em inglês, então linhas que um mod adiciona só no cliente não são vistas. Se o código de tooltip de um mod falhar no servidor, o filtro usa as linhas que ainda conseguiu ler.

Exemplos comuns:

| Padrão | Corresponde |
|---------|---------|
| `Iron` | Qualquer coisa contendo "Iron" |
| `^Iron` | Nomes começando com "Iron" |
| `Ingot$` | Nomes terminando com "Ingot" |
| `^Iron Ingot$` | Exatamente "Iron Ingot" |
| `Iron|Gold` | Nomes contendo "Iron" ou "Gold" |
| `[IG]ron` | "Iron" ou "Gron" |

Padrões compilados são reutilizados durante cada operação de transferência. Mantenha as expressões estreitas em canais de tráfego alto.

### Slot

Filtros de Slot restringem quais índices de espaço no bloco anexado o canal pode ler ou escrever.

- Use espaços e intervalos separados por vírgula, como `0`, `0-8` ou `0-3,5`.
- Índices de espaço válidos vão de `0` a `53`.
- Em Emissores, só os espaços de origem listados são extraídos.
- Em Receptores, só os espaços de destino listados recebem inserção.

## Detalhes da entrada

Cada espaço da grade principal de um filtro Padrão é mais que uma verificação de item único. Abra a página de Detalhes de uma entrada preenchida para configurar estas regras por entrada:

- **Item ou #tag**: corresponde a um id exato como `minecraft:iron_ingot`, ou a uma tag como `#c:ores`.
- **Lote**: substitui quantos itens desta entrada se movem por transferência no lado do Emissor.
- **Estoque**: reserva itens em Emissores, ou limita o estoque do destino em Receptores.
- **NBT**: adiciona até 6 regras ativas de NBT/componente, ou cola SNBT bruto para casos avançados.
- **Slots**: restringe esta entrada a índices de espaço específicos do inventário anexado.

Deixe Lote ou Estoque em `0` para voltar às configurações do canal ou desativar o limite.

Lote e Estoque também aceitam matemática simples como `64*7`. O resultado aparece quando você pressiona Enter.

## Copiar e colar um filtro

Com uma tela de filtro aberta você pode copiar toda a configuração e colá-la noutro filtro aberto. Use **Ctrl+C** para copiar e **Ctrl+V** para colar, ou use **Interação Primária (padrão: Clique Esquerdo)** nos botões de ícone **copiar** e **colar** no canto superior direito do cabeçalho do filtro. Passe o mouse sobre qualquer botão para ver o tooltip; o botão de colar fica esmaecido até algo ser copiado.

Essa área de transferência só vive na sua sessão de jogo atual. Ela **não** é salva no item de filtro, numa config ou na área de transferência do seu sistema operacional, e é limpa quando você sai do jogo. Ela é separada da área de transferência de [Copiar / Colar](../wrench/copy-paste.md) da chave.

O que é copiado depende do tipo de filtro:

- **Filtro Padrão**: cada entrada mais suas regras por entrada — item, fluido ou `#tag`, quantidades de lote e estoque, mapeamento de espaços, NBT (flag estrita, SNBT bruto, regras e modo Corresponder Qualquer/Todos), durabilidade e estado encantado — junto com o modo Lista-Branca/Lista-Negra e o Tipo do filtro.
- **Mod**: modo Lista-Branca/Lista-Negra, Tipo e o id de mod selecionado.
- **Regex**: modo Lista-Branca/Lista-Negra, Tipo, o padrão regex e o escopo de correspondência.

Uma mensagem curta de sobreposição confirma cada ação (`Filter copied`, `Filter pasted` e assim por diante).

Observações:

- Colar **substitui** o filtro de destino. Os espaços do filtro padrão são limpos primeiro e depois preenchidos a partir da área de transferência.
- Se o filtro copiado tiver mais entradas do que o destino comporta, a colagem enche o destino até a capacidade e informa o corte, por exemplo `Filter pasted: 6/8 slots copied`.
- Colar num tipo de filtro diferente (um filtro padrão num filtro Regex, por exemplo) é rejeitado com uma mensagem de tipo incompatível.
- Ctrl+C e Ctrl+V são ignorados enquanto uma caixa de texto como o campo de regex ou de id de mod está focada, então a digitação nunca é sequestrada.

## Copiando filtros entre nós

As configurações de filtro também são copiadas com copiar/colar de nó, sincronização de nós rotulados e fluxos de salvar/carregar `.lnet`. Para limpar um filtro virtual, limpe suas entradas dentro do menu do filtro.
