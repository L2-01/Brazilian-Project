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

  Qualquer padrão do NEP pode ser fabricado de volta num Padrão de Processamento comum do AE2 carregando os mesmos ingredientes e o mesmo resultado. Largue um padrão sozinho numa grade de fabricação e o Padrão de Processamento sai de volta.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Quando Você Precisa</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O NEP reivindica o botão <Color id="green">+</Color> para todo processo que suporta, então consultar uma receita e codificá-la sempre devolve um padrão do NEP. Essa é a resposta certa quase sempre, mas nem sempre:

* Um pacote moveu a receita para uma máquina própria, e essa máquina quer itens comuns entrando e saindo.
* Você está alimentando a fabricação para outra coisa completamente, como um empacotador ou o bloco de fabricação automática de outro mod.
* A integração está desligada na configuração e você ainda quer a receita automatizada.

Em cada um desses casos, o padrão do NEP tem o formato errado e não há outra forma de obter o comum. Convertê-lo lhe entrega um Padrão de Processamento comum que qualquer Provedor de Padrões empurrará para qualquer inventário.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Volta</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Padrão de Processamento carrega os ingredientes que o padrão do NEP segurava, somados por item, e o resultado que ele produzia. A forma e a ordem da grade são descartadas, porque um Padrão de Processamento não tem onde guardá-las.

Mas ele lembra discretamente de qual receita veio, e é assim que você recupera o padrão do NEP: largue o Padrão de Processamento no espaço de padrão de um Terminal de Codificação de Padrões e pressione <Color id="green">Codificar</Color>. O terminal reconhece a receita de novo, então devolve o padrão do NEP em vez de outro Padrão de Processamento, e você nunca precisa consultar a receita uma segunda vez. Padrões de Fabricação Mecânica são a única exceção, já que são codificados a partir de uma grade e não de uma receita; esses são casados pelo seu resultado, o que funciona sempre que uma única receita produz aquele resultado.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Que Não Converte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<Color id="red">Um padrão que fica com um de seus ingredientes não converte.</Color> Padrões de Deploy e de Enchimento seguram uma ferramenta que a máquina devolve quando a fabricação termina, e um Padrão de Processamento não tem como dizer isso. Converter um pediria à sua rede uma ferramenta nova a cada fabricação, então a receita simplesmente não casa e nada aparece no espaço de saída.

Todo o resto converte, incluindo padrões de Fabricação Mecânica e todo padrão de Matriz.
