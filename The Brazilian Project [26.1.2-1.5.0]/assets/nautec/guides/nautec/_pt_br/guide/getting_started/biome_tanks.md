---
navigation:
  title: Tanques de Bioma
  icon: nautec:biome_tank
  position: 20
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:biome_tank
---

# <Color id="light_purple">Tanques de Bioma</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="biome_tank" scale="2"/>
  Um tanque de vidro selado guardando um pedacinho de um bioma.
</Column>

Um Tanque de Bioma cultiva uma planta sozinho, sem energia, água ou luz, então você pode produzir plantas de biomas em que não está.

***

## <Color id="gold">Semeando um Tanque</Color>

Clique com o botão direito no tanque segurando uma planta para semeá-lo. Isso usa um exemplar da planta, e o tanque passa a cultivar aquela planta. Clique com outra planta para trocar: tudo que ele já cultivou volta para você primeiro.

Um tanque quebrado mantém sua planta, então você pode recolhê-lo e movê-lo sem semear de novo.

<RecipeFor id="biome_tank"/>

***

## <Color id="gold">Cultivo</Color>

Um tanque semeado cultiva um exemplar da sua planta a cada 30 segundos (`biomeTankTicks` em `config/nautec-common.toml`) e guarda até uma pilha. Clique nele com a mão vazia para pegar o que cresceu, ou puxe com um funil ou cano por qualquer face. Nada pode ser colocado dentro. Quando a pilha enche, o tanque para até você esvaziá-lo.

***

## <Color id="gold">Plantas</Color>

| Planta | Encontrada em |
|---|---|
| <ItemImage id="nautec:glow_polyp" scale="0.5"/> Pólipo Luminoso | Bosque bioluminescente |
| <ItemImage id="nautec:luminescent_algae" scale="0.5"/> Alga Luminescente | Bosque bioluminescente |
| <ItemImage id="nautec:deep_kelp" scale="0.5"/> Alga Profunda | Bosque bioluminescente |
| <ItemImage id="nautec:prismarine_frond" scale="0.5"/> Fronde de Prismarinho | Recife de prismarinho |
| <ItemImage id="nautec:abyssal_coral" scale="0.5"/> Coral Abissal | Fossa abissal |
| <ItemImage id="nautec:vent_tubeworm" scale="0.5"/> Verme Tubular Hidrotermal | Fontes hidrotermais |
| <ItemImage id="minecraft:kelp" scale="0.5"/> Alga | Oceano |
| <ItemImage id="minecraft:seagrass" scale="0.5"/> Erva-Marinha | Oceano |
| <ItemImage id="minecraft:sea_pickle" scale="0.5"/> Pepino-do-Mar | Oceano Quente |
| <ItemImage id="minecraft:tube_coral" scale="0.5"/> Coral-de-Tubo | Oceano Quente |
| <ItemImage id="minecraft:brain_coral" scale="0.5"/> Coral-de-Cérebro | Oceano Quente |
| <ItemImage id="minecraft:bubble_coral" scale="0.5"/> Coral-de-Bolha | Oceano Quente |
| <ItemImage id="minecraft:fire_coral" scale="0.5"/> Coral-de-Fogo | Oceano Quente |
| <ItemImage id="minecraft:horn_coral" scale="0.5"/> Coral-de-Chifre | Oceano Quente |
| <ItemImage id="minecraft:cactus" scale="0.5"/> Cacto | Deserto |
| <ItemImage id="minecraft:sugar_cane" scale="0.5"/> Cana-de-Açúcar | Margens de rio |
| <ItemImage id="minecraft:bamboo" scale="0.5"/> Bambu | Selva |
| <ItemImage id="minecraft:sweet_berries" scale="0.5"/> Bagas Doces | Taiga |
| <ItemImage id="minecraft:glow_berries" scale="0.5"/> Bagas Brilhantes | Cavernas Verdejantes |
| <ItemImage id="minecraft:red_mushroom" scale="0.5"/> Cogumelo Vermelho | Campos de Cogumelos |
| <ItemImage id="minecraft:brown_mushroom" scale="0.5"/> Cogumelo Marrom | Campos de Cogumelos |
| <ItemImage id="minecraft:crimson_fungus" scale="0.5"/> Fungo Carmesim | Floresta Carmesim |
| <ItemImage id="minecraft:warped_fungus" scale="0.5"/> Fungo Distorcido | Floresta Distorcida |
| <ItemImage id="minecraft:chorus_fruit" scale="0.5"/> Fruta-do-Coro | O End |
| <ItemImage id="minecraft:cocoa_beans" scale="0.5"/> Grãos de Cacau | Selva |

***

## <Color id="gold">Para Criadores de Modpacks</Color>

As plantas que um tanque aceita são a tag de itens `nautec:biome_tank_plants`. Adicione qualquer item a ela, de qualquer mod, com um datapack ou KubeJS, e os tanques o cultivarão. Um tanque mostra sua planta dentro do vidro usando o modelo do próprio item da planta, então plantas de mods não precisam de texturas extras. Tirar uma planta da tag para os tanques que já a cultivam.