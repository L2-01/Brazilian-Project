---
navigation:
  title: Extras
  icon: mega_interface
  parent: index.md
  position: 060
categories:
  - megacells
item_ids:
  - mega_interface
  - cell_dock
  - portable_cell_workbench
---

# MEGA Cells: Extras

Com a premissa principal do add-on abordada, concluímos agora com alguns dos recursos e adições extras menores
fornecidos pelo MEGA, tanto por completude quanto por um pouco mais de experimentação.

## Interface MEGA

<Row>
  <BlockImage id="mega_interface" scale="4" />
  <GameScene zoom="4" background="transparent">
    <ImportStructure src="assets/assemblies/cable_mega_interface.snbt" />
  </GameScene>
</Row>

Como complemento do <ItemLink id="megacells:mega_pattern_provider" />, a **Interface MEGA** serve como uma
versão de capacidade dobrada da <ItemLink id="ae2:interface" />. O dobro dos espaços, o dobro de E/S e de vazão, e o dobro
de manutenção de estoque.

<RecipeFor id="mega_interface" />
<RecipeFor id="cable_mega_interface" />

## Bancada de Células Portátil

<ItemImage id="portable_cell_workbench" scale="4" />

Meio fora do padrão do resto do add-on, a **Bancada de Células Portátil** é uma versão... *menor* da
<ItemLink id="ae2:cell_workbench" />. Pequena o bastante, na verdade, para caber na palma da sua mão, enquanto ainda
é capaz de configurar qualquer célula de armazenamento normalmente.

Só resta imaginar como uma bancada inteira conseguiu caber nessa coisa.

<RecipeFor id="portable_cell_workbench" />

## Encaixe de Célula

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/cell_dock.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Por fim, temos outra coisa que, mais uma vez, é menor em vez de maior — e é por isso que chamá-la de item "MEGA" parecia
mais fora de lugar do que qualquer outra coisa.

O **Encaixe de Célula ME** é, de certa forma, como uma versão mais compacta do <ItemLink id="ae2:chest" />, capaz de manter
dentro de si uma célula de armazenamento por vez. Embora possa carecer de algumas das funcionalidades extras do Baú — a saber,
seu terminal embutido — ele ainda é um ótimo provedor de armazenamento compacto. Em particular, por vir na forma de uma
[peça de cabo](ae2:ae2-mechanics/cable-subparts.md) "achatada", um único cabo pode abrigar vários Encaixes de Célula dentro do
mesmo espaço de um bloco. Talvez alguém o ache útil no caso de uma sub-rede compacta que precise de algum tipo de armazenamento
temporário em buffer.

<RecipeFor id="cell_dock" />

## "Cores Clássicas de Célula"

Como uma referência visual opcional, o MEGA fornece o seguinte pacote de recursos embutido que o usuário pode escolher ativar.

![Pacote de recursos Cores Clássicas de Célula](assets/diagrams/cell_colours_pack.png)

Em lançamentos do AE2 e de seus add-ons anteriores ao Minecraft 1.21, as texturas antigas de todos os conjuntos de células de
armazenamento seguiam um esquema de cores de 5 pontos, começando de um marrom avermelhado para as células de 1k e passando por
amarelo, verde e azul até um tom final de violeta/lavanda claro para a de 256k. O MEGA também seguiu essa tendência com seus
próprios níveis de célula, começando de um vermelho profundo no 1M e terminando num violeta mais profundo no 256M.

![Texturas antigas das células](assets/diagrams/cell_colours_old.png)

Com a ampla reformulação de texturas introduzida no AE2 pós-1.20.x, as células de armazenamento também foram adaptadas para
seguir uma paleta de cores um pouco mais ampla, com as células de armazenamento base do AE2 seguindo uma transição de matiz de
azul para verde ao longo da progressão de níveis, e o MEGA pretendendo continuar a progressão do amarelo para o vermelho e o
rosa. Embora isso também seja bem legal, não pareceu uma má ideia incluir a opção do sistema de cores antigo para quem pudesse
preferi-lo ao atual.

![Cores das células do AE2](assets/diagrams/cell_colours_ae2.png)
![Cores das células do MEGA](assets/diagrams/cell_colours_mega.png)
