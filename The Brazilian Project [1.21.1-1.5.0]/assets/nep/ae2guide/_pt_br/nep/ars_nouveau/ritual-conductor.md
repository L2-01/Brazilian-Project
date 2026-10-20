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

  Quase todo ritual é um efeito no mundo e não uma fabricação, então não há resultado para um padrão nomear. O Condutor automatiza a parte que pode ser automatizada: manter um Braseiro abastecido e aceso.
</Column>

<Recipe id="nep:module_status/ritual_conductor"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
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

* Ligue o Condutor a uma rede ME e coloque-o a até quatro blocos de um Braseiro Ritualístico. O Braseiro mais próximo que ele enxerga é o que ele dirige.
* **Clique nele com o botão direito para abrir sua tela**, com a mão vazia ou não. Tudo que o Condutor faz é configurado ali, então não há nada para memorizar e nada para errar segurando o item errado.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">A Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

A tela é a configuração inteira num lugar só, então um Condutor nunca precisa ser adivinhado.

* A lista à esquerda contém **todo ritual registrado no servidor**, rituais de addons incluídos. Clique num para conduzi-lo, clique de novo para parar. Passar o mouse sobre uma linha mostra sua descrição e seu custo de fonte por execução.
* O ritual escolhido é nomeado por inteiro no topo do lado direito, com seu custo de fonte por execução.
* **Repetir** é quanto tempo o Condutor espera depois que um ritual termina antes de começar o próximo. Clique nas setas com o botão esquerdo para avançar de cinco em cinco segundos, com o direito para avançar de um em um minuto. Na configuração mais baixa ele se rearma assim que puder.
* **Clima** e **Horário** seguram a próxima execução até o mundo concordar: céu limpo, chuva, tempestade, dia ou noite. Clique num valor ou em suas setas para alterná-lo, clique direito para voltar. Um ritual já queimando nunca é interrompido; só o próximo espera.
* **Saída** decide se o Condutor recolhe o que o ritual deixa para trás ou o deixa em paz.
* Os doze **espaços de aprimoramento** são espaços-fantasma. Pegue um item do seu inventário e clique num espaço para que aquele item seja alimentado a cada execução; clique num espaço preenchido com o cursor vazio para limpá-lo. Nada nunca é tirado de você, o espaço só guarda um modelo. Preencha dois espaços com o mesmo item para alimentar dois deles.

A linha no topo diz o que ele está fazendo agora, e sua ponta direita nomeia o Braseiro no qual ele travou.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">O Ciclo</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma vez por segundo o Condutor olha para o seu Braseiro e faz o que se aplicar:

| Estado do Braseiro | O que o Condutor faz |
|---|---|
| Vazio, condições não atendidas | Espera, e conta regressivamente até a próxima execução |
| Vazio, condições atendidas | Retira uma tabuleta correspondente da rede e define o ritual |
| Definido, ainda não aceso | Alimenta cada aprimoramento configurado por vez, depois o acende assim que o ritual puder começar |
| Em execução | Espera |

Quando o ritual termina, o Braseiro se esvazia sozinho, e o ciclo recomeça com uma tabuleta nova.

> <Color id="yellow">Toda execução custa uma tabuleta.</Color> Isso é a economia do próprio Ars Nouveau, não algo que o NEP adiciona, então automação contínua de rituais significa automatizar a produção de tabuletas também.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Redstone e Comparadores</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Um sinal de redstone no Condutor o pausa. Ele continua observando, mas não arma nem acende nada, o que é como você condiciona um ritual a um temporizador ou uma alavanca.

Um comparador lê o que ele está fazendo:

| Sinal | Significado |
|---|---|
| 0 | Nenhum ritual definido, ou nenhum Braseiro ao alcance |
| 2 | Esperando pelo seu clima, horário ou configuração de repetição, ou pausado por redstone |
| 5 | Esperando uma tabuleta chegar à rede |
| 10 | Armado, alimentando aprimoramentos ou esperando pelas próprias condições do ritual, ou o ritual em execução está sem fonte |
| 15 | O ritual está em execução |

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Fonte</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

O Condutor não fornece fonte. Um ritual em execução puxa a sua de Jarras de Fonte a até seis blocos do **Braseiro**, e simplesmente trava sem elas. Construa as jarras ao redor do Braseiro, não ao redor do Condutor.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Coletando a Saída</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com **Saída** definida como Coletar, o Condutor leva o que o ritual deixa para trás para a rede por duas rotas:

* Ele se comporta como um inventário comum, então um ritual que entrega seu rendimento aos vizinhos do Braseiro alcança a rede diretamente. Colheita faz isso. Coloque o Condutor encostado no Braseiro para capturá-lo.
* Quando um ritual termina, ele varre o que foi largado ao redor do Braseiro. Escavação, Desintegração e Despertar todos largam seus resultados no chão.

> <Color id="yellow">A varredura roda uma vez por ritual concluído</Color>, não num temporizador. Rituais variam em duração e travam sem fonte, então um Condutor que sondasse itens largados passaria a maior parte da vida escaneando à toa. Esperar o ritual realmente terminar custa uma varredura por resultado em vez disso.

Itens que um jogador jogou nunca são varridos, então um Condutor não consegue roubar o que você largar ao lado do Braseiro. A opção `Collection Radius` na configuração define até onde a varredura alcança, e 0 a desativa por completo.
