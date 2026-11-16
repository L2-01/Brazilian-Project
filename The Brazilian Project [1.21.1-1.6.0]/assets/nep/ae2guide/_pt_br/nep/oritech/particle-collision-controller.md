---
navigation:
  title: Controlador de Colisão de Partículas
  icon: nep:particle_collision_controller
  parent: nep/oritech/index.md
  position: 20
item_ids:
  - nep:particle_collision_controller
  - nep:accelerator_linker
---
# <Color id="gold">Controlador de Colisão de Partículas</Color>

<Column alignItems="center" fullWidth={true}>
  # <Color id="gold">Controlador de Colisão de Partículas</Color>

  <ItemImage id="nep:particle_collision_controller" scale="2"/>

  Executa padrões de colisão de partículas num Acelerador de Partículas que você construiu. Ele acelera uma partícula ao redor do anel, depois solta a segunda no seu caminho no momento certo, e coleta o que a colisão produz.
</Column>

<Recipe id="nep:module_status/particle_collision_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Preparação</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Construa o anel do jeito que o próprio guia do Oritech descreve: anéis-guia, motores energizados, e dois <ItemLink id="oritech:accelerator_controller"/>s alimentando partículas para **o mesmo anel**.
* Pegue um <ItemLink id="nep:accelerator_linker"/> e use-o nos dois Controladores de Acelerador. O primeiro que você vincula lança a partícula rápida, o segundo a partícula lenta. Usá-lo num controlador vinculado de novo o desvincula.
* Use o vinculador no Controlador de Colisão de Partículas para sincronizar. Ambos os Controladores de Acelerador precisam estar a até <nep:ConfigValue name="particleCollisionControllerLinkRange"/> blocos dele. Agache e use-o no Controlador para soltar seus vínculos.
* Coloque um Provedor de Padrões contra o Controlador e encha-o de <ItemLink id="nep:particle_collision_pattern"/>s. O Controlador é uma máquina ME: ele se junta à rede pela própria conexão de grade e devolve itens prontos ao Provedor sozinho.

<Recipe id="nep:accelerator_linker"/>

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Velocidade Máxima</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma colisão abaixo da velocidade da receita destrói os dois itens, e uma partícula rápida demais para uma curva voa para fora do anel e se perde. Então o Controlador lembra a partícula mais rápida que já viu no anel vinculado, e só aceita padrões que não precisem de mais que isso.

* Um anel recém-vinculado mostra **Não medido** e recusa todo padrão. Solte qualquer item barato num dos Controladores de Acelerador à mão e deixe-o rodar até voar para fora: o Controlador o observa e registra sua velocidade.
* Partículas das suas próprias colisões também contam, então o recorde só sobe enquanto o anel acompanha.
* Se uma partícula se perde no meio do trabalho, o Controlador baixa o recorde abaixo daquela receita para parar de tentar. Conserte o anel, depois dispare outra partícula por ele para medir de novo.
* Vincular novos Controladores de Acelerador recomeça o recorde.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Campo Magnético</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com o **Oritech Things** instalado, um Campo Magnético de Acelerador vinculado a um dos dois Controladores de Acelerador carrega a partícula daquele controlador por todas as curvas, então o anel não tem velocidade máxima para medir.

* Enquanto o campo tem energia e nenhum sinal de redstone, o Controlador aceita todo padrão, seja qual for sua velocidade, e o visor mostra **Campo magnético** no lugar da velocidade máxima.
* A partícula rápida sempre lança do Controlador de Acelerador ao qual o campo está vinculado, seja qual você vinculou primeiro.
* Uma partícula perdida enquanto o campo segura, para um campo que secou ou motores que pararam de empurrar, limita o campo àquela velocidade, então o Controlador para de retentar uma receita que não consegue terminar. O visor então mostra **Campo, máx.** e o teto. Uma partícula mais rápida o levanta, e revincular o limpa.
* Pule a partícula de medição num anel com campo. O campo a segura no anel para sempre, e o Controlador mostra **Acelerador ocupado** até um sinal de redstone no campo deixá-la voar para fora.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ela Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.35"/>

1) O Controlador espera até os dois Controladores de Acelerador estarem vazios, sem partícula em voo e sem resultado esperando, então carrega o primeiro item no rápido.

2) A barra acompanha a velocidade daquela partícula. A energia da colisão é a soma das duas velocidades, e a partícula lenta começa em 1, então o Controlador espera a velocidade da receita menos um.

3) Ele carrega o segundo item no Controlador de Acelerador lento. A partícula rápida a alcança dentro de uma volta.

4) O resultado aparece em qualquer Controlador de Acelerador que tenha apanhado a colisão, e o Controlador o puxa para o seu buffer de saída.

Se a partícula lenta nunca lança, ou as duas nunca se encontram antes do tempo limite de colisão, o Controlador recolhe ambas as partículas e devolve seus itens ao seu buffer. Ele espera dez segundos antes de tentar de novo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O visor superior nomeia o estágio atual e a velocidade máxima registrada do anel. Enquanto um trabalho roda, a terceira linha mostra a velocidade da partícula rápida contra a velocidade de que ela precisa.
* O buffer de entrada só aceita itens que uma colisão pendente ainda precisa.
* **Limpar receitas pendentes** descarta toda colisão que o Controlador ainda deve e cancela os trabalhos de fabricação na rede que esperavam por ele.
* **Esvaziar Buffers** retorna tudo o que estava preparado ao seu inventário.
* Um Comparador ao lado do bloco lê o buffer de saída.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Recusado: anel devagar demais.** Nenhuma partícula alcançou a velocidade do padrão no anel vinculado. Acelere o anel, depois meça-o de novo.
* **Acelerador ocupado.** Outra coisa pôs um item num Controlador de Acelerador vinculado, ou deixou um resultado nele. Mantenha funis e tubos longe dos dois.
* **Partícula nunca lançou.** Um Controlador de Acelerador precisa de um anel-guia reto logo atrás dele, virado para o lado.
* **Partícula não está acelerando.** A partícula rápida passou um tempo sem ganhar velocidade. Confira se os motores têm energia.
* **Partículas nunca se encontraram.** Ambas voaram mas se erraram. Vincule dois Controladores de Acelerador no mesmo anel.
* O Controlador precisa estar numa rede ME energizada, e ocupa <nep:ConfigValue name="particleCollisionControllerChannels"/> canais.
* Ative o Registro Detalhado em Depuração para que o Controlador registre cada lançamento, colisão e partícula perdida.
