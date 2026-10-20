---
navigation:
  title: Feixes Mais Fortes
  icon: nautec:focusing_lens
  position: 2
  parent: getting_started/getting_started-index.md
---

# <Color id="light_purple">Feixes Mais Fortes</Color>

Toda máquina do NauTec que precisa de um feixe de laser tem um mínimo: o AP por tique que ela deve receber antes de funcionar. Um feixe mais forte que esse mínimo nunca é desperdiçado. A maioria das máquinas roda mais rápido com ele, e o Dreno do Mar Profundo bombeia mais.

***

## <Color id="gold">A Regra</Color>

**Velocidade = a raiz quadrada de (feixe ÷ o que a máquina precisa).**

Quatro vezes a potência roda uma máquina duas vezes mais rápido. Nove vezes a roda três vezes mais rápido. Não há limite superior, mas cada passo extra custa mais potência que o anterior.

| Feixe, como múltiplo do que a máquina precisa | Velocidade |
|---|---|
| menos de 1× | não funciona |
| 1× | ×1 (normal) |
| 2× | ×1.41 |
| 4× | ×2 |
| 9× | ×3 |
| 16× | ×4 |
| 25× | ×5 |
| 100× | ×10 |

Uma máquina num feixe de 40 AP que precisa de 10 AP roda a ×2. A mesma máquina com 90 AP roda a ×3.

Pureza não acelera nada. Uma máquina que precisa de pureza mínima (o Analisador Bacteriano Avançado, o Replicador de Colônias e a Estação de Enxertia) ainda para abaixo dela, por mais potência que chegue.

***

## <Color id="gold">Quais Máquinas</Color>

| Máquina | Precisa (padrão) | O que um feixe mais forte acelera |
|---|---|---|
| [Misturador](nautec:laser_chemistry/mixer.md) | 10 AP | toda receita |
| [Mutador](nautec:aquatic_biology/mutator.md) | 10 AP | tentativas de mutação, ou seja mais tentativas por minuto |
| [Incubadora](nautec:aquatic_biology/incubator.md) | 20 AP | ciclos de crescimento, e o nutriente que cada ciclo consome |
| [Analisador Bacteriano](nautec:aquatic_biology/bacterial_analyzer.md) | 5 AP | análise |
| [Analisador Bacteriano Avançado](nautec:aquatic_biology/bacterial_analyzer.md) | 40 AP com pureza 2.1 | análise das nove placas |
| [Forja de Pressão](nautec:deep_engineering/pressure_forge.md) | 40 AP | forjamento |
| [Replicador de Colônias](nautec:aquatic_biology/colony_replicator.md) | 80 AP com pureza 2.0 | cada cópia |
| [Estação de Enxertia](nautec:aquatic_biology/bacteria_grafting.md) | 100 AP com pureza 2.8, 500 AP com uma Âncora de Enxertia Avançada | cada enxerto |
| [Biorreator](nautec:aquatic_biology/bio_reactor.md) | 5 AP, mais 15 por colônia, vezes suas melhorias | produção |
| [Biorreator Industrial](nautec:aquatic_biology/industrial_bio_reactor.md) | 100 AP, mais 50 por colônia, vezes suas melhorias | produção |
| [Estação de Aprimoramento Corporal](nautec:laser_augmentation/augmentation_station.md) | 25 AP em cada extensão em uso | instalar um aprimoramento, no ritmo da extensão mais fraca |
| [Base de Acoplamento do Explorador Marinho](nautec:submarine/submarine_dock.md) | 20 AP | a velocidade com que carrega um submarino atracado |
| [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) | mais de 20 AP | Água Salgada bombeada por segundo, em proporção direta ao feixe |

**Acúmulo.** Os Biorreatores calculam o que precisam a partir de suas colônias e melhorias primeiro, e um feixe mais forte então acelera por cima de suas Melhorias de Velocidade. Um reator cujas melhorias o fazem rodar a ×1.5 e que recebe quatro vezes a potência necessária roda a ×3. Um feixe mais forte não faz uma colônia consumir seu nutriente mais rápido, então é produção extra pura. A Âncora de Enxertia Avançada funciona da mesma forma: ela eleva a necessidade da estação para 500 AP e enxerta mais rápido, e um feixe acima de 500 AP a acelera de novo.

**Sem aceleração.** A [Fundição de Purificação a Laser](nautec:deep_engineering/laser_purification_smelter.md) roda na velocidade da sua melhoria de conduíte, por mais forte que seja o feixe. Um feixe mais puro reduz o AP de que ela precisa em vez disso.

**Já escala.** A [Câmara de Ressonância](nautec:deep_engineering/resonance_chamber.md) carrega por quanta potência receber, e um [Berço de Cristal](nautec:deep_engineering/crystal_cultivation.md) cresce pela potência total que absorveu, então ambos já vão mais rápido num feixe mais forte, em proporção direta.

***

## <Color id="gold">Vendo Isso</Color>

O Jade mostra a velocidade em qualquer uma dessas máquinas, com o feixe que ela está recebendo e o que precisa, por exemplo "Velocidade x2.00 num feixe de 40 AP (precisa de 10)". Um feixe fraco demais aparece em vermelho. Um <ItemLink id="prism_monocle"/> mostra a potência e a pureza chegando a qualquer bloco de laser.

Para conseguir um feixe mais forte, funda várias fontes com uma [Junção de Laser](nautec:laser_chemistry/laser_manipulation.md), ou alimente uma máquina a partir de um gerador mais forte como um [Conversor de Energia](nautec:laser_chemistry/energy_converter.md).

***

## <Color id="gold">Para Criadores de Modpacks</Color>

`beamOverclock` em `config/nautec-common.toml` desliga a aceleração, fazendo toda máquina rodar na velocidade normal acima do seu mínimo. `beamOverclockMaxSpeed` limita o multiplicador de velocidade; 0 significa sem limite. O bombeamento do Dreno do Mar Profundo tem suas próprias configurações, descritas na sua página.