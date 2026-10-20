---
navigation:
  title: Bactérias Personalizadas
  icon: minecraft:command_block
  position: 14
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Bactérias Personalizadas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="minecraft:command_block" scale="2"/>
  Um comando de admin cria uma nova linhagem de bactéria para qualquer item.
</Column>

Esta página é para administradores de servidor e criadores de modpacks. Os comandos precisam de permissão de operador (nível 2).

***

## <Color id="gold">Criando uma Linhagem</Color>

`/nautec bacteria generate <nome> <item> [raridade]`

Cria uma linhagem chamada `<nome>` que produz `<item>`, junto de uma receita de incubação que usa o próprio item como nutriente, uma receita de alimentação de colônia com o mesmo nutriente, e uma receita de mutação que o usa como catalisador. A raridade define os stats iniciais, o crescimento de incubação, a chance de mutação e o [Rendimento de Linhagem](production_rates.md), e escolhe a linhagem da qual ela muta:

| Raridade | Muta de | Rendimento de Linhagem |
|---|---|---|
| common | Litófilas | 1 |
| uncommon (padrão) | Metalófilas | 0.8 |
| rare | Ferrófilas | 0.6 |
| epic | Aurófilas | 0.4 |
| legendary | Adamantófilas | 0.12 |

`/nautec bacteria generate-tag <nome> <item> <tag> [raridade]` faz o mesmo mas usa uma tag de itens inteira como nutriente.

Adicione `preview` ao fim de qualquer um dos comandos para imprimir os arquivos no chat, clicável para copiar, sem escrever nada.

***

## <Color id="gold">Fonte de Enxertia</Color>

`/nautec bacteria obtain <nome> <bloco> <tagdebioma> <chance>`

Deixa jogadores enxertarem a linhagem de `<bloco>` em qualquer bioma em `<tagdebioma>`, com uma chance de 0 a 1. Escolha um bloco do qual o NauTec já não enxerte.

***

## <Color id="gold">Gerenciando-as</Color>

* `/nautec bacteria list-generated` lista toda linhagem gerada, o que ela produz e quais receitas tem.
* `/nautec bacteria delete-generated <nome>` remove os arquivos de uma linhagem e suas entradas de enxertia.

Tudo vai para `config/nautec/generated_pack`, que todo mundo da instância compartilha. Rode `/reload` para carregar as novas receitas e fontes de enxertia. Uma nova linhagem em si carrega na próxima vez que você entrar num mundo.