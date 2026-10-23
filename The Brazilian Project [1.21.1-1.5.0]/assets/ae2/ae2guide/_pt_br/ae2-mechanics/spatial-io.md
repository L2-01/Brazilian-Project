---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: E/S Espacial
  icon: spatial_storage_cell_2
---

# E/S Espacial

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/spatial_storage_1x1x1.snbt" />

  <BoxAnnotation color="#33dd33" min="1 1 1" max="2 2 2">
        O volume a ser movido
  </BoxAnnotation>

  <IsometricCamera yaw="195" pitch="30" />

</GameScene>

A E/S Espacial é uma forma de recortar e colar volumes físicos de espaço no seu mundo. Ela pode ser usada para mover <ItemLink id="flawless_budding_quartz" />,
ter uma sala na sua base onde você troca vários interiores para usá-la com propósitos diferentes, ou até mesmo mover
o portal do end!

Ela funciona *trocando* o volume definido por um volume de tamanho idêntico na dimensão de armazenamento espacial, enviando o que estiver
na matriz de pilões para a dimensão de armazenamento espacial e o que estiver na dimensão para a matriz de pilões.

Isso significa que, se você tiver uma forma de viajar entre dimensões (a E/S espacial *pode* ser usada para fazer um teletransporte,
mas é muito complexo, meio gambiarra e fora do escopo deste guia), você pode usá-las como máquinas compactas de tamanho personalizado ou
dimensões de bolso.

# A Montagem Multibloco

A E/S Espacial exige um arranjo específico dos seus componentes para funcionar e definir o volume a ser recortado e colado.

Todos os componentes precisam estar na mesma [rede](me-network-connections.md) para funcionar, e só pode haver uma
montagem de E/S espacial por rede. Por isso, uma [sub-rede](subnetworks.md) é recomendada.

## O Porto de Entrada/Saída Espacial

<BlockImage id="spatial_io_port" p:powered="true" scale="4" />

O <ItemLink id="spatial_io_port" /> controla a operação de E/S espacial. Ele mostra estatísticas da montagem multibloco e guarda
as [células espaciais](../items-blocks-machines/spatial_cells.md)

Ele mostra
- [Energia](energy.md) armazenada e máxima na rede
- Energia necessária para executar a operação. Pode ser bem alta e é consumida instantaneamente, então certifique-se de ter
  [células de energia](../items-blocks-machines/energy_cells.md) suficientes para comportar tudo.
- Eficiência da matriz de pilões
- Tamanho do volume definido

Para executar uma operação de E/S espacial, coloque uma célula de armazenamento espacial no slot de entrada e dê um pulso de redstone ao porto de E/S espacial.
Ele então *trocará* o volume dentro dos pilões pelo volume na dimensão de armazenamento espacial. Isso significa que, se você enviar um
conjunto de blocos para a dimensão de armazenamento espacial, *depois colocar outro conjunto de blocos nos pilões*, recolocar a célula no slot de entrada
e acionar o porto de E/S novamente, o 2º conjunto de blocos desaparecerá e o 1º conjunto reaparecerá.

**CUIDADO: qualquer entidade no volume definido, incluindo você, será levada junto e, se não tiver como sair, ficará presa
na dimensão de armazenamento espacial, numa caixa escura e vazia.** Use isso para pregar peças nos seus amigos!

## Pilões

<BlockImage id="spatial_pylon" p:powered_on="true" scale="4" />

Os <ItemLink id="spatial_pylon" />s são a parte principal de uma montagem de E/S espacial e definem o volume a ser afetado.

O volume é definido pela caixa delimitadora do lado de fora dos pilões, contraída em 1 bloco em todas as direções.

As regras são:
- Tamanho mínimo de 3x3x3 (que define um volume de 1x1x1)
- Todos os pilões espaciais devem estar na caixa delimitadora externa
- Todos os pilões espaciais devem estar na mesma rede
- Todos os pilões devem ter pelo menos 2 blocos de comprimento

Por exemplo, digamos que você queira definir um volume de 3x3x3. Pela regra 2, todos os pilões devem estar dentro de uma casca de 5x5x5 ao redor
do volume que você quer definir. Eles podem estar em praticamente qualquer configuração, desde que contidos naquela casca de 5x5x5
com 1 bloco de espessura.

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/spatial_storage_3x3x3_pylon_demonstration.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        O volume a ser movido
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Uma montagem mais razoável é esta:

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/better_spatial_storage_3x3x3.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        O volume a ser movido
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Eficiência

A eficiência da matriz de pilões depende de quanto da casca você preenche. Montagens mínimas ao redor de volumes grandes
serão muito ineficientes e podem exigir *bilhões* de AE.

## Dimensões da Célula

Uma vez usada, uma [célula espacial](../items-blocks-machines/spatial_cells.md) ganha um conjunto de dimensões XYZ permanentemente definido (ex.: 3x4x2)
e fica vinculada a um volume de espaço na dimensão de armazenamento espacial. **VOCÊ NÃO PODE REDEFINIR, REFORMATAR OU REDIMENSIONAR UMA CÉLULA ESPACIAL DEPOIS
DE USADA.** Faça uma nova célula se quiser dimensões diferentes. 

Essas não são as mesmas dimensões do nome da célula: uma célula de 16³ pode ter quaisquer dimensões *até* 16x16x16

Note que esse volume é direcional e não pode ser rotacionado. Um volume de 2x2x3 não é o mesmo que um de 3x2x2, mesmo sendo do
mesmo tamanho.

Se as dimensões XYZ de uma célula não corresponderem ao volume definido (visto no porto de E/S), o porto de E/S não operará.