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
  A velocidade com que uma colônia produz itens num reator, e quanta energia isso exige.
</Column>

Os números aqui valem tanto para o [Biorreator](bio_reactor.md) quanto para o [Biorreator Industrial](industrial_bio_reactor.md). O Biorreator Industrial não é mais rápido por colônia; ele roda mais colônias com mais melhorias.

***

## <Color id="gold">A Fórmula</Color>

A cada tique, uma colônia trabalhando adiciona progresso:

progresso por tique = Taxa de Produção x fator de tamanho x velocidade base x Rendimento de Linhagem x bônus de velocidade

* Taxa de Produção é o stat da colônia, até 2 ([Stats de Bactérias](bacteria_stats.md)).
* O fator de tamanho é 0.5 + 0.5 x tamanho / 40.000, então 0.5 para uma colônia mínima e 1 no limite.
* A velocidade base é 16.8 nos dois reatores, configurável para cada.
* Rendimento de Linhagem pertence à linhagem, veja a tabela abaixo.
* O bônus de velocidade é 1, mais 0.5 para cada [Melhoria de Velocidade do Reator](reactor_upgrades.md).

Cada 100 de progresso completa um ciclo, que coloca 1 item no slot de saída da colônia, mais 1 para cada Melhoria de Produção do Reator. Progresso restante carrega para o próximo ciclo. Um minuto tem 1.200 tiques, então:

itens por minuto = progresso por tique x 12 x itens por ciclo

***

## <Color id="gold">Rendimento de Linhagem</Color>

| Rendimento de Linhagem | Linhagens do NauTec | Materiais de outros mods |
|---|---|---|
| 1 | Litófilas (pedra), Silicófilas (areia), Calciófilas (farinha de osso), Criobiontes (gelo), Bactérias Carnívoras (carne podre), e toda linhagem de madeira, planta, plantação, fungo e cogumelo | barras de alumínio, bauxita, latão, bronze, grafite, chumbo, ferro-gusa, aço e estanho; apatita |
| 0.8 | Carbófagas (carvão), Metalófilas (barras de cobre), Sulfurófilas (pólvora) | barras de prata, níquel, antimônio, bismuto, boro, constantan, electrum, invar, ouro rosa, aço inoxidável e bronze de ametista; âmbar, fluorita, jade, peridoto, rubi, safira e topázio |
| 0.6 | Ferrófilas (lingotes de ferro) | barras de ósmio, urânio, cobalto, titânio, tungstênio, cromo, manganês, molibdênio, neodímio, nióbio, tório, vanádio, berílio, monazita, cianita, desh, hepatizon, iesnium, slime de cavaleiro, slimesteel, lumium, signalum, manasteel, pedra-luminosa refinada e obsidiana refinada; quartzo certus, quartzo negro, cinábrio, gema escura, pedra-da-lua e pedra-do-sol |
| 0.5 | Acidófilas (redstone), Azuritófilas (lápis-lazúli) | |
| 0.4 | Aurófilas (barras de ouro) | barras de platina, irídio, paládio, enderium, elementium, manyullyn, slime da rainha, blutônio, calorita, dracônio e ostrum |
| 0.12 | Adamantófilas (diamantes) | barras de netherita, allthemodium, vibranium, unobtainium, neutrônio, plutônio e terrasteel |
| 0.1 | Esmaragdófilas (esmeraldas) | |

Linhagens para materiais de outros mods só existem quando um mod que usa aquele material está no pacote. Quando vários mods adicionam o mesmo material, o reator faz o item do primeiro mod listado em `preferredTagNamespaces` em `config/nautec-common.toml` (padrão: `minecraft`), e senão o primeiro id de item em ordem alfabética. Cianobactérias, Halobactérias, Metanogênicas e Termófilas não produzem nada, então seu Rendimento de Linhagem não importa.

A categoria Biorreator do JEI e o tooltip de uma placa analisada mostram o Rendimento de Linhagem de uma linhagem. Pacotes podem defini-lo com o campo opcional `production_multiplier` no json de uma linhagem, que tem padrão 1.

***

## <Color id="gold">Exemplos Resolvidos</Color>

Uma colônia nos tetos dos stats (Taxa de Produção 2, tamanho 40.000) sem melhorias:

| Rendimento de Linhagem | Progresso por tique | Tempo por item | Itens por minuto |
|---|---|---|---|
| 1 (pedra) | 33.6 | 0.15 segundos | cerca de 403 |
| 0.8 (carvão, cobre) | 26.9 | 0.19 segundos | cerca de 323 |
| 0.6 (ferro) | 20.2 | 0.25 segundos | cerca de 242 |
| 0.5 (redstone, lápis) | 16.8 | 0.3 segundos | cerca de 202 |
| 0.4 (ouro) | 13.4 | 0.37 segundos | cerca de 161 |
| 0.12 (diamante) | 4.03 | 1.2 segundos | cerca de 48 |
| 0.1 (esmeralda) | 3.36 | 1.5 segundos | cerca de 40 |

Uma colônia fresca é bem mais lenta. Ferrófilas com Taxa de Produção 0.4 e tamanho 400 faz 0.4 x 0.505 x 16.8 x 0.6 = 2.04 de progresso por tique: uma lingote de ferro a cada 2.5 segundos, cerca de 24 por minuto.

Melhorias multiplicam isso. A colônia de diamante no teto faz cerca de 97 diamantes por minuto com duas Melhorias de Velocidade do Reator, ou cerca de 145 com duas Melhorias de Produção do Reator, já que cada ciclo então dá 3.

Uma colônia de pedra no teto enche seu slot de saída de 64 itens em cerca de dez segundos, e um slot cheio pausa aquela colônia, então mantenha a saída fluindo.

***

## <Color id="gold">Energia Necessária</Color>

Energia é um limiar. O reator precisa dessa quantidade de AP chegando a cada tique ou nada roda e todo progresso zera. Um feixe mais forte que isso acelera a produção, veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md).

AP necessário = (base + por colônia x slots de colônia ocupados) x multiplicadores de melhoria, arredondado para cima

| Reator | Base | Por colônia | Cheio, sem melhorias |
|---|---|---|---|
| Biorreator | 5 | 15 | 50 AP com 3 colônias |
| Biorreator Industrial | 100 | 50 | 550 AP com 9 colônias |

Os quatro valores são configuráveis. Slots de colônia vazios não contam. [Melhorias de Reator](reactor_upgrades.md) lista os multiplicadores e o custo de conjuntos comuns de melhorias.