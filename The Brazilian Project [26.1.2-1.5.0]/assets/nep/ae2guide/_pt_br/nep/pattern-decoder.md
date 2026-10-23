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

  Um bloco de rede do qual um servidor pode fazer os padrões NEP dependerem. Enquanto o servidor o exige, um Terminal de Codificação de Padrões só codifica os padrões NEP de um mod quando um Decodificador de Padrões na mesma rede carrega o <Color id="yellow">Módulo de Codificação</Color> daquele mod.
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Meu Servidor Precisa de um?</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Só se o servidor disser que sim. **Exigir Decodificador** na configuração do servidor vem desligado por padrão, e enquanto está desligado todo padrão NEP codifica como sempre codificou e o Decodificador não faz nada.

Com ele ligado, a configuração lista cada integração em **Integrações**, e cada uma pode ser desligada individualmente. Um mod desligado ali nunca precisa de módulo; um mod deixado ligado precisa do seu módulo antes de seus padrões codificarem.

Enquanto **Exigir Decodificador** está desligado, o Decodificador e seus módulos não podem ser fabricados e ficam escondidos do visualizador de receitas.

Abra um Decodificador para ver como sua rede está. Cada módulo tem seu próprio espaço, mostrado apagado até o módulo estar nele, e passar o mouse sobre um espaço nomeia seu estado:

* <Color id="green">Módulo Ativo</Color>: o espaço brilha em verde. O módulo está inserido e o Decodificador está online, então os padrões daquele mod codificam como padrões NEP em toda a rede.
* <Color id="yellow">Módulo Inativo</Color>: o módulo está faltando, ou o Decodificador está sem energia ou canal. A luz na barra de título mostra qual.
* <Color id="red">Desativado na Configuração</Color>: uma cruz vermelha sobre o espaço. O servidor não trava aquele mod, então seus padrões codificam sem módulo.
* <Color id="red">Mod Não Instalado</Color>: um espaço preto com uma cruz vermelha.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Montando um</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

1. Coloque o Decodificador em qualquer lugar da mesma rede ME do seu Terminal de Codificação de Padrões. Ele ocupa <nep:ConfigValue name="patternDecoderChannels"/> canal e consome <nep:ConfigValue name="patternDecoderIdleMeDrain"/> AE por tick, e só conta enquanto está energizado e com seu canal.
2. Coloque os Módulos de Codificação necessários em seus espaços; cada módulo só cabe no seu. O módulo de cada mod aparece na página daquele mod neste guia, fabricado em torno de um dos materiais próprios do mod.
3. Codifique padrões normalmente. Um Decodificador cobre a rede inteira, e vários Decodificadores numa rede somam seus módulos.

Um terminal sem fio conta como parte da rede à qual está vinculado, então ele codifica o que os Decodificadores daquela rede desbloqueiam enquanto está ao alcance.

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sem o Módulo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A codificação nunca falha por falta de módulo. O terminal grava um <ItemLink id="ae2:processing_pattern"/> simples do AE2 com os mesmos ingredientes e resultado em vez disso, e avisa uma vez por sessão, por mod, qual módulo o teria tornado um padrão NEP.

O Decodificador só decide o que o terminal grava. Padrões já codificados continuam funcionando com ou sem um Decodificador por perto, então tirar um nunca para uma montagem em funcionamento.

<ItemImage id="minecraft:air" scale="0.25"/>

<Recipe id="nep:pattern_decoder"/>
