---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter, logisticsnetworks:mod_filter, logisticsnetworks:name_filter]
navigation:
  title: Filtros
  position: 4
---

# Filtros

Filtros são regras virtuais de canal que decidem exatamente quais recursos um canal pode mover. Abra-os pela grade de filtros 3x2 no lado direito da tela do nó; veja [Filtros e Melhorias](../nodes/filters-upgrades.md).

Sem nenhum filtro, o canal transfere tudo que corresponde ao seu Tipo. Adicione um filtro e apenas recursos que passam pelas regras do filtro passam.

Os espaços de filtro são **por canal**. Cada canal de um nó mantém seu próprio conjunto independente de 6 botões de filtro, então um nó pode rodar 6 configurações de filtro totalmente diferentes ao mesmo tempo.

## Emissor vs Receptor

Os filtros existem tanto em Emissores quanto em Receptores, mas fazem trabalhos diferentes dependendo do lado da transferência em que você os coloca:

- **Emissor (exportador)**: o filtro decide **o que o Emissor puxa** do bloco ao qual está preso. Apenas recursos que passam pelo filtro são extraídos e oferecidos à rede.
- **Receptor (importador)**: o filtro decide **o que o Receptor aceita** no bloco ao qual está preso. A rede pode estar cheia de recursos, mas o Receptor só pega os que passam pelo seu filtro.

A maioria das configurações coloca filtros dos dois lados. Um filtro no Emissor decide o que sai da origem; um filtro no Receptor decide o que chega ao destino. Um padrão comum é um Emissor puxando uma ampla variedade de itens de um baú de depósito, e vários Receptores cada um filtrando um subconjunto estreito.

Lista-branca / Lista-negra, Qualquer / Todos, e todas as regras por entrada respeitam essa divisão Emissor-vs-Receptor. Estoque em particular troca de significado entre os dois lados, já que "manter uma reserva" e "limitar o destino" não são a mesma coisa.

## Lista-branca vs Lista-negra

Todo filtro tem dois modos:

- **Lista-branca**: o filtro é uma lista de coisas que o canal **pode** mover. Qualquer coisa fora da lista é bloqueada.
- **Lista-negra**: o filtro é uma lista de coisas que o canal **não pode** mover. Todo o resto passa.

Abra um filtro virtual pela grade de filtros do nó para alternar o modo.

## Qualquer vs Todos

Quando um canal tem mais de um filtro na grade, o botão **Qualquer / Todos** no topo do painel de Filtros decide como eles se combinam:

- **Qualquer**: um recurso passa se **pelo menos um** filtro o aceita.
- **Todos**: um recurso só passa se **todos** os filtros o aceitam.

