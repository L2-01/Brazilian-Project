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

*   <ItemLink id="crafting_pattern" />s codificam receitas feitas numa bancada de trabalho. Eles podem ser colocados diretamente num <ItemLink id="molecular_assembler" /> para fazê-lo
    fabricar o resultado sempre que receber os ingredientes, mas seu uso principal é num <ItemLink id="pattern_provider" /> ao lado de um montador molecular.
    Provedores de padrões têm um comportamento especial nesse caso e enviam o padrão relevante junto com os ingredientes para montadores adjacentes.
    Como os montadores auto-ejetam os resultados das fabricações para inventários adjacentes, um montador num provedor de padrões é tudo que é preciso para automatizar padrões de fabricação.

***

*   <ItemLink id="smithing_table_pattern" />s são muito parecidos com padrões de fabricação, mas codificam receitas de mesa de ferraria. Eles também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. De fato, padrões de fabricação, ferraria e alvenaria podem ser
    usados na mesma configuração.

***

*   <ItemLink id="stonecutting_pattern" />s são muito parecidos com padrões de fabricação, mas codificam receitas de cortador de pedra. Eles também são automatizados por um provedor
    de padrões e um montador molecular, e funcionam exatamente da mesma forma. De fato, padrões de fabricação, ferraria e alvenaria podem ser
    usados na mesma configuração.

***

*   <ItemLink id="processing_pattern" />s são de onde vem grande parte da flexibilidade da fabricação automática. Eles são o tipo mais generalizado, simplesmente
    dizendo "se um provedor de padrões empurrar estes ingredientes para inventários adjacentes, o sistema ME receberá estes itens em algum ponto do
    futuro próximo ou distante". É assim que você vai fabricar automaticamente com praticamente qualquer máquina de mod, ou fornalhas e afins. Como são tão
    genéricos e não se importam com o que acontece entre empurrar os ingredientes e receber o resultado, você pode fazer coisas bem malucas, como inserir
    os ingredientes numa cadeia de produção de fábrica complexa inteira que vai separar as coisas, puxar outros ingredientes de farms
    de produção infinita, imprimir o roteiro inteiro de Bee Movie — o sistema ME não se importa, desde que receba o resultado que o padrão especifica. Aliás,
    ele nem se importa se os ingredientes têm alguma relação com o resultado. Você poderia dizer a ele "1 tábua de cerejeira = 1 estrela do nether" e fazer
    sua farm de wither matar um wither ao receber uma tábua de cerejeira, e funcionaria.

Vários <ItemLink id="pattern_provider" />s com padrões idênticos são suportados e funcionam em paralelo. Além disso, você pode fazer um padrão dizer,
por exemplo, 8 pedregulhos = 8 pedras em vez de 1 pedregulho = 1 pedra, e o provedor de padrões inserirá 8 pedregulhos na
sua configuração de fundição a cada operação, em vez de um por vez.

## Receita

<RecipeFor id="blank_pattern" />
