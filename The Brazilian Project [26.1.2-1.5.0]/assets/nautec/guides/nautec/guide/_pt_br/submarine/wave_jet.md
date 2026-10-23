---
navigation:
  title: Propulsor Aquático
  icon: nautec:wave_jet
  position: 5
  parent: submarine/submarine-index.md
item_ids:
  - nautec:wave_jet
---

# <Color id="light_purple">Propulsor Aquático</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="wave_jet" scale="2"/>
  Um propulsor subaquático de mão.
</Column>

O Propulsor Aquático puxa você pela água para onde você olha enquanto segura o uso, e carrega um holofote.

***

## <Color id="gold">Dirigindo</Color>

Entre na água, segure o Propulsor Aquático e segure o uso (botão direito). Ele puxa você numa pose de nado para onde quer que esteja olhando, e em um segundo estabiliza em cerca do dobro da sua velocidade de nado. Solte para parar. A propulsão e a velocidade máxima são configuráveis (`waveJetThrust`, `waveJetMaxSpeed`).

Ele funciona em qualquer lugar em que você esteja na água. Saia da água ou seque a célula e ele para de puxar, e você continua nadando ou andando normalmente.

***

## <Color id="gold">Deslizando na Superfície</Color>

Com sua cabeça acima da superfície, o propulsor só empurra nivelado ou para baixo. Olhe à frente e ele o leva deslizando sobre a água em vez de lançá-lo para fora dela. Olhe para baixo para mergulhar e, uma vez embaixo, ele empurra em todas as direções de novo.

***

## <Color id="gold">As Duas Mãos</Color>

O Propulsor Aquático tem duas empunhaduras, então a outra mão precisa ficar vazia. Ele funciona em qualquer mão. Ponha qualquer coisa na sua mão livre e o Propulsor Aquático vai para um espaço vazio do seu inventário, ou cai aos seus pés se não houver espaço, com a mensagem "O Propulsor Aquático exige as duas mãos".

***

## <Color id="gold">Prendendo a Respiração</Color>

Enquanto você se propulsiona, sua barra de ar para de drenar. Ela volta a drenar no momento em que você solta. Ela conserva o ar que você tem em vez de reabastecê-lo, então saia com a barra cheia. Para mergulhos longos, vista um [Traje de Mergulho](nautec:getting_started/diving_gear.md).

***

## <Color id="gold">O Holofote</Color>

Aperte F enquanto o segura para ligar ou desligar as lâmpadas. Elas lançam um cone de luz a até 12 blocos à frente de onde você olha e iluminam o bloco que alcançam com nível de luz 14, então a área realmente fica iluminada, não só o feixe. O holofote funciona dentro ou fora d'água, se apaga quando você guarda o Propulsor Aquático e volta a acender quando você o segura de novo.

F é seu próprio atalho, Alternar Holofote do Propulsor Aquático. Enquanto você segura o Propulsor Aquático, ele substitui a troca de mãos do vanilla no F. Reatribua o holofote a outra tecla para manter a troca de mãos. Alcance, brilho e uso de energia são configuráveis, e um brilho de 0 mantém o cone visível sem iluminar o mundo.

***

## <Color id="gold">Energia</Color>

| | Energia por tick | Uma célula cheia dura |
|---|---|---|
| Propulsionando | 2 | 2,5 minutos |
| Holofote aceso | 1 | 5 minutos |

A célula comporta 6.000. A barra sob o item mostra o que resta, e o holofote se desliga sozinho quando a célula esvazia. Recarregue-o num <ItemLink id="charger"/>. Ele aceita o que o feixe do Carregador entregar, até 128 AP por tick, então um feixe de 12 AP o enche de vazio em cerca de 25 segundos e um mais forte em alguns. Jogadores no modo criativo não usam energia.

***

### <Color id="aqua">Receita do Propulsor Aquático</Color>

<Recipe id="nautec:wave_jet"/>