Para um passo a passo completo, veja [Filtros e Melhorias](../nodes/filters-upgrades.md#filters).

## Tipos de Filtro

### Filtro Padrão

Escolha **Padrão** no seletor de filtros do canal para abrir sua grade de **45 entradas**.

- Corresponde ids exatos de itens e ids de fluidos.
- Coloque qualquer item ou balde de fluido num espaço de entrada para adicioná-lo à lista.
- Arraste um item ou fluido do EMI ou JEI para cima de uma entrada para adicionar uma regra fantasma.
- Remova a entrada para tirá-la da lista.
- Espaços de entrada vazios são ignorados.

Cada entrada também pode abrir uma página de Detalhes para correspondência por marcador, limites de lote, limites de estoque, regras de NBT e restrições de espaço do inventário anexo.

### Mod

Filtros de Mod correspondem a todo item ou fluido de um id de mod configurado.

- Defina o id do mod, como `minecraft`, `create`, `mekanism` ou `ae2`.
- Um filtro de Mod corresponde a um mod.
- Para corresponder a vários mods, coloque múltiplos filtros de Mod no mesmo canal e use **Qualquer**.

### Regex

Filtros Regex correspondem aos nomes de exibição dos recursos com uma sintaxe de regex restrita e insensível a maiúsculas.

- O comprimento máximo do padrão é 128 caracteres.
- Suportados: literais, `.`, classes de caracteres como `[A-Z]`, `^`, `$`, pontuação escapada e alternativas `|` de nível superior.
- Não suportados: grupos, lookarounds, retroreferências, flags embutidas e operadores de repetição `*`, `+`, `?` ou `{...}`.
- A correspondência busca no nome inteiro, então `Iron` já corresponde a `Iron Ingot`; `.*Iron.*` é desnecessário e rejeitado.
- Padrões inseguros ou malformados permanecem visíveis para correção, mas não correspondem a nada.

Para itens, o botão de escopo escolhe o que é pesquisado:

- **Nome**: apenas o nome do item.
- **Dica de Ferramenta**: as linhas de tooltip abaixo do nome (encantamentos, lore, info do mod).
- **Ambos**: o nome e as linhas de tooltip.

Fluidos e produtos químicos sempre correspondem por nome. Num servidor dedicado, o texto da tooltip vem do servidor, em inglês, então linhas que um mod adiciona apenas no cliente não são vistas. Se o código de tooltip de um mod falha no servidor, o filtro usa as linhas que ainda conseguiu ler.

Exemplos comuns:

| Padrão | Corresponde |
|---------|---------|
| `Iron` | Qualquer coisa contendo "Iron" |
| `^Iron` | Nomes começando com "Iron" |
| `Ingot$` | Nomes terminando com "Ingot" |
| `^Iron Ingot$` | Exatamente "Iron Ingot" |
| `Iron|Gold` | Nomes contendo "Iron" ou "Gold" |
| `[IG]ron` | "Iron" ou "Gron" |

Padrões compilados são reutilizados durante cada operação de transferência. Mantenha expressões estreitas em canais de tráfego alto.

### Espaço

Filtros de Espaço restringem quais índices de espaço no bloco anexo o canal pode ler ou escrever.

- Use espaços e intervalos separados por vírgula, como `0`, `0-8` ou `0-3,5`.
- Índices de espaço válidos vão de `0` a `53`.
- Em Emissores, apenas os espaços de origem listados são extraídos.
- Em Receptores, apenas os espaços de destino listados recebem inserção.

## Detalhes de Entrada

Cada espaço da grade principal de um Filtro Padrão é mais do que uma checagem de item único. Abra a página de Detalhes de uma entrada preenchida para configurar estas regras por entrada:

- **Item ou #marcador**: corresponde a um id exato como `minecraft:iron_ingot`, ou a um marcador como `#c:ores`.
- **Lote**: sobrescreve quantos desta entrada se movem por transferência no lado do Emissor.
- **Estoque**: reserva itens em Emissores, ou limita o estoque do destino em Receptores.
- **NBT**: adiciona até 6 regras ativas de NBT/componentes, ou cole SNBT bruto para casos avançados.
- **Espaços**: restringe esta entrada a índices de espaço específicos do inventário anexo.

Deixe Lote ou Estoque em `0` para cair de volta nas configurações do canal ou desativar o limite.

Lote e Estoque também aceitam matemática simples como `64*7`. O resultado aparece quando você pressiona Enter.

## Copiar e Colar um Filtro

Enquanto uma tela de filtro está aberta, você pode copiar sua configuração inteira e colá-la em outro filtro aberto. Use **Ctrl+C** para copiar e **Ctrl+V** para colar, ou use a **Interação Primária (padrão: Botão Esquerdo)** nos botões de ícone **copiar** e **colar** no canto superior direito do cabeçalho do filtro. Passe o cursor sobre qualquer um dos botões para ver uma tooltip; o botão de colar fica esmaecido até algo ser copiado.

Esta área de transferência só existe na sua sessão de jogo atual. Ela **não** é salva no item de filtro, numa configuração ou na área de transferência do seu sistema operacional, e é limpa quando você sai do jogo. Ela é separada da área de transferência de [Copiar / Colar](../wrench/copy-paste.md) da chave-inglesa.

O que é copiado depende do tipo de filtro:

- **Filtro Padrão**: cada entrada mais suas regras por entrada — item, fluido, produto químico ou `#marcador`, quantidades de lote e estoque, mapeamento de espaços, NBT (flag de rigor, SNBT bruto, regras e modo Qualquer/Todos), durabilidade e estado de encantamento — junto com o modo Lista-branca/Lista-negra e o Tipo do filtro.
- **Mod**: modo Lista-branca/Lista-negra, Tipo e o id de mod selecionado.
- **Regex**: modo Lista-branca/Lista-negra, Tipo, o padrão regex e o escopo de correspondência.

Uma mensagem curta na sobreposição confirma cada ação (`Filtro copiado`, `Filtro colado` e assim por diante).

Notas:

- Colar **substitui** o filtro de destino. Os espaços do filtro padrão são limpos primeiro, depois preenchidos a partir da área de transferência.
- Se o filtro copiado tiver mais entradas do que o destino comporta, a colagem preenche o destino até a capacidade e reporta o corte, por exemplo `Filtro colado: 6/8 espaços copiados`.
- Colar num tipo de filtro diferente (um filtro padrão num filtro Regex, por exemplo) é rejeitado com uma mensagem de tipo incompatível.
- Ctrl+C e Ctrl+V são ignorados enquanto uma caixa de texto como o campo de regex ou de id de mod está em foco, então a digitação nunca é sequestrada.

## Copiando Filtros entre Nós

Configurações de filtro também são copiadas com o copiar/colar de nós, a sincronia de nós rotulados e os fluxos de salvar/carregar `.lnet`. Para limpar um filtro virtual, limpe suas entradas dentro do menu do filtro.
