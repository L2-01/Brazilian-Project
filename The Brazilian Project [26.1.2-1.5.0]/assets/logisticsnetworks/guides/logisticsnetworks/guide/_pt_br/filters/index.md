---
item_ids: [logisticsnetworks:small_filter, logisticsnetworks:medium_filter, logisticsnetworks:big_filter, logisticsnetworks:mod_filter, logisticsnetworks:name_filter]
navigation:
  title: Filtros
  position: 4
---

# Filtros

Os filtros são regras virtuais de canal que decidem exatamente quais recursos um canal pode mover. Abra-os pela grade de filtros 3x2 no lado direito da tela do nó; veja [Filtros e Melhorias](../nodes/filters-upgrades.md).

Sem nenhum filtro, o canal transfere tudo que corresponde ao seu Tipo. Adicione um filtro e só recursos que passam pelas regras dele passam.

Os slots de filtro são **por canal**. Cada canal de um nó mantém seu próprio conjunto independente de 6 botões de filtro, então um nó pode rodar 6 configurações de filtro totalmente diferentes ao mesmo tempo.

## Remetente vs Destinatário

Os filtros existem tanto em Remetentes quanto em Destinatários, mas fazem trabalhos diferentes dependendo de qual lado da transferência você os coloca:

- **Remetente (exportador)**: o filtro decide **o que o Remetente puxa** do bloco em que está preso. Só recursos que passam pelo filtro são extraídos e oferecidos à rede.
- **Destinatário (importador)**: o filtro decide **o que o Destinatário aceita** no bloco em que está preso. A rede pode estar cheia de recursos, mas o Destinatário só aceita os que passam pelo seu filtro.

A maioria dos ajustes põe filtros nos dois lados. Um filtro do lado do Remetente decide o que sai da origem; um filtro do lado do Destinatário decide o que chega ao destino. Um padrão comum é um Remetente puxando uma faixa ampla de itens de um baú de despejo, e vários Destinatários filtrando cada um filtrando um subconjunto estreito.

Lista-branca / Lista-negra, Qualquer / Todas as Correspondências e toda regra por entrada respeitam essa divisão Remetente-vs-Destinatário. O Estoque em particular troca de significado entre os dois lados, já que "manter uma reserva" e "limitar o destino" não são a mesma coisa.

## Lista-branca vs Lista-negra

Todo filtro tem dois modos:

- **Lista-branca**: o filtro é uma lista de coisas que o canal **pode** mover. Qualquer coisa fora da lista é bloqueada.
- **Lista-negra**: o filtro é uma lista de coisas que o canal **não pode** mover. Todo o resto passa.

Abra um filtro virtual na grade de filtros do nó para alternar o modo.

## Qualquer vs Todas as Correspondências

Quando um canal tem mais de um filtro na grade, o botão **Qualquer / Todos** no topo do painel de Filtros decide como eles se combinam:

- **Qualquer Correspondência**: um recurso passa se **pelo menos um** filtro o aceitar.
- **Todas as Correspondências**: um recurso só passa se **todo** filtro o aceitar.

