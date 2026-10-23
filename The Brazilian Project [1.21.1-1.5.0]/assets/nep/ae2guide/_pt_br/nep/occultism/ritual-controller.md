---
navigation:
  title: Controlador de Rituais
  icon: nep:ritual_controller
  parent: nep/occultism/index.md
  position: 30
item_ids:
  - nep:ritual_controller
  - nep:ritual_pattern
---
# <Color id="gold">Controlador de Rituais</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Controlador de Rituais</Color>

  <ItemImage id="nep:ritual_controller" scale="2"/>

  Executa os rituais de fabricação do Occultism para a fabricação automática ME num pentáculo que você desenhou. Ele deposita os ingredientes nas tigelas de sacrifício, inicia o ritual na tigela dourada e manda o resultado de volta ao Provedor de Padrões que o pediu.
</Column>

<Recipe id="nep:module_status/ritual_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obtendo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador é vinculado num ritual no pentáculo de fabricação de foliot do Occultism, iniciado com um Livro de Vinculação vinculado para um foliot. As tigelas guardam um Provedor de Padrões ME, uma Tigela de Sacrifício Dourada, um Processador de Engenharia, uma Gema Sintonizada com Espíritos e duas barras de prata. O visualizador de receitas mostra o ritual por completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Desenhe o pentáculo do jeito que o próprio livro do Occultism descreve, com sua tigela dourada no meio e tigelas de sacrifício suficientes ao redor para os rituais que você quer.
* Coloque o Controlador a até <nep:ConfigValue name="ritualControllerBowlRange"/> blocos da tigela dourada. A tigela dourada mais próxima que ele vê é a que ele dirige, e a terceira linha do visor mostra onde ela está.
* Ponha um [Livro Infundido com Espírito](/nep/occultism/spirit-infused-books.md) no espaço de livro à direita. Qualquer ofício serve; só o tier do espírito importa aqui.
* Coloque um Provedor de Padrões contra o Controlador e encha-o de <ItemLink id="nep:ritual_pattern"/>s. O Controlador é uma máquina ME: ele se junta à rede pela própria conexão de grade e ocupa <nep:ConfigValue name="ritualControllerChannels"/> canais.
* Mantenha toda tigela de sacrifício do pentáculo vazia. O Controlador só inicia um ritual quando pode dispor todos os ingredientes sozinho.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Espírito Vinculado</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O espírito do livro decide quais pentáculos o Controlador pode usar, e quão rápido seus rituais vão.

| Espírito | Pentáculos | Velocidade |
|---|---|---|
| Foliot | Fabricação de foliot | Normal |
| Djinni | Até fabricação de djinni, e o Chamado Desvinculado de Osorin | Mais rápido |
| Afrit | Até fabricação de afrit | Ainda mais rápido |
| Marid | Todo pentáculo, o Contato de Ronaza incluído | O mais rápido |

Cada tier acima de foliot adiciona <nep:ConfigValue name="ritualControllerTierSpeed"/> por cento ao ritmo do ritual. Um padrão para um pentáculo mais forte do que o livro permite é recusado.

O ritual ainda gasta o próprio Livro de Vinculação, como faz quando você o inicia à mão. Aquele livro é um dos ingredientes do padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Padrões de Ritual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Abra um Terminal de Codificação de Padrões, escolha um ritual no JEI e pressione **+**. Rituais de fabricação, de nomear espíritos, de espírito minerador e de melhoria todos codificam. Rituais de invocação, possessão e familiares não têm item para fazer e ficam de fora.
* Os ingredientes do padrão são o item de ativação e tudo que vai nas tigelas.
* Um Livro de Vinculação vinculado carrega um nome de espírito aleatório. Um padrão aceita qualquer livro do tipo certo, seja qual for o nome, e trabalhos do AE2 esperando por um item nomeado, como uma bolsa ou um espírito minerador, também o aceitam com qualquer nome.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sacrifícios</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Alguns rituais querem uma criatura abatida por perto enquanto rodam. O Controlador não pode lutar, então ele gasta um item substituto em vez disso, que o padrão carrega como mais um ingrediente. O JEI oferece os substitutos quando você codifica o padrão, e escolhe aquele do qual sua rede tem mais.

* **Uma gema de alma** segurando uma criatura que o ritual aceita. Uma gema de alma volta vazia à rede depois; uma gema de alma frágil quebra.
* **Um ovo de invocação** de uma criatura dessas.
* **Uma essência do Mystical Agriculture** daquela criatura, onde existir uma: porco, ovelha, tatu e enderman.

Quais itens substituem quais criaturas é dado: cada receita `nep:sacrifice_stand_in` nomeia uma tag de criatura e um ingrediente de item, e o nep traz um por sacrifício que o Occultism usa, cada um lendo sua própria tag de item em `nep:sacrifice_stand_ins/`. Um datapack pode adicionar a essas tags, ou adicionar receitas para tags de criatura próprias.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Reparos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Ligue **Reparar Itens da Rede** na tela, e enquanto o Controlador não tem trabalho de padrões ele repara itens danificados armazenados na sua rede com os rituais de reparo do Occultism: ferramentas, armaduras, gizes e espíritos mineradores.

* Ele procura um item danificado e os outros ingredientes do ritual, tira-os do armazenamento, executa o reparo e devolve o item consertado.
* Reparos usam as mesmas regras de pentáculo dos padrões, então um reparo no pentáculo de afrit precisa de um livro de afrit ou marid.
* Trabalho de padrões sempre vem primeiro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o que o Controlador está fazendo e o tier do espírito vinculado. A segunda linha mostra o ritual em andamento e quantos mais estão na fila, e a terceira mostra a tigela dourada e se os reparos estão ligados.
* A barra acompanha o tempo do ritual.
* O buffer de entrada só aceita itens que um ritual enfileirado ainda precisa.
* **Limpar receitas pendentes** descarta todo ritual que o Controlador ainda deve e cancela os trabalhos de fabricação na rede que esperavam por ele.
* **Esvaziar Buffers** retorna tudo o que estava preparado ao seu inventário.
* Um Comparador ao lado do bloco lê o buffer de saída.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Pentáculo errado.** O giz ao redor da tigela dourada não é o pentáculo que este ritual precisa. O livro do Occultism mostra cada um.
* **Tigelas de sacrifício em uso.** Uma tigela ainda segura algo. O Controlador nunca deposita ingredientes ao lado de itens que ele não pôs ali.
* **Tigelas de sacrifício insuficientes.** O ritual precisa de uma tigela por ingrediente a até oito blocos da tigela dourada.
* **Espírito fraco demais.** Vincule o livro de um espírito mais forte no Controlador.
* **Ritual interrompido.** Algo quebrou o ritual no meio, muitas vezes um pentáculo perturbado. O Controlador recolhe o que a tigela dourada dropou, devolve ao seu buffer e tenta de novo depois de uma pequena espera.
* O Controlador precisa estar numa rede ME energizada.
* Ative o Registro Detalhado em Depuração para que o Controlador registre todo ritual que inicia, termina ou perde.
