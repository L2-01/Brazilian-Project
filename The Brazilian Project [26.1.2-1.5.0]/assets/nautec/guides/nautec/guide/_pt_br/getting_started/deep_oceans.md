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
  O NauTec adiciona quatro biomas oceânicos, cada um com suas próprias plantas e criaturas.
</Column>

Os quatro biomas são adicionados junto aos oceanos vanilla em vez de substituí-los. Eles só geram em chunks ainda não gerados, então num mundo existente você os encontra além da borda do terreno explorado.

Todos os quatro contam como oceanos. O [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md), zonas de pesca com sorte, estruturas do NauTec, ruínas oceânicas vanilla e naufrágios funcionam neles, assim como a coleta de Água Salgada com balde quando um pack liga `collectSaltWater` em `config/nautec-common.toml`.

O NauTec também torna os oceanos mais profundos que no vanilla. Com o Tectonic instalado, o Tectonic decide a profundidade do oceano em vez disso.

| Bioma | Onde | Visibilidade |
|---|---|---|
| Fossa abissal | mais distante da terra, climas frios | cerca de 20 blocos |
| Bosque bioluminescente | oceano profundo, climas temperados | cerca de 130 blocos |
| Fontes hidrotermais | oceano profundo, climas quentes | cerca de 50 blocos |
| Recife de prismarinho | águas rasas junto à costa, climas temperados a quentes | cerca de 145 blocos |

***

## <Color id="gold">Fossa abissal</Color>

A mais profunda e escura das quatro, com água quase negra e partículas à deriva.

* Afogados surgem com muito mais frequência que noutros oceanos, e a Mandíbula Abissal caça no escuro abaixo de y 40.
* Coral Abissal cresce no fundo. Saltadores de Silte, bacalhau, lulas e lulas-brilhantes nadam aqui.
* A <ItemLink id="budding_prismarine"/> se forma no topo do fundo do mar. Procure seu brilho fraco.
* O melhor lugar para a [Forja de Pressão Abissal](nautec:deep_engineering/pressure_forge.md), que precisa de profundidade e uma coluna de água acima.

***

## <Color id="gold">Bosque bioluminescente</Color>

Água verde-azulada e limpa com esporos brilhantes à deriva.

* Alga Profunda, Alga Luminescente, ervas marinhas e pepinos-do-mar no fundo, e Pólipo Luminoso se espalhando pela pedra em pisos, paredes e tetos.
* Águas-Vivas-Lanterna, Saltadores de Silte e lulas-brilhantes extras.
* A Drusa de Prismarinho se forma no topo do fundo do mar, como na Fossa.

### Grutas Luminosas

Cavernas inundadas escavadas sob o fundo do bosque, alcançadas por um poço estreito que desce do leito marinho. Pólipo Luminoso cobre as paredes e Alga Luminescente e pepinos-do-mar iluminam o piso, então são claros o bastante para achar pelo poço.

* Cada gruta guarda uma <ItemLink id="budding_prismarine"/> no piso, muitas vezes com Agregados de Prismarinho já crescidos.
* Cerca de uma em três tem um <ItemLink id="rusty_crate"/> no chão com sucata dentro.
* Elas nunca abrem para cavernas secas, então uma gruta está sempre cheia d'água.

***

## <Color id="gold">Fontes hidrotermais</Color>

Água turva e marrom sobre um fundo manchado de basalto e magma, com bolhas subindo o tempo todo.

* Vermes Tubulares Hidrotermais crescem no fundo.
* Rastejantes Hidrotermais caminham pelo fundo e dropam Chapa de Quitina.
* Magma exposto no fundo cria colunas de bolhas, que enchem Frascos de Vidro com ar pressurizado para o [Traje de Mergulho](diving_gear.md).

### Campos de Fontes

Agrupamentos de duas a cinco chaminés negras de basalto e negrito que sobem do fundo, as mais altas com até oito blocos. Cada uma é coroada com uma <ItemLink id="hydrothermal_vent"/> derramando fumaça e bolhas, com magma dentro e embaixo, e Vermes Tubulares Hidrotermais aglomerados na base.

* As paredes das chaminés são cravejadas de minérios de cobre, ferro e ouro.
* Uma Fonte Hidrotermal queima quem pisar nela, como magma. Agache para atravessá-la em segurança.
* Minere-a com uma picareta para levá-la para casa. Um [Captador Hidrotermal](nautec:getting_started/ocean_generators.md) posicionado sobre ela a conta como três fontes de calor, tanto quanto três blocos de magma.

***

## <Color id="gold">Recife de prismarinho</Color>

Águas rasas claras e brilhantes.

* Coral, pepinos-do-mar e manchas de prismarinho no fundo do mar, com Frondes de Prismarinho crescendo entre eles.
* <ItemLink id="budding_prismarine"/> fica no topo do fundo do mar e nas manchas de prismarinho. É o lugar mais fácil de encontrá-la.
* Peixes tropicais, Saltadores de Silte, lulas e golfinhos.

***

## <Color id="gold">Para Criadores de Packs</Color>

`enableBiomeInjection` em `config/nautec-worldgen.toml` desliga os biomas. Packs usando um preset de Superfície personalizado devem adicioná-lo a `injectableWorldPresets`. Com o Lithostitched instalado, o posicionamento vem dos arquivos do injetor de biomas em `data/nautec/lithostitched/biome_injector`, que também cobre Terralith e Tectonic.

A tag de bioma `nautec:has_budding_prismarine` lista os biomas que não são do NauTec que recebem a Drusa de Prismarinho ocasional em seu fundo marinho — Oceano Quente e Oceano Morno Profundo por padrão. Adicione oceanos quentes de outro mod a ela para dar a eles o mesmo. `nautec:budding_prismarine_grafting` lista onde Litófilos podem ser enxertados a partir dela, e já inclui a primeira tag.

Plantas e criaturas são cobertas em [Vida nas Profundezas](deep_life.md).
