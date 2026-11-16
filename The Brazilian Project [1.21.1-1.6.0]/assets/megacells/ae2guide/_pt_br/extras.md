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

Com a premissa principal do add-on abordada, concluímos agora com alguns dos recursos e adições menores
fornecidos pelo MEGA, tanto por completude quanto por um pouco mais de experimentação.

## Interface MEGA

<Row>
  <BlockImage id="mega_interface" scale="4" />
  <GameScene zoom="4" background="transparent">
    <ImportStructure src="assets/assemblies/cable_mega_interface.snbt" />
  </GameScene>
</Row>

Como complemento do <ItemLink id="megacells:mega_pattern_provider" />, a **Interface MEGA** serve como uma
versão de capacidade dupla da <ItemLink id="ae2:interface" />. O dobro de espaços, o dobro de E/S e taxa de transferência, e o dobro
de manutenção de estoque.

<RecipeFor id="mega_interface" />
<RecipeFor id="cable_mega_interface" />

## Bancada de Células Portátil

<ItemImage id="portable_cell_workbench" scale="4" />

Um tanto fora do padrão do resto do add-on, a **Bancada de Células Portátil** é uma versão... *menor* da
<ItemLink id="ae2:cell_workbench" />. Pequena o suficiente, na verdade, para caber na palma da sua mão, enquanto ainda
é capaz de configurar qualquer célula de armazenamento normalmente.

Só se pode imaginar como uma bancada inteira coube nessa coisa.

<RecipeFor id="portable_cell_workbench" />

## Encaixe de Célula

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/cell_dock.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Por fim, temos outra coisa que é mais uma vez menor em vez de maior — por isso parecia mais deslocado do que qualquer coisa
chamá-lo de item "MEGA".

O **Encaixe de Célula ME** é, em certo sentido, como uma versão mais compacta do <ItemLink id="ae2:chest" />, capaz de guardar
dentro de si uma célula de armazenamento por vez. Embora possa faltar a ele algumas das funcionalidades extras do Baú — a saber, seu
terminal embutido — ele ainda serve como um ótimo provedor de armazenamento compacto. Em particular, como vem na forma de uma
[parte de cabo](ae2:ae2-mechanics/cable-subparts.md) "plana", um único cabo pode segurar vários Encaixes de Célula no mesmo
espaço de um bloco. Talvez seja útil no caso de uma sub-rede compacta que precise de algum tipo de armazenamento temporário em buffer.

<RecipeFor id="cell_dock" />

## "Cores Clássicas de Células"

Como uma releitura visual opcional, o MEGA fornece o seguinte resource pack embutido que o usuário pode optar por ativar.

![Resource pack Classic Cell Colours](assets/diagrams/cell_colours_pack.png)

Nas versões do AE2 e seus add-ons anteriores ao Minecraft 1.21, as texturas antigas de qualquer conjunto de células de armazenamento seguiam
um esquema de cores de 5 pontos, começando num marrom avermelhado para as células 1k e passando por amarelo, verde e azul até
um tom final de violeta claro/lavanda para 256k. O MEGA também seguiu essa tendência com seus próprios níveis de células, começando num
vermelho profundo em 1M e terminando num violeta mais profundo em 256M.

![Texturas antigas das células](assets/diagrams/cell_colours_old.png)

Com a reforma de texturas mais ampla introduzida no AE2 pós-1.20.x, as células de armazenamento também foram adaptadas para seguir uma
paleta de cores um pouco mais ampla, com as células de armazenamento base do AE2 seguindo uma transição de azul para verde ao longo da progressão de níveis e o
MEGA pretendendo continuar a progressão de amarelo para vermelho para rosa. Embora isso também seja muito bonito, não parecia uma má ideia
incluir também a opção do sistema de cores antigo para quem preferisse em vez do atual.

![Cores de células do AE2](assets/diagrams/cell_colours_ae2.png)
![Cores de células do MEGA](assets/diagrams/cell_colours_mega.png)
