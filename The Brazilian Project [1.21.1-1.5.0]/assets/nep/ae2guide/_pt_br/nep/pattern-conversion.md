---
navigation:
  title: Conversão de Padrões
  icon: ae2:processing_pattern
  parent: nep/nep-index.md
  position: 3
---
# <Color id="aqua">Conversão de Padrões</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Conversão de Padrões</Color>

  <ItemImage id="ae2:processing_pattern" scale="2"/>

  Qualquer padrão NEP pode ser fabricado de volta num Padrão de Processamento simples do AE2 carregando os mesmos ingredientes e o mesmo resultado. Solte um padrão sozinho numa grade de fabricação e o Padrão de Processamento sai de volta.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Quando Você Precisa Disso</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O NEP reivindica o botão <Color id="green">+</Color> para todo processo que suporta, então procurar uma receita e codificá-la sempre devolve um padrão NEP. Essa é a resposta certa quase sempre, mas nem sempre:

* Um pack moveu a receita para uma máquina própria, e essa máquina quer itens comuns entrando e saindo.
* Você está alimentando a fabricação para outra coisa inteiramente, como um empacotador ou o bloco de fabricação automática de outro mod.
* A integração está desligada na configuração e você ainda quer a receita automatizada.

Em cada um desses casos o padrão NEP tem o formato errado e não há outro jeito de obter o simples. Convertê-lo entrega um Padrão de Processamento comum que qualquer Provedor de Padrões empurra para qualquer inventário.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Volta</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Padrão de Processamento carrega os ingredientes que o padrão NEP segurava, somados por item, e o resultado que ele produzia. O formato e a ordem da grade são descartados, porque um Padrão de Processamento não tem onde guardá-los.

Ele, no entanto, lembra discretamente de qual receita veio, que é como você recupera o padrão NEP: solte o Padrão de Processamento no espaço de padrão de um Terminal de Codificação de Padrões e pressione <Color id="green">Codificar</Color>. O terminal reconhece a receita de novo, então devolve o padrão NEP em vez de outro Padrão de Processamento, e você nunca precisa procurar a receita uma segunda vez. Padrões de Fabricação Mecânica são a única exceção, já que são codificados a partir de uma grade e não de uma receita; esses são casados pelo resultado, o que funciona sempre que uma única receita produz aquele resultado.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Não Converte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Color id="red">Um padrão que guarda um de seus ingredientes não converte.</Color> Padrões de Aplicação e de Envase seguram uma ferramenta que a máquina devolve quando a fabricação termina, e um Padrão de Processamento não tem como dizer isso. Converter um pediria à sua rede uma ferramenta nova a cada fabricação, então a receita simplesmente não casa e nada aparece no espaço de saída.

Todo o resto converte, incluindo padrões de Fabricação Mecânica e todos os padrões de Matriz.
