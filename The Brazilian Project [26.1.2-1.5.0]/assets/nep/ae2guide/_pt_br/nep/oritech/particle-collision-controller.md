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

  Executa padrões de colisão de partículas num Acelerador de Partículas que você construiu. Ele acelera uma partícula ao redor do anel, então larga a segunda no seu caminho no momento certo, e recolhe o que quer que a colisão produza.
</Column>

<Recipe id="nep:module_status/particle_collision_controller"/>

<ItemImage id="minecraft:air" scale="0.25"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Configuração</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* Construa o anel do jeito que o próprio guia do Oritech descreve: anéis guia, motores energizados e dois <ItemLink id="oritech:particle_accelerator"/>s alimentando partículas no **mesmo anel**.
* Pegue um <ItemLink id="nep:accelerator_linker"/> e use-o nos dois Aceleradores de Partículas. O primeiro que você vincular lança a partícula rápida, o segundo a partícula lenta. Usá-lo num controlador já vinculado o desvincula.
* Use o vinculador no Controlador de Colisão de Partículas para sincronizar. Os dois Aceleradores de Partículas precisam estar a menos de <nep:ConfigValue name="particleCollisionControllerLinkRange"/> blocos dele. Agache e use-o no Controlador para largar seus vínculos.
* Coloque um Provedor de Padrões contra o Controlador e o encha com <ItemLink id="nep:particle_collision_pattern"/>s. O Controlador é uma máquina ME: ele entra na rede pela própria conexão de grid e devolve os itens concluídos ao Provedor por conta própria.

<Recipe id="nep:accelerator_linker"/>

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Velocidade Máxima</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Uma colisão abaixo da velocidade da receita destrói os dois itens, e uma partícula rápida demais para uma curva sai voando do anel e se perde. Então o Controlador lembra a partícula mais rápida que viu no anel vinculado, e só aceita padrões que não precisem de mais que isso.

* Um anel recém-vinculado aparece como **Não Medido** e recusa todo padrão. Largue qualquer item barato num dos Aceleradores de Partículas à mão e deixe-o correr até sair voando: o Controlador o observa e registra sua velocidade.
* Partículas das próprias colisões dele também contam, então o recorde só sobe enquanto o anel acompanhar.
* Se uma partícula se perde no meio de um trabalho, o Controlador abaixa o recorde para baixo daquela receita para parar de tentar. Conserte o anel, depois dispare outra partícula por ele para medir de novo.
* Vincular novos Aceleradores de Partículas recomeça o recorde.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Campo Magnético</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

Com o **Oritech Things** instalado, um Campo Magnético do Acelerador vinculado a um dos dois Aceleradores de Partículas carrega a partícula daquele controlador por todas as curvas, então o anel não tem velocidade máxima para medir.

* Enquanto o campo tiver energia e nenhum sinal de redstone, o Controlador aceita todo padrão, qualquer que seja a velocidade, e o mostrador exibe **Campo magnético** no lugar da velocidade máxima.
* A partícula rápida sempre lança do Acelerador de Partículas ao qual o campo está vinculado, seja qual tiver sido vinculado primeiro.
* Uma partícula perdida enquanto o campo segura, para um campo que secou ou para motores que pararam de empurrar, limita o campo àquela velocidade, então o Controlador para de tentar uma receita que não consegue terminar. O mostrador então exibe **Campo, máx** e o teto. Uma partícula mais rápida o eleva, e revincular o limpa.
* Pule a partícula de medição num anel com campo. O campo a segura no anel para sempre, e o Controlador lê **Acelerador ocupado** até um sinal de redstone no campo a deixar sair voando.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Como Ele Fabrica</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.35"/>

1) O Controlador espera até que os dois Aceleradores de Partículas estejam vazios, sem partícula em voo e sem resultado esperando, então carrega o primeiro item no rápido.

2) A barra acompanha a velocidade daquela partícula. A energia da colisão é a soma das duas velocidades, e a partícula lenta começa em 1, então o Controlador espera a velocidade da receita menos um.

3) Ele carrega o segundo item no Acelerador de Partículas lento. A partícula rápida a alcança dentro de uma volta.

4) O resultado aparece em qualquer Acelerador de Partículas que pegou a colisão, e o Controlador o puxa para seu buffer de saída.

Se a partícula lenta nunca lançar, ou as duas nunca se encontrarem antes do tempo limite de colisão, o Controlador recolhe as duas partículas e devolve seus itens ao buffer. Ele espera dez segundos antes de tentar de novo.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Tela</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* O mostrador do topo nomeia o estágio atual e a velocidade máxima registrada do anel. Enquanto um trabalho roda, a terceira linha mostra a velocidade da partícula rápida contra a velocidade de que ela precisa.
* O buffer de entrada só aceita itens que uma colisão pendente ainda precisa.
* **Limpar Receitas Pendentes** descarta toda colisão que o Controlador ainda deve e cancela os trabalhos de fabricação na rede que estavam esperando por ele.
* **Esvaziar Buffers** devolve tudo que estava preparado ao seu inventário.
* Um Comparador ao lado do bloco lê o buffer de saída.

<ItemImage id="minecraft:air" scale="0.5"/>

***

<Column alignItems="center" fullWidth={true}>
  ## <Color id="gold">Se Nada Acontecer</Color>
</Column>

<ItemImage id="minecraft:air" scale="0.25"/>

* **Recusado: anel lento demais.** Nenhuma partícula alcançou a velocidade do padrão no anel vinculado. Acelere o anel, depois meça de novo.
* **Acelerador ocupado.** Alguma outra coisa colocou um item num Acelerador de Partículas vinculado, ou deixou um resultado nele. Mantenha funis e tubos longe dos dois.
* **Partícula nunca lançou.** Um Acelerador de Partículas precisa de um anel guia reto logo atrás dele, virado para o lado.
* **Partícula sem acelerar.** A partícula rápida passou um tempo sem ganhar velocidade. Confira se os motores têm energia.
* **Partículas nunca se encontraram.** As duas partículas voaram mas se perderam. Vincule dois Aceleradores de Partículas no mesmo anel.
* O Controlador precisa estar numa rede ME energizada, e ocupa <nep:ConfigValue name="particleCollisionControllerChannels"/> canais.
* Ligue o Registro Detalhado em Debug para que o Controlador registre todo lançamento, colisão e partícula perdida.
