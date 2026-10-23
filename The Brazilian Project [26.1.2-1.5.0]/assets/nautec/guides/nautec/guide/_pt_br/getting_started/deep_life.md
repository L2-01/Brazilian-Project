---
navigation:
  title: Vida nas Profundezas
  icon: nautec:luminous_membrane
  position: 12
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:deep_kelp
  - nautec:luminescent_algae
  - nautec:glow_polyp
  - nautec:prismarine_frond
  - nautec:vent_tubeworm
  - nautec:abyssal_coral
  - nautec:silt_skipper
  - nautec:silt_skipper_bucket
  - nautec:silt_skipper_spawn_egg
  - nautec:lantern_jelly_spawn_egg
  - nautec:vent_crawler_spawn_egg
  - nautec:abyssal_maw_spawn_egg
---

# <Color id="light_purple">Vida nas Profundezas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="luminous_membrane" scale="2"/>
  As seis plantas e quatro criaturas dos oceanos do NauTec.
</Column>

## <Color id="gold">Plantas</Color>

Colete as seis com Tesoura; qualquer outra ferramenta as quebra sem retorno. Cada uma pode ser enxertada para obter bactérias com a <ItemLink id="grafting_tool"/>; [Enxertia de Bactérias](nautec:aquatic_biology/bacteria_grafting.md) lista quais.

| Planta | Bioma | Luz |
|---|---|---|
| <ItemLink id="deep_kelp"/> | Bosque bioluminescente | nenhuma |
| <ItemLink id="luminescent_algae"/> | Bosque bioluminescente | 9 |
| <ItemLink id="glow_polyp"/> | Bosque bioluminescente | 7 |
| <ItemLink id="prismarine_frond"/> | Recife de prismarinho | nenhuma |
| <ItemLink id="vent_tubeworm"/> | Fontes hidrotermais | 3 |
| <ItemLink id="abyssal_coral"/> | Fossa abissal | nenhuma |

A Alga Profunda cresce para cima na água como alga, até 40 blocos de altura (`kelpHeight` em `config/nautec-common.toml`). Só o bloco do topo de uma haste dropa, então corte a ponta. O Pólipo Luminoso gruda em qualquer face de um bloco como o líquen brilhante, e Farinha de Osso o espalha. As outras quatro são plantas subaquáticas simples.

Zonas de pesca com sorte em cada bioma também rendem as plantas daquele bioma. Veja [Pesca](fishing.md).

***

## <Color id="gold">Saltador de Silte</Color>

<GameScene zoom="3.2" background="#333333" interactive={true}>
  <Entity id="nautec:silt_skipper"/>
</GameScene>

Um peixe pequeno e pacífico que nada em cardumes de até oito, na Fossa abissal, no Bosque bioluminescente e no Recife de prismarinho.

* Mate-o para obter o item <ItemLink id="silt_skipper"/>, que você pode comer.
* Clique direito num deles com um Balde de Água para capturá-lo num <ItemLink id="silt_skipper_bucket"/>, e esvazie o balde para soltá-lo de novo.

***

## <Color id="gold">Água-Viva-Lanterna</Color>

<GameScene zoom="2.4" background="#333333" interactive={true}>
  <Entity id="nautec:lantern_jelly"/>
</GameScene>

Uma água-viva lenta e brilhante que flutua pelo Bosque bioluminescente. É pacífica e tem pouca vida.

Dropa 1 a 2 <ItemLink id="luminous_membrane"/> (mais com Saque), usadas no implante Pele de Fotóforo.

***

## <Color id="gold">Rastejante Hidrotermal</Color>

<GameScene zoom="2.4" background="#333333" interactive={true}>
  <Entity id="nautec:vent_crawler"/>
</GameScene>

Uma criatura blindada que caminha pelo fundo das Fontes hidrotermais. Ela foge quando ferida em vez de revidar, absorve metade de qualquer empurrão e não sofre dano de fogo.

Dropa 1 a 3 <ItemLink id="chitin_plate"/> (mais com Saque). Quatro chapas fazem o implante Carapaça Hidrotermal.

***

## <Color id="gold">Mandíbula Abissal</Color>

<GameScene zoom="1.8" background="#333333" interactive={true}>
  <Entity id="nautec:abyssal_maw"/>
</GameScene>

Um predador hostil da Fossa abissal. Só surge em água escura abaixo de y 40, ataca jogadores de vista a até 24 blocos de distância e te persegue pela água. Tem 24 de vida e morde causando 6 de dano.

Dropa um <ItemLink id="abyssal_organ"/> (mais com Saque), usado no implante Olhos Abissais.

***

## <Color id="gold">Implantes</Color>

Cada um dos três drops de criatura produz um implante: veja [Implantes de Fauna Profunda](nautec:laser_augmentation/deep_fauna_augments.md). Ovos geradores das quatro criaturas estão no menu criativo.
