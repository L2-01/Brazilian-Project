---
navigation:
  title: Estação de Aprimoramento Corporal
  icon: nautec:augmentation_station
  position: 1
  parent: laser_augmentation/laser_augmentation-index.md
item_ids:
  - nautec:augmentation_station
  - nautec:augmentation_station_extension
  - nautec:claw_robot_arm
---

# <Color id="light_purple">Estação de Aprimoramento Corporal</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="augmentation_station" scale="2"/>
  A Estação de Aprimoramento Corporal é o multibloco que instala aprimoramentos no seu corpo.
</Column>

Você fica sobre o bloco do meio, as quatro extensões ao seu redor seguram a peça, e seus braços robóticos a instalam.

***

## <Color id="gold">Construindo-a</Color>

A estrutura é de uma camada, 5 por 5, com os cantos vazios:

* A Estação de Aprimoramento Corporal no meio.
* Prismarinho Polido diretamente ao norte, sul, leste e oeste dela.
* Blocos de Aço Aquarine nas quatro diagonais.
* Uma Extensão da Estação de Aprimoramento Corporal a dois blocos em cada lado.

<GameScene zoom="4" background="#333333" interactive={true}>
  <Block id="nautec:augmentation_station_extension" x="2" y="0" z="0"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="0" z="1"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="1"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="0" z="1"/>
  <Block id="nautec:augmentation_station_extension" x="0" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="1" y="0" z="2"/>
  <Block id="nautec:augmentation_station" x="2" y="0" z="2"/>
  <Block id="nautec:polished_prismarine" x="3" y="0" z="2"/>
  <Block id="nautec:augmentation_station_extension" x="4" y="0" z="2"/>
  <Block id="nautec:aquarine_steel_block" x="1" y="0" z="3"/>
  <Block id="nautec:polished_prismarine" x="2" y="0" z="3"/>
  <Block id="nautec:aquarine_steel_block" x="3" y="0" z="3"/>
  <Block id="nautec:augmentation_station_extension" x="2" y="0" z="4"/>
  <IsometricCamera yaw="225" pitch="30"/>
</GameScene>

Clique com o botão direito no bloco central da Estação de Aprimoramento Corporal segurando a <ItemLink id="aquarine_steel_wrench"/> sem agachar para formá-la. As quatro extensões têm que estar no lugar, mesmo que você só carregue uma delas. Quebrar qualquer bloco da estação formada desfaz tudo; recoloque o bloco e use a chave de novo.

***

## <Color id="gold">Carregando uma Extensão</Color>

Clique com o botão direito numa extensão formada para abri-la. Ela tem dois slots, cada um segurando um item:

* O slot de cima aceita o <ItemLink id="claw_robot_arm"/>. Sem ele a extensão é ignorada.
* O slot de baixo aceita a peça que você quer instalada.

Carregue tantas extensões quantas peças o aprimoramento tiver. Quase todo aprimoramento usa uma única peça, então carregue exatamente uma extensão e deixe as outras vazias. A Carapaça Hidrotermal é a exceção: leva uma Chapa de Quitina em cada uma das quatro extensões. A estação só reconhece a receita quando as extensões carregadas correspondem a ela exatamente, então uma extensão carregada a mais impede qualquer oferta.

***

## <Color id="gold">Energizando-a</Color>

Toda extensão segurando uma peça precisa de um feixe de laser de pelo menos 25 AP subindo até ela pelo bloco de baixo. A energia só é verificada, não consumida, mas tem que ficar a 25 AP ou mais durante a instalação inteira. Extensões vazias não precisam de feixe.

Como o feixe tem que entrar por baixo, ponha seu catalisador ou relé sob o piso e dispare-o reto para cima. Veja [Energia de Laser](nautec:getting_started/laser_power.md) para fazer um feixe começar.

O limite de 25 AP é configurável (`augmentationPowerRequirement`).

***

## <Color id="gold">Usando-a</Color>

Fique sobre o bloco do meio. Após meio segundo a tela da estação abre. Ela atualiza ao vivo enquanto você está ali, então você pode carregar peças ou consertar o feixe com ela aberta:

* A barra de estado no topo diz se a estação está pronta e, se não, o que está errado. Passe o mouse sobre ela para a explicação completa.
* A caixa de aprimoramento diz o nome do aprimoramento que as peças carregadas produzem e o que ele faz.
* As quatro colunas de extensão mostram a peça de cada extensão, com uma moldura vermelha se a peça não tiver Braço Robótico de Garra, e o feixe que ela recebe. O número fica verde a 25 AP ou mais e vermelho abaixo. Passe o mouse numa coluna para detalhes.
* Passe o mouse em você à esquerda para ver os aprimoramentos que já tem.

Escolha um espaço corporal ao longo da base e pressione Aplicar. Se aquele espaço já tiver um aprimoramento, o botão Aplicar fica vermelho e sua dica diz o que será substituído. Se você fechou a tela, saia e volte para abri-la de novo. Ficar sobre uma estação não formada mostra um lembrete acima da sua barra de acesso.

Durante os quatro segundos seguintes você fica preso no lugar enquanto os braços robóticos trabalham, e uma barra mostra o progresso. Sair, o feixe cair abaixo de 25 AP ou a peça ser tirada cancela a instalação e nada é consumido. Quando termina, a peça é gasta, o Braço Robótico de Garra fica, e o aprimoramento está no espaço escolhido.

[Aprimoramento de Jogador](augmentation.md) lista o que cada espaço aceita e como funciona substituir um aprimoramento.

***

## <Color id="gold">Receitas</Color>

<Recipe id="nautec:augmentation_station"/>

<Recipe id="nautec:augmentation_station_extension"/>

<Recipe id="nautec:claw_robot_arm"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

Cada extensão em uso precisa de 25 AP. Um feixe mais forte instala mais rápido: a velocidade é a raiz quadrada de (feixe ÷ 25), e a instalação roda no ritmo da extensão mais fraca em uso, então energize-as igualmente.

| Feixe | Velocidade |
|---|---|
| 25 AP | ×1 (normal) |
| 100 AP | ×2 |
| 225 AP | ×3 |
| 400 AP | ×4 |

Os quatro segundos que uma instalação leva são com toda extensão a 25 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.