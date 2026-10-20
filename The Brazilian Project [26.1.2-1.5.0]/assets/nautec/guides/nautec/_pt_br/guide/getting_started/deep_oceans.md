---
navigation:
  title: Os Oceanos Profundos
  icon: nautec:luminescent_algae
  position: 11
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:hydrothermal_vent
---

# <Color id="light_purple">Os Oceanos Profundos</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="luminescent_algae" scale="2"/>
  O NauTec adiciona quatro biomas de oceano, cada um com suas próprias plantas e criaturas.
</Column>

Os quatro biomas são adicionados ao lado dos oceanos vanilla em vez de substituí-los. Eles só geram em chunks ainda não gerados, então num mundo existente você os encontra além da borda do terreno explorado.

Os quatro contam como oceanos. O [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md), as zonas de pesca de sorte, as estruturas do NauTec, as ruínas oceânicas e naufrágios vanilla funcionam neles, assim como a coleta de Água Salgada com balde quando um pacote liga `collectSaltWater` em `config/nautec-common.toml`.

O NauTec também torna os oceanos mais profundos que no vanilla. Com o Tectonic instalado, é o Tectonic quem decide a profundidade do oceano.

| Bioma | Onde | Visibilidade |
|---|---|---|
| Fossa abissal | mais distante da terra, climas frios | cerca de 20 blocos |
| Bosque bioluminescente | oceano profundo, climas temperados | cerca de 130 blocos |
| Fontes hidrotermais | oceano profundo, climas quentes | cerca de 50 blocos |
| Recife de prismarinho | águas rasas costeiras, climas temperados a quentes | cerca de 145 blocos |

***

## <Color id="gold">Fossa abissal</Color>

A mais profunda e escura das quatro, com água quase negra e partículas à deriva.

* Afogados nascem com muito mais frequência que nos outros oceanos, e a Mandíbula Abissal caça no escuro abaixo de y 40.
* Coral Abissal cresce no chão. Saltadores de Silte, bacalhaus, lulas e lulas-brilhantes nadam aqui.
* <ItemLink id="budding_prismarine"/> se forma na rocha de 2 a 10 blocos abaixo do chão.
* O melhor lugar para a [Forja de Pressão Abissal](nautec:deep_engineering/pressure_forge.md), que precisa de profundidade e uma coluna de água acima dela.

***

## <Color id="gold">Bosque bioluminescente</Color>

Água verde-azulada clara com esporos brilhantes à deriva.

* Alga Profunda, Alga Luminescente, erva-marinha e pepinos-do-mar no chão, e Pólipo Luminoso se espalhando sobre a pedra em chãos, paredes e tetos.
* Águas-Vivas-Lanterna, Saltadores de Silte e lulas-brilhantes extras.
* Drusa de Prismarinho se forma na rocha sob o chão, como na Fossa.

### Grutas Luminosas

Cavernas alagadas escavadas sob o chão do bosque, alcançadas por um poço estreito descendo do leito marinho. O Pólipo Luminoso cobre as paredes e a Alga Luminescente e os pepinos-do-mar iluminam o chão, então são claros o bastante para achar pelo poço.

* Cada gruta guarda uma <ItemLink id="budding_prismarine"/> no chão, muitas vezes com Drusas de Prismarinho já crescidas.
* Uma em cada três tem um <ItemLink id="rusty_crate"/> no chão com salvados dentro.
* Elas nunca abrem para cavernas secas, então uma gruta está sempre cheia de água.

***

## <Color id="gold">Fontes hidrotermais</Color>

Água marrom turva sobre um chão remendado de basalto e magma, com bolhas subindo o tempo todo.

* Vermes Tubulares Hidrotermais crescem no chão.
* Rastejantes Hidrotermais caminham pelo chão e largam Chapa de Quitina.
* Magma exposto no chão cria colunas de bolhas, que enchem Frascos de Vidro com ar pressurizado para o [Traje de Mergulho](diving_gear.md).

### Campos de Fontes

Aglomerados de duas a cinco chaminés negras de basalto e pedra-negra erguendo-se do chão, as mais altas com até oito blocos. Cada uma é coroada com uma <ItemLink id="hydrothermal_vent"/> exalando fumaça e bolhas, com magma dentro e embaixo e Vermes Tubulares Hidrotermais apinhados na base.

* As paredes das chaminés são cravejadas de minério de cobre, ferro e ouro.
* Uma Fonte Hidrotermal queima o que pisar nela, como magma. Agache para atravessá-la em segurança.
* Minere-a com uma picareta para levá-la para casa. Uma [Captador Hidrotermal](nautec:getting_started/ocean_generators.md) sobre ela a conta como três fontes de calor — tanto quanto três blocos de magma.

***

## <Color id="gold">Recife de prismarinho</Color>

Água rasa, clara e brilhante.

* Corais, pepinos-do-mar e manchas de prismarinho no chão do mar, com Frondes de Prismarinho crescendo entre eles.
* <ItemLink id="budding_prismarine"/> fica no topo do leito marinho e nas manchas de prismarinho. É o lugar mais fácil de achar uma.
* Peixes tropicais, Saltadores de Silte, lulas e golfinhos.

***

## <Color id="gold">Para Criadores de Modpacks</Color>

`enableBiomeInjection` em `config/nautec-worldgen.toml` desliga os biomas. Pacotes usando um preset de mundo personalizado devem adicioná-lo a `injectableWorldPresets`. Com o Lithostitched instalado, o posicionamento vem dos arquivos de injeção de bioma em `data/nautec/lithostitched/biome_injector`, que também cobrem Terralith e Tectonic.

A tag de bioma `nautec:has_budding_prismarine` lista os biomas que não são do NauTec que ganham a Drusa de Prismarinho ocasional no leito marinho — por padrão, Oceano Quente e Oceano Morno Profundo. Adicione oceanos quentes de outro mod a ela para dar-lhes o mesmo. `nautec:budding_prismarine_grafting` lista onde Litófilas podem ser enxertados a partir dela, e já inclui a primeira tag.

Plantas e criaturas são cobertas em [Vida nas Profundezas](deep_life.md).