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

O Propulsor Aquático o puxa pela água para onde você olhar enquanto segura o uso, e carrega um holofote.

***

## <Color id="gold">Dirigindo-o</Color>

Entre na água, segure o Propulsor Aquático e segure o uso (botão direito). Ele o puxa em pose de nado para onde você estiver olhando, e em um segundo se estabiliza a cerca de duas vezes sua velocidade de nado. Largue para parar. O impulso e a velocidade máxima são configuráveis (`waveJetThrust`, `waveJetMaxSpeed`).

Funciona em qualquer lugar em que você esteja na água. Saia da água ou esvazie a célula e ele para de puxar, e você continua nadando ou andando normalmente.

***

## <Color id="gold">Planando na Superfície</Color>

Com a cabeça acima da superfície, o propulsor só empurra na horizontal ou para baixo. Olhe para frente e ele o leva correndo pelo topo da água em vez de lançá-lo para fora. Olhe para baixo para mergulhar, e uma vez embaixo ele empurra em todas as direções de novo.

***

## <Color id="gold">As Duas Mãos</Color>

O Propulsor Aquático tem dois punhos, então a outra mão tem que ficar vazia. Funciona em qualquer mão. Ponha qualquer coisa na sua mão livre e o Propulsor Aquático se move para um slot vazio do seu inventário, ou cai aos seus pés se não houver espaço, com a mensagem "O Propulsor Aquático exige as duas mãos".

***

## <Color id="gold">Prendendo a Respiração</Color>

Enquanto você está impulsionando, sua barra de ar para de drenar. Ela volta a drenar no momento em que você larga. Ela conserva o ar que você tem em vez de recarregá-lo, então parta com a barra cheia. Para mergulhos longos, use um [Traje de Mergulho](nautec:getting_started/diving_gear.md).

***

## <Color id="gold">O Holofote</Color>

Pressione F segurando-o para ligar ou desligar as lâmpadas. Elas lançam um cone de luz até 12 blocos à frente de onde você olha e iluminam o bloco que alcançam com nível de luz 14, então a área realmente fica iluminada, não só o feixe. O holofote funciona dentro ou fora d'água, apaga quando você guarda o Propulsor Aquático e volta a acender quando o segura de novo.

F é seu próprio atalho, Alternar Holofote do Propulsor Aquático. Enquanto você segura o Propulsor Aquático ele substitui a troca de mãos do vanilla no F. Remapeie o holofote para outra tecla para manter a troca de mãos. Alcance, brilho e consumo de energia são configuráveis, e um brilho de 0 mantém o cone visível sem iluminar o mundo.

***

## <Color id="gold">Energia</Color>

| | Energia por tique | Uma célula cheia dura |
|---|---|---|
| Impulsionando | 2 | 2.5 minutos |
| Holofote aceso | 1 | 5 minutos |

A célula guarda 6.000. A barra sob o item mostra o que resta, e o holofote se desliga sozinho quando a célula esvazia. Carregue-o num <ItemLink id="charger"/>. Ele recebe o que o feixe do Carregador entrega, até 128 AP por tique, então um feixe de 12 AP o enche de vazio em cerca de 25 segundos e um mais forte em alguns. Jogadores no modo criativo não usam energia.

***

### <Color id="aqua">Receita do Propulsor Aquático</Color>

<Recipe id="nautec:wave_jet"/>