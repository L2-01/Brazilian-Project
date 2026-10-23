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
  Com que rapidez uma colônia produz itens num reator, e quanta energia isso exige.
</Column>

Os números aqui valem tanto para o [Biorreator](bio_reactor.md) quanto para o [Biorreator Industrial](industrial_bio_reactor.md). O Biorreator Industrial não é mais rápido por colônia; ele opera mais colônias com mais melhorias.

***

## <Color id="gold">A Fórmula</Color>

A cada tique, uma colônia em trabalho adiciona progresso:

progresso por tique = Taxa de Produção x fator de tamanho x velocidade base x Rendimento de Linhagem x bônus de velocidade

* Taxa de Produção é o atributo da colônia, até 2 ([Atributos das Bactérias](bacteria_stats.md)).
* O fator de tamanho é 0.5 + 0.5 x tamanho / 40.000, então 0.5 para uma colônia minúscula e 1 no teto de tamanho.
* A velocidade base é 16.8 nos dois reatores, configurável para cada.
* Rendimento de Linhagem pertence à linhagem, veja a tabela abaixo.
* O bônus de velocidade é 1, mais 0.5 para cada [Melhoria de Velocidade do Reator](reactor_upgrades.md).

A cada 100 de progresso completa-se um ciclo, que coloca 1 item no espaço de saída da colônia, mais 1 para cada Melhoria de Produção do Reator. O progresso excedente passa para o próximo ciclo. Um minuto tem 1.200 tiques, então:

itens por minuto = progresso por tique x 12 x itens por ciclo

***

## <Color id="gold">Rendimento de Linhagem</Color>

| Rendimento de Linhagem | Linhagens do NauTec | Materiais de outros mods |
|---|---|---|
| 1 | Litófilos (pedra), Silicófilos (areia), Calciófilos (farinha de osso), Criobiontes (gelo), Bactérias Carnívoras (carne podre), e toda linhagem de madeira, planta, cultivo, fungo e cogumelo | lingotes de alumínio, bauxita, latão, bronze, grafite, chumbo, ferro-gusa, aço, estanho e zinco; apatita |
| 0.8 | Carbófagos (carvão), Metalófilos (lingotes de cobre), Sulfurófilos (pólvora) | lingotes de prata, níquel, antimônio, bismuto, boro, constantan, elétrum, invar, ouro rosé, aço inoxidável e bronze de ametista; âmbar, fluorita, jade, peridoto, rubi, safira e topázio |
| 0.6 | Ferrófilos (lingotes de ferro) | lingotes de ósmio, urânio, cobalto, titânio, tungstênio, cromo, manganês, molibdênio, neodímio, nióbio, tório, vanádio, berílio, monazita, cianita, desh, hepatizon, iesnium, knightslime, slimesteel, lumium, signalum, manasteel, glowstone refinada e obsidiana refinada; quartzo certus, quartzo negro, cinábrio, gema negra, pedra da lua e pedra do sol |
| 0.5 | Acidófilos (redstone), Azuritófilos (lápis-lazúli) | |
| 0.4 | Aurrófilos (lingotes de ouro) | lingotes de platina, irídio, paládio, enderium, elementium, manyullyn, queen's slime, blutônio, calorita, dracônio e ostrum |
| 0.12 | Adamantófilos (diamantes) | lingotes de netherita, allthemodium, vibrânio, unobtânio, neutrônio, plutônio e terrasteel |
| 0.1 | Esmeraldófilos (esmeraldas) | |

Linhagens para materiais de outros mods só existem quando um mod que usa aquele material está no pack. Quando vários mods adicionam o mesmo material, o reator produz o item do primeiro mod listado em `preferredTagNamespaces` em `config/nautec-common.toml` (padrão: `minecraft`), e, caso contrário, o primeiro id de item em ordem alfabética. Cianobactérias, Halobactérias, Metanógenos e Termófilos não produzem nada, então seu Rendimento de Linhagem não importa.

A categoria Biorreator do JEI e a dica de uma placa analisada mostram o Rendimento de Linhagem de uma linhagem. Packs podem defini-lo com o campo opcional `production_multiplier` no json da linhagem, cujo padrão é 1.

***

## <Color id="gold">Exemplos Práticos</Color>

Uma colônia nos tetos de atributos (Taxa de Produção 2, tamanho 40.000) sem melhorias:

| Rendimento de Linhagem | Progresso por tique | Tempo por item | Itens por minuto |
|---|---|---|---|
| 1 (pedra) | 33.6 | 0.15 seconds | about 403 |
| 0.8 (carvão, cobre) | 26.9 | 0.19 seconds | about 323 |
| 0.6 (ferro) | 20.2 | 0.25 seconds | about 242 |
| 0.5 (redstone, lápis) | 16.8 | 0.3 seconds | about 202 |
| 0.4 (ouro) | 13.4 | 0.37 seconds | about 161 |
| 0.12 (diamante) | 4.03 | 1.2 seconds | about 48 |
| 0.1 (esmeralda) | 3.36 | 1.5 seconds | about 40 |

Uma colônia nova é bem mais lenta. Ferrófilos com Taxa de Produção 0.4 em tamanho 400 produz 0.4 x 0.505 x 16.8 x 0.6 = 2.04 de progresso por tique: um lingote de ferro a cada 2.5 segundos, cerca de 24 por minuto.

Melhorias multiplicam isso. A colônia de diamante no teto faz cerca de 97 diamantes por minuto com duas Melhorias de Velocidade do Reator, ou cerca de 145 com duas Melhorias de Produção do Reator, já que cada ciclo então dá 3.

Uma colônia de pedra no teto enche seu espaço de saída de 64 itens em uns dez segundos, e um espaço cheio pausa aquela colônia, então mantenha a produção escoando.

***

## <Color id="gold">Energia Necessária</Color>

A potência é um limiar. O reator precisa dessa quantia de AP chegando a cada tique ou nada funciona e todo progresso zera. Um feixe mais forte que isso acelera a produção, veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md).

AP necessários = (base + por colônia x espaços de colônia preenchidos) x multiplicadores de melhorias, arredondado para cima

| Reator | Base | Por colônia | Cheio, sem melhorias |
|---|---|---|---|
| Biorreator | 5 | 15 | 50 AP com 3 colônias |
| Biorreator Industrial | 100 | 50 | 550 AP com 9 colônias |

Todos os quatro valores são configuráveis. Espaços de colônia vazios não contam. [Melhorias do Reator](reactor_upgrades.md) lista os multiplicadores e o custo dos conjuntos comuns de melhorias.
