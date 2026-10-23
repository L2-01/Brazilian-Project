---
navigation:
  title: Incubadora
  icon: nautec:incubator
  position: 7
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:incubator
---

# <Color id="light_purple">Incubadora</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="incubator" scale="2"/>
  A Incubadora cultiva uma colônia e restaura sua Vitalidade.
</Column>

Coloque a colônia no espaço de bactérias e seu nutriente no espaço de item. Cada linhagem tem seu próprio nutriente, listado na categoria Incubação de Bactérias do JEI junto de sua faixa de crescimento e chance de consumo. Passe o mouse sobre o espaço de nutriente vazio com uma colônia carregada para ver no que ela cresce, e sobre a seta de progresso para ver do que a Incubadora está esperando. A Incubadora só começa quando o nutriente corresponde à linhagem. O espaço de item comporta um nutriente por vez.

Toda linhagem que tem nutriente também aceita o item que produz e o bloco de armazenamento daquele item. Ferrófilos, por exemplo, aceitam minério de ferro, Lingotes de Ferro ou Blocos de Ferro. O item que ela produz tem uma vez e meia a chance de consumo do nutriente próprio da linhagem, e um bloco de armazenamento um nono disso, então um bloco dura tanto quanto nove do item. Veja [Alimentação de Colônias](colony_feeding.md) para como o bloco é encontrado.

Cianobactérias, Halobactérias, Metanógenos e Termófilos não têm nutriente. [Mute](mutator.md) eles primeiro.

***

## <Color id="gold">Cada Ciclo</Color>

Um ciclo leva 5 segundos. No fim dele:

* A colônia cresce num sorteio da faixa de crescimento da receita mais 3% do seu tamanho atual, tudo multiplicado pela sua Taxa de Crescimento. Uma colônia maior cresce mais rápido.
* O nutriente tem a chance de consumo da receita de ser gasto. O crescimento acontece de qualquer jeito.
* A idade da colônia zera, então sua Vitalidade volta a 100%.

Litófilos sobre pedra, por exemplo, sorteia 8 a 25 por ciclo com 5% de chance de consumo. Uma colônia de 400 com Taxa de Crescimento 1 ganha cerca de 28 no primeiro ciclo, e uma de 10.000 ganha cerca de 316. Crescer de 400 até o teto de tamanho leva cerca de 150 ciclos, uns 13 minutos num feixe de 20 AP, e come cerca de uma pedra a cada 20 ciclos. Com Taxa de Crescimento 2 leva cerca de metade.

O crescimento para exatamente no teto de tamanho de 40.000 (configurável). Uma colônia no teto ainda funciona: cada ciclo deixa seu tamanho no teto e zera sua idade.

***

## <Color id="gold">Energia</Color>

Ela precisa de um feixe de pelo menos 20 AP entrando por sua face superior ou inferior, e feixes nas duas faces se somam. Um <ItemLink id="aquatic_catalyst"/> queimando <ItemLink id="prismarine_crystal_shard"/>s dá exatamente 20 AP. Com Fragmentos de Prismarinho dá 12, então coloque um acima e outro abaixo, ou combine feixes numa <ItemLink id="laser_junction"/> antes. O tempo do ciclo (100 tiques) e a potência são configuráveis.

***

## <Color id="gold">Incubadora ou Reator</Color>

Você não precisa trazer uma colônia em trabalho de volta aqui. Um [Biorreator](bio_reactor.md) impede suas colônias de envelhecer alimentando-as de seus espaços de nutrientes, e por padrão cada linhagem come lá o mesmo nutriente que come na Incubadora. [Alimentação de Colônias](colony_feeding.md) cobre isso.

A Incubadora continua sendo o lugar para cultivar uma colônia, e a única forma de zerar sua idade. Uma colônia que virou Senescente antes de você começar a alimentá-la continua Senescente num reator, e um ciclo completo aqui devolve sua Vitalidade a 100%.

Funis e tubos podem inserir o nutriente, então um baú alimentando a Incubadora mantém um longo cultivo rodando. Toda face permite por padrão; a [Configuração de Lados](nautec:getting_started/utilities.md) muda isso.

Os dois espaços no canto inferior esquerdo são a Porta de Placas: uma placa entra pela esquerda e placas com colônia saem pela direita. Uma Placa de Petri com colônia carrega sua colônia, desde que o espaço de bactérias esteja vazio ou tenha a mesma linhagem com exatamente os mesmos atributos e espaço de sobra, e que a linhagem seja uma que a Incubadora possa cultivar. Uma colônia já no teto de tamanho só entra se tiver envelhecido, já que uma nova não tem mais o que ganhar. A placa esvaziada fica na porta, e quando a colônia alcança o teto de tamanho ela a retira e a move para o espaço de saída, o que libera a porta para a próxima. A porta só aceita uma placa que possa usar na hora, então um tubo ou funil segura qualquer outra coisa em vez de travar a máquina.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:incubator"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Incubadora precisa de 20 AP. Um feixe mais forte faz seus ciclos de crescimento mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 20).

| Feixe | Velocidade |
|---|---|
| 20 AP | ×1 (normal) |
| 80 AP | ×2 |
| 180 AP | ×3 |
| 320 AP | ×4 |

Cada ciclo ainda tem sua própria chance de consumir um nutriente, então uma Incubadora mais rápida cultiva a colônia e gasta nutriente na mesma taxa elevada. O ciclo de 5 segundos é num feixe de 20 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
