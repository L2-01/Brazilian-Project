---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Padrões
  icon: crafting_pattern
  position: 410
categories:
- tools
item_ids:
- ae2:blank_pattern
- ae2:crafting_pattern
- ae2:processing_pattern
- ae2:smithing_table_pattern
- ae2:stonecutting_pattern
---

# Padrões

<ItemImage id="crafting_pattern" scale="4" />

Padrões são feitos num <ItemLink id="pattern_encoding_terminal" /> a partir de padrões em branco, e inseridos em <ItemLink id="pattern_provider" />s
ou <ItemLink id="molecular_assembler" />s.

Há vários tipos diferentes de padrão para coisas diferentes:

*   <ItemLink id="crafting_pattern" />s codificam receitas feitas numa bancada. Podem ser colocados diretamente num <ItemLink id="molecular_assembler" /> para fazê-lo
    fabricar o resultado sempre que receber os ingredientes, mas seu uso principal é num <ItemLink id="pattern_provider" /> ao lado de um montador molecular.
    Provedores de padrões têm comportamento especial neste caso, e enviarão o padrão relevante junto com os ingredientes aos montadores adjacentes.
    Como montadores auto-ejetam os resultados das fabricações para inventários adjacentes, um montador num provedor de padrões é tudo que é necessário para automatizar padrões de fabricação.

***

*   <ItemLink id="smithing_table_pattern" />s são muito semelhantes a padrões de fabricação, mas codificam receitas de bancada de ferraria. Também são automatizados por um provedor
    de padrões e montador molecular, e funcionam exatamente da mesma forma. De fato, padrões de fabricação, ferraria e alvenaria podem ser
    usados no mesmo esquema.

***

*   <ItemLink id="stonecutting_pattern" />s são muito semelhantes a padrões de fabricação, mas codificam receitas de cortador de pedra. Também são automatizados por um provedor
    de padrões e montador molecular, e funcionam exatamente da mesma forma. De fato, padrões de fabricação, ferraria e alvenaria podem ser
    usados no mesmo esquema.

***

*   <ItemLink id="processing_pattern" />s são de onde vem muita da flexibilidade da autofabricação. São o tipo mais generalizado, simplesmente
    dizendo "se um provedor de padrões empurrar estes ingredientes para inventários adjacentes, o sistema ME receberá estes itens em algum ponto num
    futuro próximo ou distante". São como você fará autofabricação com quase qualquer máquina de mod, ou fornalhas e afins. Por serem tão
    gerais em uso e não se importarem com o que acontece entre empurrar os ingredientes e receber o resultado, você pode fazer umas coisas bem malucas, como inserir
    os ingredientes numa cadeia inteira de produção de fábrica complexa que vai separar tudo, recebendo outros ingredientes de farms
    de produção infinita, imprimir o roteiro inteiro de Bee Movie... O sistema ME não se importa, desde que receba o resultado especificado pelo padrão. De fato,
    ele nem se importa se os ingredientes têm qualquer relação com o resultado. Você poderia codificar um padrão tipo "1 Tábuas de Cerejeira ⇒ 1 Estrela do Nether" e fazer
    sua farm de Wither matar um Wither ao receber uma Tábua de Cerejeira, e a automação funcionaria.

Múltiplos <ItemLink id="pattern_provider" />s com padrões idênticos são suportados e funcionam em paralelo. Além disso, você pode configurar um padrão como,
por exemplo, 8 pedregulhos ⇒ 8 pedras em vez de 1 pedregulho ⇒ 1 pedra, e o provedor de padrões inserirá 8 pedregulhos no
seu esquema de fundição por operação, em vez de um de cada vez.

## Receita

<RecipeFor id="blank_pattern" />
