---
navigation:
  title: Filtros
  position: 4
---

# Filtros

Filtros são itens que dizem a um canal exatamente quais recursos ele pode mover. Largue-os na grade de filtros de um canal (o painel 3x3 no lado direito da tela do nó — veja [Filtros e Melhorias](../nodes/filters-upgrades.md)) para restringir o que o canal transfere.

Sem nenhum filtro, o canal transfere tudo que corresponde ao seu Tipo. Adicione um filtro e apenas recursos que passam pelas regras do filtro passam.

Os espaços de filtro são **por canal**. Cada canal de um nó mantém seu próprio conjunto independente de 9 espaços de filtro, então um nó pode rodar 9 configurações de filtro totalmente diferentes ao mesmo tempo.

## Lado Emissor vs Receptor

Os filtros existem tanto em Emissores quanto em Receptores, mas fazem trabalhos diferentes dependendo do lado da transferência em que você os coloca:

- **Emissor (exportador)** — o filtro decide **o que o Emissor puxa** do bloco ao qual está preso. Apenas recursos que passam pelo filtro são extraídos e oferecidos à rede. Todo o resto fica no bloco de origem.
- **Receptor (importador)** — o filtro decide **o que o Receptor aceita** no bloco ao qual está preso. A rede pode estar cheia de recursos, mas o Receptor só pega os que passam pelo seu filtro. O resto continua fluindo para outros Receptores.

A maioria das configurações coloca filtros dos dois lados. Um filtro no Emissor decide o que sai da origem; um filtro no Receptor decide o que chega ao destino. Um padrão comum: um Emissor puxando uma ampla variedade de itens de um baú de depósito, e vários Receptores cada um filtrando um subconjunto estreito (ferro → baú de ferro, carvão → baú de carvão, etc.).

Lista-Branca / Lista-Negra, Qualquer / Todos, e todas as regras por entrada (Reserva, Lote, NBT, Espaços — veja [Filtragem Avançada](advanced-filtering.md)) respeitam essa divisão Emissor-vs-Receptor. Reserva em particular troca de significado entre os dois lados, já que "manter uma reserva" e "limitar o destino" não são a mesma coisa.

## Lista-Branca vs Lista-Negra

Todo filtro tem dois modos:

- **Lista-Branca** — o filtro é uma lista de coisas que o canal **pode** mover. Qualquer coisa fora da lista é bloqueada.
- **Lista-Negra** — o filtro é uma lista de coisas que o canal **não pode** mover. Todo o resto passa.

Abra um item de filtro na mão (clique com o botão direito enquanto o segura) para alternar o modo. A tooltip do item mostra o modo atual de relance.

## Qualquer vs Todos

Quando um canal tem mais de um filtro na grade, o botão **Qualquer / Todos** no topo do painel de Filtros decide como eles se combinam:

- **Qualquer** — um recurso passa se **pelo menos um** filtro o aceita.
- **Todos** — um recurso só passa se **todos** os filtros o aceitam.

Para um passo a passo completo, veja [Filtros e Melhorias → Filtros](../nodes/filters-upgrades.md#filters).

## Tipos de Filtro

- [Filtro Pequeno](small.md) — correspondência exata de item/fluido, 9 espaços de entrada.
- [Filtro Médio](medium.md) — correspondência exata de item/fluido, 18 espaços de entrada.
- [Filtro Grande](big.md) — correspondência exata de item/fluido, 27 espaços de entrada.
- [Filtro de Mod](mod.md) — corresponde tudo de um mod escolhido.
- [Filtro Regex](regex.md) — corresponde itens por nome ou tooltip usando uma expressão regular.

## Copiando Filtros

Você pode duplicar ou limpar configurações de filtro usando a grade de fabricação:

- **Copiar** — coloque um filtro configurado junto com um filtro vazio do mesmo tipo na grade de fabricação. O filtro vazio recebe uma cópia da configuração do configurado. Os dois saem juntos.
- **Limpar** — coloque um filtro configurado sozinho na grade de fabricação. Ele sai vazio, sem suas entradas e modo.

Isso funciona para todo tipo de filtro desta página.
