---
navigation:
  title: Estabilizador
  icon: "justdynathings:stabilizer"
  position: 3
  parent: justdynathings:other.md
item_ids:
  - justdynathings:stabilizer
---

# Estabilizador

Ele pode reviver qualquer gosma em cima dele usando Forge Energy

<BlockImage id="justdynathings:stabilizer" scale="4.0" p:active="false" p:facing="down" p:goo_found="false"/>

Um exemplo de Estabilizador de Gosma energizado sob uma Gosma de Blazebloom revitalizada

<GameScene zoom="4" interactive={true}>
  <Block id="justdynathings:stabilizer" p:active="true" p:facing="down" p:goo_found="true"/>
  <Block y="1" id="justdirethings:gooblock_tier2" p:alive="true"/>
</GameScene>

Ele também pode ser usado para manter um Misturador de Paradoxo vivo quando Energizado (usando Fluido do Tempo)

<GameScene zoom="4" interactive={true}>
  <Block id="justdynathings:stabilizer" p:active="true" p:facing="down" p:goo_found="true" p:energized="true"/>
  <Block y="1" id="justdynathings:paradox_mixer" p:alive="true"/>
</GameScene>

<Recipe id="justdynathings:stabilizer" />
