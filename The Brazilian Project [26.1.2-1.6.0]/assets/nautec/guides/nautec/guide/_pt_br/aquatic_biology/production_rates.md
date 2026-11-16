---
navigation:
  title: Taxas de Produção
  icon: minecraft:clock
  position: 10
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Taxas de Produção</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="minecraft:clock" scale="2"/>
  Quão rápido uma colônia produz itens em um reator, e quanta energia isso exige.
</Column>

Os números aqui valem tanto para o [Biorreator](bio_reactor.md) quanto para o [Biorreator Industrial](industrial_bio_reactor.md). O Biorreator Industrial não é mais rápido por colônia; ele executa mais colônias com mais melhorias.

***

## <Color id="gold">A Fórmula</Color>

A cada tique, uma colônia em funcionamento soma progresso:

progresso por tique = Taxa de Produção x fator de tamanho x velocidade base x Rendimento da Linhagem x bônus de velocidade

* A Taxa de Produção é o atributo da colônia, até 2 ([Atributos de Bactérias](bacteria_stats.md)).
* O fator de tamanho é 0,5 + 0,5 x tamanho / 40.000, então 0,5 para uma colônia pequena e 1 no tamanho máximo.
* A velocidade base é 16,8 nos dois reatores, configurável em cada um.
* O Rendimento da Linhagem pertence à cepa; veja a tabela abaixo.
* O bônus de velocidade é 1, mais 0,5 para cada [Melhoria de Velocidade do Reator](reactor_upgrades.md).

Cada 100 de progresso completa um ciclo, que coloca 1 item no espaço de saída da colônia, mais 1 para cada Melhoria de Produção do Reator. O progresso restante segue para o próximo ciclo. Um minuto tem 1.200 tiques, então:

itens por minuto = progresso por tique x 12 x itens por ciclo

***

## <Color id="gold">Rendimento da Linhagem</Color>

Toda cepa pode ser criada até o mesmo máximo de Taxa de Produção, 2,0 por padrão. O Rendimento da Linhagem multiplica esse atributo depois; ele não reduz o máximo. Siga os [passos de melhoria de atributos do Mutador](mutator.md#stat-breeding) para melhorar uma colônia sem arriscar seu melhor molde.

| Rendimento da Linhagem | Cepas do NauTec | Materiais de outros mods |
|---|---|---|
| 1 | Litófilas (pedra), Silicófilas (areia), Calciófilas (farinha de osso), Criobiontes (gelo), Bactérias Carnívoras (carne podre) e toda cepa de madeira, planta, plantação, fungo e cogumelo | aluminum, bauxite, brass, bronze, graphite, lead, pig iron, steel, tin and zinc ingots; apatite |
| 0,8 | Carbófagas (carvão), Metalófilas (lingotes de cobre), Sulfurófilas (pólvora) | silver, nickel, antimony, bismuth, boron, constantan, electrum, invar, rose gold, stainless steel and amethyst bronze ingots; amber, fluorite, jade, peridot, ruby, sapphire and topaz |
| 0,6 | Ferrófilas (lingotes de ferro) | osmium, uranium, cobalt, titanium, tungsten, chromium, manganese, molybdenum, neodymium, niobium, thorium, vanadium, beryllium, monazite, cyanite, desh, hepatizon, iesnium, knightslime, slimesteel, lumium, signalum, manasteel, refined glowstone and refined obsidian ingots; certus quartz, black quartz, cinnabar, dark gem, moonstone and sunstone |
| 0,5 | Acidófilas (redstone), Azuritófilas (lápis-lazúli) | |
| 0,4 | Aurófilas (lingotes de ouro) | platinum, iridium, palladium, enderium, elementium, manyullyn, queen's slime, blutonium, calorite, draconium and ostrum ingots |
| 0,12 | Adamantófilas (diamantes) | netherite, allthemodium, vibranium, unobtainium, neutronium, plutonium and terrasteel ingots |
| 0,1 | Esmaragdófilas (esmeraldas) | |

Cepas para materiais de outros mods só existem quando um mod que usa aquele material está no pack. Quando vários mods adicionam o mesmo material, o reator faz o item do primeiro mod listado em `preferredTagNamespaces` em `config/nautec-common.toml` (padrão: `minecraft`), e senão o primeiro id de item em ordem alfabética. Cianobactérias, Halobactérias, Metanogênicas e Termófilas não produzem nada, então o Rendimento da Linhagem delas não importa.

A categoria de Biorreator do JEI e a dica de uma placa analisada mostram o Rendimento da Linhagem de uma cepa. Packs podem defini-lo com o campo opcional `production_multiplier` no json de uma cepa, que tem padrão 1.

***

## <Color id="gold">Exemplos Práticos</Color>

Uma colônia nos máximos de atributos (Taxa de Produção 2, tamanho 40.000) sem melhorias:

| Rendimento da Linhagem | Progresso por tique | Tempo por item | Itens por minuto |
|---|---|---|---|
| 1 (pedra) | 33,6 | 0,15 segundos | cerca de 403 |
| 0,8 (carvão, cobre) | 26,9 | 0,19 segundos | cerca de 323 |
| 0,6 (ferro) | 20,2 | 0,25 segundos | cerca de 242 |
| 0,5 (redstone, lápis-lazúli) | 16,8 | 0,3 segundos | cerca de 202 |
| 0,4 (ouro) | 13,4 | 0,37 segundos | cerca de 161 |
| 0,12 (diamante) | 4,03 | 1,2 segundos | cerca de 48 |
| 0,1 (esmeralda) | 3,36 | 1,5 segundos | cerca de 40 |

Uma colônia nova é bem mais lenta. Ferrófilas com Taxa de Produção 0,4 no tamanho 400 fazem 0,4 x 0,505 x 16,8 x 0,6 = 2,04 de progresso por tique: um lingote de ferro a cada 2,5 segundos, cerca de 24 por minuto.

Melhorias multiplicam isso. A colônia de diamante no máximo faz cerca de 97 diamantes por minuto com duas Melhorias de Velocidade do Reator, ou cerca de 145 com duas Melhorias de Produção do Reator, já que cada ciclo então dá 3.

Uma colônia de pedra no máximo enche seu espaço de saída de 64 itens em cerca de dez segundos, e um espaço cheio pausa aquela colônia, então mantenha a saída fluindo.

***

## <Color id="gold">Energia Exigida</Color>

A energia é um limiar. O reator precisa que essa quantidade de AP chegue a cada tique, senão nada funciona e todo o progresso zera. Um feixe mais forte que isso acelera a produção; veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md).

AP exigido = (base + por colônia x espaços de colônia preenchidos) x multiplicadores de melhoria, arredondado para cima

| Reator | Base | Por colônia | Cheio, sem melhorias |
|---|---|---|---|
| Biorreator | 5 | 15 | 50 AP com 3 colônias |
| Biorreator Industrial | 100 | 50 | 550 AP com 9 colônias |

Todos os quatro valores são configuráveis. Espaços de colônia vazios não contam. [Melhorias do Reator](reactor_upgrades.md) lista os multiplicadores e o custo dos conjuntos comuns de melhorias.