Para um passo a passo completo, veja [Filtros e Melhorias](../nodes/filters-upgrades.md#filters).

## Tipos de Filtro

### Filtro Normal

Escolha **Filtro Normal** no seletor de filtros do canal para abrir sua grade de **45 entradas**.

- Corresponde ids exatos de itens e de fluidos.
- Coloque qualquer item ou balde de fluido num slot de entrada para adicioná-lo à lista.
- Arraste um item ou fluido do JEI para uma entrada para adicionar uma regra fantasma.
- Remova a entrada para tirá-la da lista.
- Slots de entrada vazios são ignorados.

Cada entrada também pode abrir uma página de Detalhes para correspondência por tag, substituições de lote, limites de estoque, regras de NBT e restrições de slot do inventário preso.

Quando um desses filtros é aberto a partir de um canal de nó, o botão **Varrer armazenamento preso** pode preencher entradas vazias a partir do inventário ou tanque de fluido preso. A tela informa quantas entradas foram adicionadas, se o filtro encheu, se nada novo foi encontrado ou se nenhum armazenamento compatível estava disponível. A varredura está ativa para canais de item e de fluido.

### Mod

Os filtros de Mod correspondem a todo item ou fluido de um id de mod configurado.

- Defina o id do mod, como `minecraft`, `create`, `mekanism` ou `ae2`.
- Um filtro de Mod corresponde a um mod.
- Para corresponder a vários mods, ponha múltiplos filtros de Mod no mesmo canal e use **Qualquer Correspondência**.

### Regex

Os filtros Regex correspondem a nomes de exibição de recursos com sintaxe regex restrita e insensível a maiúsculas.

- O comprimento máximo do padrão é 128 caracteres.
- Suportados: literais, `.`, classes de caracteres como `[A-Z]`, `^`, `$`, pontuação escapada e alternativas de topo com `|`.
- Não suportados: grupos, lookarounds, backreferences, flags inline e operadores de repetição `*`, `+`, `?` ou `{...}`.
- A correspondência busca o nome inteiro, então `Iron` já corresponde a `Iron Ingot`; `.*Iron.*` é desnecessário e rejeitado.
- Padrões inseguros ou malformados continuam visíveis para reparo, mas não correspondem a nada.

Para itens, o botão de escopo escolhe o que é pesquisado:

- **Nome**: só o nome do item.
- **Dica**: as linhas de dica abaixo do nome (encantamentos, lore, info do mod).
- **Ambos**: o nome e as linhas de dica.

Os fluidos sempre correspondem pelo nome. Num servidor dedicado o texto da dica vem do servidor, em inglês, então linhas que um mod adiciona só no cliente não são vistas. Se o código de dica de um mod falhar no servidor, o filtro usa as linhas que ainda conseguiu ler.

Exemplos comuns:

| Padrão | Corresponde a |
|---------|---------|
| `Iron` | Qualquer coisa contendo "Iron" |
| `^Iron` | Nomes começando com "Iron" |
| `Ingot$` | Nomes terminando em "Ingot" |
| `^Iron Ingot$` | Exatamente "Iron Ingot" |
| `Iron|Gold` | Nomes contendo "Iron" ou "Gold" |
| `[IG]ron` | "Iron" ou "Gron" |

Os padrões compilados são reutilizados durante cada operação de transferência. Mantenha as expressões estreitas em canais de tráfego alto.

### Slot

Os filtros de Slot restringem quais índices de slot no bloco preso o canal pode ler ou escrever.

- Use slots e faixas separados por vírgula, como `0`, `0-8` ou `0-3,5`.
- Os índices de slot válidos vão de `0` a `53`.
- Em Remetentes, só os slots de origem listados são extraídos.
- Em Destinatários, só os slots de destino listados recebem inserção.

## Detalhes da Entrada

Cada slot na grade principal de um Filtro Normal é mais que uma verificação de item único. Abra a página de Detalhes de uma entrada preenchida para configurar estas regras por entrada:

- **Item ou #tag**: corresponde a um id exato como `minecraft:iron_ingot`, ou a uma tag como `#c:ores`.
- **Lote**: substitui quantos desta entrada se movem por transferência no lado do Remetente.
- **Estoque**: reserva itens em Remetentes, ou limita o estoque de destino em Destinatários.
- **NBT**: adiciona até 6 regras ativas de NBT/componente, ou cola SNBT bruto para casos avançados.
- **Slots**: restringe esta entrada a índices de slot específicos do inventário preso.

Deixe Lote ou Estoque em `0` para voltar às configurações do canal ou desativar o limite.

Lote e Estoque também aceitam matemática simples como `64*7`. O resultado aparece quando você pressiona Enter.

## Copiar e Colar um Filtro

Enquanto uma tela de filtro está aberta, você pode copiar toda a sua configuração e colá-la em outro filtro aberto. Use **Ctrl+C** para copiar e **Ctrl+V** para colar, ou use a **Interação Primária (padrão: Botão Esquerdo)** nos botões de ícone **copiar** e **colar** no canto superior direito do cabeçalho do filtro. Passe o mouse sobre qualquer botão para ver a dica; o botão de colar fica apagado até algo ser copiado.

Esta área de transferência só vive na sua sessão de jogo atual. Ela **não** é salva no item de filtro, numa configuração ou na área de transferência do seu sistema operacional, e é limpa quando você sai do jogo. É separada da área de transferência de [Copiar / Colar](../wrench/copy-paste.md) da chave.

O que é copiado depende do tipo de filtro:

- **Filtro Normal**: cada entrada mais suas regras por entrada — item, fluido ou `#tag`, quantidades de lote e estoque, mapeamento de slot, NBT (flag estrita, SNBT bruto, regras e modo Qualquer/Todas as Correspondências), durabilidade e estado de encantamento — junto com o modo Lista-branca/Lista-negra e o Tipo do filtro.
- **Mod**: modo Lista-branca/Lista-negra, Tipo e o id de mod selecionado.
- **Regex**: modo Lista-branca/Lista-negra, Tipo, o padrão regex e o escopo de correspondência.

Uma mensagem curta na tela confirma cada ação (`Filter copied`, `Filter pasted` e assim por diante).

Notas:

- Colar **substitui** o filtro de destino. Os slots do filtro padrão são limpos primeiro, depois preenchidos a partir da área de transferência.
- Se o filtro copiado tiver mais entradas do que o destino comporta, a colagem enche o destino até a capacidade e informa o corte, por exemplo `Filter pasted: 6/8 slots copied`.
- Colar num tipo de filtro diferente (um filtro padrão num filtro Regex, por exemplo) é rejeitado com uma mensagem de tipo incompatível.
- Ctrl+C e Ctrl+V são ignorados enquanto uma caixa de texto como o campo de regex ou de id de mod está em foco, então a digitação nunca é sequestrada.

## Copiando Filtros Entre Nós

As configurações de filtro também são copiadas com o copiar/colar de nós, a sincronia de nós rotulados e os fluxos de salvar/carregar `.lnet`. Para limpar um filtro virtual, limpe suas entradas dentro do menu do filtro.
