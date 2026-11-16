---
navigation:
  parent: appliede-index.md
  title: Terminal de Transmutação
  icon: transmutation_terminal
  position: 20
categories:
  - appliede
item_ids:
  - appliede:transmutation_terminal
  - appliede:wireless_transmutation_terminal
---

# Terminal de Transmutação

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assemblies/transmutation_terminal.snbt" />
</GameScene>

Até aqui conseguimos abordar a capacidade das redes ME de converter EMC em itens por meio da autofabricação e
dos vários [dispositivos de transmutação](transmutation_devices.md) oferecidos pelo AppliedE, mas a pergunta
permanece: como o jogador manipula seu EMC diretamente através do seu sistema ME?

A resposta a essa pergunta vem na forma do **Terminal de Transmutação ME**, um terminal que oferece ao usuário
grande parte da funcionalidade da <ItemLink id="projecte:transmutation_table" /> do ProjectE, mas integrada à
rede ME por trás dele.

Para começar, com este terminal, *você*, o jogador, consegue extrair diretamente itens transmutáveis conhecidos do
EMC armazenado, em vez de exigir que eles já existam no armazenamento de itens comum. Você também pode encher e
esvaziar estrelas Klein e outros itens que armazenam EMC por meio deste terminal.

![Item transmutável](diagrams/transmutable_item.png)
![Enchendo estrela Klein](diagrams/klein_star_filling.png)

A tela do terminal também inclui o conhecido espaço flamejante da Mesa de Transmutação, através do qual os itens são
normalmente convertidos em EMC, e esse espaço funciona de forma muito parecida no terminal também. No entanto, a tela
também traz dois botões extras que dão ao terminal alguns recursos poderosos adicionais.

![IU do terminal](diagrams/terminal_ui.png)

O botão de seta à esquerda alterna para onde vão as pilhas de itens shift-clicadas em relação ao terminal. Se a seta
aponta para cima, em direção à grade geral do terminal, os itens shift-clicados irão para essa grade e para o
armazenamento de itens comum. Já se a seta aponta para a esquerda, para o espaço de transmutação, qualquer pilha
shift-clicada será convertida em EMC e enviada ao armazenamento total de EMC da rede, ao mesmo tempo em que o item
é aprendido para o usuário, caso ainda não tenha sido.

Por fim, o botão restante com a singularidade permite ao usuário do terminal aprender automaticamente todos os itens
do armazenamento que ainda não tenham sido aprendidos para transmutação. No entanto, isso tem um custo potencialmente
alto: os itens só podem ser aprendidos se pelo menos um deles existir no armazenamento, e esse um item de cada será
imediatamente transmutado em EMC, incorrendo num uso de energia potencialmente enorme dependendo de quanto EMC cada
item vale. Por esse motivo, recomenda-se cautela, e o botão vai encorajar você a pensar duas vezes antes de decidir
aprender tudo através dele.

![Tem certeza?](diagrams/are_you_sure.png)

## Receita

<RecipeFor id="appliede:transmutation_terminal" />
