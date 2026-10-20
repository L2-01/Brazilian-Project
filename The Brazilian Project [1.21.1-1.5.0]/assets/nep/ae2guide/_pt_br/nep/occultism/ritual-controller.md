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

  Executa os rituais de fabricação do Occultism para a fabricação automática ME num pentáculo que você desenhou. Ele deposita os ingredientes nas tigelas de sacrifício, inicia o ritual na tigela dourada e envia o resultado de volta ao Provedor de Padrões que o encomendou.
</Column>

<Recipe id="nep:module_status/ritual_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Obtendo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Controlador é vinculado num ritual no pentáculo de fabricação foliot do Occultism, iniciado com um Livro de Vínculo vinculado para um foliot. As tigelas guardam um Provedor de Padrões ME, uma Tigela Ritualística Dourada, um Processador de Engenharia, uma Gema Sintonizada com Espírito e duas barras de prata. O visualizador de receitas mostra o ritual por completo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Desenhe o pentáculo do jeito que o próprio livro do Occultism descreve, com sua tigela dourada no meio e tigelas de sacrifício suficientes ao redor para os rituais que você quer.
* Coloque o Controlador a menos de <nep:ConfigValue name="ritualControllerBowlRange"/> blocos da tigela dourada. A tigela dourada mais próxima que ele enxerga é a que ele dirige, e a terceira linha do mostrador mostra onde ela está.
* Coloque um [Livro Infundido com Espírito](/nep/occultism/spirit-infused-books.md) no espaço de livro à direita. Qualquer trabalho serve; só a categoria do espírito importa aqui.
* Coloque um Provedor de Padrões contra o Controlador e o encha com <ItemLink id="nep:ritual_pattern"/>s. O Controlador é uma máquina ME: ele entra na rede pela própria conexão de grid e ocupa <nep:ConfigValue name="ritualControllerChannels"/> canais.
* Mantenha toda tigela de sacrifício do pentáculo vazia. O Controlador só inicia um ritual quando consegue dispor todos os ingredientes por conta própria.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Espírito Vinculado</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O espírito do livro decide quais pentáculos o Controlador pode usar, e a que velocidade seus rituais correm.

| Espírito | Pentáculos | Velocidade |
|---|---|---|
| Foliot | Fabricação foliot | Normal |
| Djinni | Até fabricação djinni, e a Chamada Não Vinculada de Osorin | Mais rápido |
| Afrit | Até fabricação afrit | Ainda mais rápido |
| Marid | Todo pentáculo, incluindo o Contato de Ronaza | O mais rápido |

Cada categoria acima de foliot adiciona <nep:ConfigValue name="ritualControllerTierSpeed"/> por cento ao ritmo do ritual. Um padrão para um pentáculo mais forte do que o livro permite é recusado.

O ritual ainda gasta o próprio Livro de Vínculo, como faz quando você o inicia à mão. Esse livro é um dos ingredientes do padrão.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Padrões de Ritual</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Abra um Terminal de Codificação de Padrões, escolha um ritual no JEI e pressione **+**. Rituais de fabricação, de espírito nomeado, de espírito minerador e de melhoria todos codificam. Rituais de invocação, possessão e familiar não têm item para produzir e ficam de fora.
* Os ingredientes do padrão são o item de ativação e tudo que vai nas tigelas.
* Um Livro de Vínculo vinculado carrega um nome de espírito aleatório. Um padrão aceita qualquer livro do tipo certo, seja qual for o nome, e trabalhos do AE2 esperando por um item nomeado, como uma bolsa ou um espírito minerador, também o aceitam sob qualquer nome.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Sacrifícios</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Alguns rituais querem uma criatura sacrificada por perto enquanto correm. O Controlador não consegue lutar, então ele gasta um item substituto em vez disso, que o padrão carrega como mais um ingrediente. O JEI oferece os substitutos quando você codifica o padrão, e escolhe aquele que sua rede tem em maior quantidade.

* **Uma gema de alma** contendo uma criatura que o ritual aceita. Uma gema de alma volta vazia para a rede depois; uma gema de alma frágil quebra.
* **Um ovo gerador** de uma dessas criaturas.
* **Uma essência do Mystical Agriculture** daquela criatura, onde existir uma: porco, ovelha, tatu e enderman.

Quais itens substituem quais criaturas é dado: cada receita `nep:sacrifice_stand_in` nomeia uma tag de criatura e um item de ingrediente, e o nep traz uma por sacrifício que o Occultism usa, cada uma lendo sua própria tag de item em `nep:sacrifice_stand_ins/`. Um datapack pode adicionar àquelas tags, ou adicionar receitas para tags de criatura próprias.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Reparos</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Ligue **Reparar Itens da Rede** na tela e, enquanto o Controlador não tiver trabalho de padrão, ele repara itens danificados armazenados na sua rede com os rituais de reparo do Occultism: ferramentas, armaduras, gizes e espíritos mineradores.

* Ele procura um item danificado e os outros ingredientes do ritual, tira-os do armazenamento, executa o reparo e devolve o item consertado.
* Reparos usam as mesmas regras de pentáculo dos padrões, então um reparo no pentáculo afrit precisa de um livro afrit ou marid.
* O trabalho de padrões sempre vem primeiro.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o que o Controlador está fazendo e a categoria do espírito vinculado. A segunda linha mostra o ritual em andamento e quantos mais estão na fila, e a terceira mostra a tigela dourada e se os reparos estão ligados.
* A barra acompanha o tempo do ritual.
* O buffer de entrada só aceita itens que um ritual na fila ainda precisa.
* **Limpar Receitas Pendentes** descarta todo ritual que o Controlador ainda deve e cancela os trabalhos de fabricação na rede que estavam esperando por ele.
* **Esvaziar Buffers** devolve tudo que estava preparado ao seu inventário.
* Um Comparador ao lado do bloco lê o buffer de saída.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Pentáculo errado.** O giz ao redor da tigela dourada não é o pentáculo que este ritual precisa. O livro do Occultism mostra cada um.
* **Tigelas de sacrifício em uso.** Uma tigela ainda contém algo. O Controlador nunca deposita ingredientes ao lado de itens que ele não colocou lá.
* **Tigelas de sacrifício insuficientes.** O ritual precisa de uma tigela por ingrediente a até oito blocos da tigela dourada.
* **Espírito fraco demais.** Vincule o livro de um espírito mais forte no Controlador.
* **Ritual interrompido.** Algo quebrou o ritual no meio, muitas vezes um pentáculo perturbado. O Controlador recolhe o que a tigela dourada largou, devolve ao seu buffer e tenta de novo depois de uma curta espera.
* O Controlador precisa estar numa rede ME energizada.
* Ligue o Registro Detalhado em Debug para que o Controlador registre todo ritual que inicia, termina ou perde.
