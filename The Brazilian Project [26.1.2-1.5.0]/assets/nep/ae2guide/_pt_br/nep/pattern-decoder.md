---
navigation:
  title: Decodificador de Padrões
  icon: nep:pattern_decoder
  parent: nep/nep-index.md
  position: 5
item_ids:
  - nep:pattern_decoder
---
# <Color id="aqua">Decodificador de Padrões</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="aqua">Decodificador de Padrões</Color>

  <ItemImage id="nep:pattern_decoder" scale="2"/>

  Um bloco de rede do qual um servidor pode fazer os padrões do NEP depender. Enquanto o servidor o exige, um Terminal de Codificação de Padrões só codifica os padrões do NEP de um mod quando um Decodificador de Padrões na mesma rede carrega o <Color id="yellow">Módulo de Codificação</Color> daquele mod.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Meu Servidor Precisa de Um?</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Só se o servidor determinar. **Require Decoder** na configuração do servidor vem desligado por padrão e, enquanto está desligado, todo padrão do NEP codifica como sempre codificou e o Decodificador não faz nada.

Com ele ligado, a configuração lista cada integração em **Integrations**, e cada uma pode ser desligada por conta própria. Um mod desligado ali nunca precisa de módulo; um mod deixado ligado precisa do seu módulo antes que seus padrões codifiquem.

Enquanto **Require Decoder** estiver desligado, o Decodificador e seus módulos não podem ser fabricados e ficam ocultos do visualizador de receitas.

Abra um Decodificador para ver como anda a sua rede. Cada módulo tem seu próprio espaço, mostrado esmaecido até o módulo estar nele, e passar o mouse sobre um espaço nomeia seu estado:

* <Color id="green">Módulo Ativo</Color>: o espaço brilha em verde. O módulo está inserido e o Decodificador está online, então os padrões daquele mod codificam como padrões do NEP em toda a rede.
* <Color id="yellow">Módulo Inativo</Color>: o módulo está faltando, ou o Decodificador está sem energia ou canal. A luz na barra de título mostra qual.
* <Color id="red">Desativado na Configuração</Color>: uma cruz vermelha sobre o espaço. O servidor não condiciona aquele mod, então seus padrões codificam sem módulo.
* <Color id="red">Mod Não Instalado</Color>: um espaço preto com uma cruz vermelha.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configurando Um</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

1. Coloque o Decodificador em qualquer lugar na mesma rede ME do seu Terminal de Codificação de Padrões. Ele ocupa <nep:ConfigValue name="patternDecoderChannels"/> canal e consome <nep:ConfigValue name="patternDecoderIdleMeDrain"/> AE por tique, e só conta enquanto está energizado e tem seu canal.
2. Coloque os Módulos de Codificação de que precisa em seus espaços; cada módulo só cabe no seu. O módulo de cada mod é mostrado na página daquele mod neste guia, fabricado a partir de um dos materiais do próprio mod.
3. Codifique padrões como de costume. Um Decodificador cobre a rede inteira, e vários Decodificadores numa mesma rede somam seus módulos.

Um terminal sem fio conta como parte da rede à qual está vinculado, então codifica o que quer que os Decodificadores daquela rede desbloqueiem enquanto estiver ao alcance.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sem o Módulo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A codificação nunca falha por causa de um módulo ausente. Em vez disso, o terminal grava um <ItemLink id="ae2:processing_pattern"/> comum do AE2 com os mesmos ingredientes e o mesmo resultado, e avisa uma vez por sessão, por mod, qual módulo o teria tornado um padrão do NEP.

O Decodificador só decide o que o terminal grava. Padrões já codificados continuam funcionando haja ou não um Decodificador, então remover um nunca para uma configuração em andamento.

<ItemImage id="minecraft:air" scale="0.25"/>

<Recipe id="nep:pattern_decoder"/>
