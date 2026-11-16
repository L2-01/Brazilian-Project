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

E/S Espacial é uma forma de recortar e colar volumes físicos de espaço no seu mundo. Ela pode ser usada para mover <ItemLink id="flawless_budding_quartz" />,
ter um cômodo na sua base onde você troca vários interiores para usá-lo com propósitos diferentes, ou até mover
o portal do End!

Ela funciona *trocando* o volume definido com um volume de tamanho idêntico na dimensão de armazenamento espacial, enviando o que estiver
na fileira de pilões para a dimensão de armazenamento espacial, e o que estiver na dimensão para a fileira de pilões.

Isso significa que, se você tiver uma forma de viajar entre dimensões (a E/S espacial *pode* ser usada para fazer um teletransportador,
mas fazer isso é muito complexo, um tanto gambiarrado e além do escopo do guia), você pode usá-las como máquinas compactas de tamanho personalizado ou dimensões
de bolso.

# A Configuração Multibloco

A E/S Espacial exige um arranjo específico de seus componentes para funcionar e definir o volume a ser recortado e colado.

Todos os componentes precisam estar na mesma [rede](me-network-connections.md) para funcionar, e você só pode ter uma
configuração de E/S espacial por rede. Portanto, uma [sub-rede](subnetworks.md) é recomendada.

## O Porto de Entrada/Saída Espacial

<BlockImage id="spatial_io_port" p:powered="true" scale="4" />

O <ItemLink id="spatial_io_port" /> controla a operação de E/S espacial. Ele mostra estatísticas da configuração multibloco e guarda
as [células espaciais](../items-blocks-machines/spatial_cells.md)

Ele mostra
- [Energia](energy.md) armazenada e máxima na rede
- Energia necessária para realizar a operação. Ela pode ser bem grande e é usada instantaneamente, então garanta que você tem
  [células de energia](../items-blocks-machines/energy_cells.md) suficientes para segurá-la toda.
- Eficiência da fileira de pilões
- Tamanho do volume definido

Para realizar uma operação de E/S espacial, coloque uma célula de armazenamento espacial no slot de entrada e dê ao porto de entrada/saída espacial um pulso de redstone.
Ele então *trocará* o volume nos pilões com o volume na dimensão de armazenamento espacial. Isso significa que, se você enviar um
conjunto de blocos para a dimensão de armazenamento espacial, *depois colocar outro conjunto de blocos nos pilões*, recolocar a célula no slot de entrada
e acionar o porto de entrada/saída de novo, o 2º conjunto de blocos desaparecerá e o 1º conjunto de blocos reaparecerá.

**CUIDADO: Qualquer entidade no volume definido, incluindo você, será carregada junto, e se você não tiver como sair, ficará preso
na dimensão de armazenamento espacial, numa caixa escura e vazia.** Use isso para pregar peças nos seus amigos!

## Pilões

<BlockImage id="spatial_pylon" p:powered_on="true" scale="4" />

<ItemLink id="spatial_pylon" />s são a parte principal de uma configuração de E/S espacial e definem o volume a ser afetado.

O volume é definido pela caixa delimitadora da parte externa dos pilões, contraída em 1 bloco em todas as direções.

As regras são:
- Tamanho mínimo de 3x3x3 (que define um volume de 1x1x1)
- Todos os pilões espaciais devem estar na caixa delimitadora externa
- Todos os pilões espaciais devem estar na mesma rede
- Todos os pilões devem ter pelo menos 2 blocos de comprimento

Por exemplo, digamos que você queira definir um volume de 3x3x3. Seguindo a regra 2, todos os pilões devem estar dentro de uma casca de 5x5x5 ao redor
do volume que você quer definir. Eles podem estar em quase qualquer configuração, desde que contidos dentro daquela casca de 5x5x5 de 1 bloco de espessura.

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/spatial_storage_3x3x3_pylon_demonstration.snbt" />

<BoxAnnotation color="#33dd33" min="1 1 1" max="4 4 4">
        O volume a ser movido
  </BoxAnnotation>

<BoxAnnotation color="#3333ff" min="5 5 0" max="0 0 5">
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

Uma configuração mais razoável é esta:

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

A eficiência da fileira de pilões depende de quanto da casca você preenche. Configurações mínimas ao redor de volumes grandes
serão muito ineficientes e podem exigir *bilhões* de AE.

## Dimensões da Célula

Uma vez que uma [célula espacial](../items-blocks-machines/spatial_cells.md) tenha sido usada, ela ganha um conjunto permanentemente definido de dimensões XYZ (ex.: 3x4x2)
e é vinculada a um volume de espaço na dimensão de armazenamento espacial. **VOCÊ NÃO PODE REDEFINIR, REFORMATAR OU REDIMENSIONAR UMA CÉLULA ESPACIAL DEPOIS
DE ELA TER SIDO USADA.** Faça uma célula nova se quiser usar dimensões diferentes.

Essas não são as mesmas dimensões do nome de uma célula; uma célula de 16^3 pode ter quaisquer dimensões *até* 16x16x16

Note que este volume é direcional e não pode ser girado. Um volume de 2x2x3 não é o mesmo que um volume de 3x2x2, mesmo sendo do
mesmo tamanho.

Se as dimensões XYZ de uma célula não corresponderem ao volume definido (visto no porto de entrada/saída), o porto de entrada/saída não funcionará.
