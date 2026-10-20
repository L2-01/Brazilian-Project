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

Coloque a colônia no slot de bactéria e seu nutriente no slot de item. Cada linhagem tem seu próprio nutriente, listado na categoria Incubação de Bactérias do JEI junto de sua faixa de crescimento e chance de consumo. Paire sobre o slot de nutriente vazio com uma colônia carregada para ver em que ela cresce, e paire sobre a seta de progresso para ver o que a Incubadora está esperando. A Incubadora só começa quando o nutriente corresponde à linhagem. O slot de item comporta um nutriente por vez.

Toda linhagem que tem um nutriente também aceita o item que produz e o bloco de armazenamento daquele item. Ferrófilas, por exemplo, aceitam minério de ferro, Lingotes de Ferro ou Blocos de Ferro. O item que ela produz tem uma vez e meia a chance de consumo do nutriente próprio da linhagem, e um bloco de armazenamento um nono disso, então um bloco dura tanto quanto nove do item. Veja [Alimentação de Colônias](colony_feeding.md) para como o bloco é encontrado.

Cianobactérias, Halobactérias, Metanogênicas e Termófilas não têm nutriente. [Mute](mutator.md) eles primeiro.

***

## <Color id="gold">Cada Ciclo</Color>

Um ciclo leva 5 segundos. Ao fim dele:

* A colônia cresce por uma rolagem da faixa de crescimento da receita mais 3% do seu tamanho atual, tudo multiplicado pela sua Taxa de Crescimento. Uma colônia maior cresce mais rápido.
* O nutriente tem a chance de consumo da receita de ser gasto. O crescimento acontece de qualquer forma.
* A idade da colônia zera, então sua Vitalidade volta a 100%.

Litófilas em pedra, por exemplo, rolam de 8 a 25 por ciclo com 5% de chance de consumo. Uma colônia de 400 com Taxa de Crescimento 1 ganha cerca de 28 no primeiro ciclo, e uma de 10.000 ganha cerca de 316. Crescer de 400 ao limite de tamanho leva por volta de 150 ciclos, uns 13 minutos num feixe de 20 AP, e come cerca de uma pedra a cada 20 ciclos. Com Taxa de Crescimento 2 leva cerca de metade disso.

O crescimento para exatamente no limite de tamanho de 40.000 (configurável). Uma colônia no limite ainda roda: cada ciclo deixa seu tamanho no teto e zera sua idade.

***

## <Color id="gold">Energia</Color>

Ela precisa de um feixe de pelo menos 20 AP entrando pela face de cima ou de baixo, e feixes nas duas faces somam. Um <ItemLink id="aquatic_catalyst"/> queimando <ItemLink id="prismarine_crystal_shard"/> dá exatamente 20 AP. Com Fragmentos de Prismarinho dá 12, então rode um acima e um abaixo, ou combine feixes numa <ItemLink id="laser_junction"/> antes. O tempo de ciclo (100 tiques) e a energia são configuráveis.

***

## <Color id="gold">Incubadora ou Reator</Color>

Você não precisa carregar uma colônia trabalhando de volta para cá. Um [Biorreator](bio_reactor.md) impede suas colônias de envelhecer alimentando-as dos seus slots de nutriente, e por padrão cada linhagem come o mesmo nutriente lá que na Incubadora. [Alimentação de Colônias](colony_feeding.md) cobre isso.

A Incubadora ainda é o lugar para cultivar uma colônia, e a única forma de zerar sua idade. Uma colônia que ficou Senescente antes de você começar a alimentá-la continua Senescente num reator, e um ciclo completado aqui traz sua Vitalidade de volta a 100%.

Funis e canos podem inserir o nutriente, então um baú alimentando a Incubadora mantém uma longa sessão de cultivo rodando. Toda face permite isso por padrão; a [Configuração de Lados](nautec:getting_started/utilities.md) muda isso.

Os dois slots no canto inferior esquerdo são a Porta de Placas: uma placa entra à esquerda e placas segurando uma colônia saem à direita. Uma Placa de Petri segurando uma colônia a carrega, desde que o slot de bactéria esteja vazio ou contenha a mesma linhagem com exatamente os mesmos stats e espaço de sobra, e que a linhagem seja uma que a Incubadora possa cultivar. Uma colônia já no limite de tamanho só entra se tiver envelhecido, já que uma fresca não tem mais nada a ganhar. A placa esvaziada fica na porta, e uma vez que a colônia alcança o limite de tamanho ela a tira de volta e a move para o slot de saída, o que libera a porta para a próxima. A porta só aceita uma placa que possa usar naquele momento, então um cano ou funil segura qualquer outra em vez de travar a máquina.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:incubator"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

A Incubadora precisa de 20 AP. Um feixe mais forte roda seus ciclos de crescimento mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 20).

| Feixe | Velocidade |
|---|---|
| 20 AP | ×1 (normal) |
| 80 AP | ×2 |
| 180 AP | ×3 |
| 320 AP | ×4 |

Cada ciclo ainda tem sua própria chance de comer um nutriente, então uma Incubadora mais rápida cultiva a colônia e gasta nutriente na mesma taxa maior. O ciclo de 5 segundos é num feixe de 20 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.