---
navigation:
  title: Condutor Ritualístico
  icon: nep:ritual_conductor
  parent: nep/ars_nouveau/index.md
  position: 40
item_ids:
  - nep:ritual_conductor
---
# <Color id="gold">Condutor Ritualístico</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Condutor Ritualístico</Color>

  <ItemImage id="nep:ritual_conductor" scale="2"/>

  Quase todo ritual é um efeito no mundo em vez de uma fabricação, então não há resultado para um padrão nomear. O Condutor automatiza a parte que dá para automatizar: manter um Braseiro abastecido e acendê-lo.
</Column>

<Recipe id="nep:module_status/ritual_conductor"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

<GameScene zoom="4">
  <Block id="ars_nouveau:ritual_brazier" x="1" y="0"/>
  <Block id="nep:ritual_conductor" y="0"/>
  <BlockAnnotation y="0" color="#88cc00">
    **Condutor Ritualístico**, a até quatro blocos do Braseiro
  </BlockAnnotation>
  <BlockAnnotation x="1" y="0" color="#ffaa00">
    **Braseiro Ritualístico**, o que está sendo dirigido
  </BlockAnnotation>
</GameScene>

* Ligue o Condutor a uma rede ME e coloque-o a até quatro blocos de um Braseiro Ritualístico. O Braseiro mais próximo que ele vê é o que ele dirige.
* **Clique nele com o botão direito para abrir sua tela**, de mãos vazias ou não. Tudo que o Condutor faz é configurado ali, então não há nada para decorar e nada para errar por segurar o item errado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A tela é toda a configuração num lugar só, então um Condutor nunca precisa ser adivinhado.

* A lista à esquerda comporta **todo ritual registrado no servidor**, rituais de addons incluídos. Clique num para conduzi-lo, clique de novo para parar. Passar o mouse numa linha mostra sua descrição e seu custo de Fonte por execução.
* O ritual escolhido é nomeado por completo no topo do lado direito, com seu custo de Fonte por execução.
* **Repetição** é quanto o Condutor espera depois de um ritual terminar antes de começar o próximo. Clique com o botão esquerdo nas setas para pular de cinco segundos, com o direito para pular de um minuto. Na configuração mínima ele se rearma assim que pode.
* **Clima** e **Horário** seguram a próxima execução até o mundo concordar: céu limpo, chuva, trovão, dia ou noite. Clique num valor ou nas suas setas para alterná-lo, clique com o direito para voltar. Um ritual já queimando nunca é interrompido; só o próximo espera.
* **Saída** decide se o Condutor coleta o que o ritual deixa para trás ou o deixa em paz.
* Os doze **espaços de aprimoramento** são espaços-fantasma. Pegue um item do seu inventário e clique num espaço para que aquele item seja alimentado a cada execução; clique num espaço cheio com o cursor vazio para limpá-lo. Nada é tirado de você, o espaço só guarda um modelo. Preencha dois espaços com o mesmo item para alimentar dois deles.

A linha no topo diz o que ele está fazendo agora, e sua ponta direita nomeia o Braseiro no qual ele se travou.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Ciclo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma vez por segundo o Condutor olha para o seu Braseiro e faz o que couber destas opções:

| Estado do Braseiro | O que o Condutor faz |
|---|---|
| Vazio, condições não atendidas | Espera, e conta regressiva para a próxima execução |
| Vazio, condições atendidas | Puxa uma tábula correspondente da rede e define o ritual |
| Definido, ainda não aceso | Alimenta cada aprimoramento configurado por vez, então o acende quando o ritual pode começar |
| Em andamento | Espera |

Quando o ritual termina, o Braseiro se esvazia sozinho, e o ciclo recomeça com uma tábula nova.

> <Color id="yellow">Cada execução custa uma tábula.</Color> Isso é a economia do próprio Ars Nouveau, não algo que o NEP adiciona, então automação contínua de rituais significa automatizar a produção de tábulas também.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Redstone e Comparadores</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um sinal de redstone no Condutor o pausa. Ele continua observando, mas não prepara nem acende nada, que é como você trava um ritual num temporizador ou alavanca.

Um comparador lê o que ele está fazendo:

| Sinal | Significado |
|---|---|
| 0 | Nenhum ritual definido, ou nenhum Braseiro ao alcance |
| 2 | Aguardando seu clima, horário ou repetição, ou pausado por redstone |
| 5 | Esperando uma tábula chegar na rede |
| 10 | Preparado, alimentando aprimoramentos ou esperando as condições do próprio ritual, ou o ritual em andamento está sem Fonte |
| 15 | O ritual está em andamento |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fonte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Condutor não fornece Fonte. Um ritual em andamento puxa a sua própria de Jarras de Fonte a até seis blocos do **Braseiro**, e simplesmente trava sem elas. Construa as jarras ao redor do Braseiro, não do Condutor.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Coletando a Saída</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com **Saída** definida para Coletar, o Condutor leva o que o ritual deixa para trás à rede por duas rotas:

* Ele se comporta como um inventário comum, então um ritual que entrega sua colheita aos vizinhos do Braseiro alcança a rede diretamente. A Colheita faz isso. Coloque o Condutor contra o Braseiro para capturá-la.
* Quando um ritual termina, ele varre o que foi dropado ao redor do Braseiro. Escavação, Desintegração e Despertar todos dropam seus resultados no chão.

> <Color id="yellow">A varredura roda uma vez por ritual concluído</Color>, não num temporizador. Rituais variam em duração e travam sem Fonte, então um Condutor que checasse itens soltos passaria a maior parte da vida varrendo à toa. Esperar o ritual realmente terminar custa uma varredura por resultado em vez disso.

Itens que um jogador jogou nunca são varridos, então um Condutor não pode roubar o que você dropa ao lado do Braseiro. `Collection Radius` na configuração define o alcance da varredura, e 0 a desativa por completo.
