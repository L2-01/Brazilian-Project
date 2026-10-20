---
navigation:
  title: Replicador de Colônias
  icon: nautec:colony_replicator
  position: 15
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:colony_replicator
---

# <Color id="light_purple">Replicador de Colônias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="colony_replicator" scale="2"/>
  Transforma colônias de sobra de uma linhagem em cópias da sua melhor.
</Column>

Apurar uma colônia forte leva uma longa cadeia de [mutações](mutator.md), e toda mutação muda a linhagem. O Replicador deixa você apurar uma colônia uma vez e então fazer mais dela a partir de colônias baratas da mesma linhagem, como enxertos frescos.

***

## <Color id="gold">Replicar</Color>

* Modelo (canto superior esquerdo): sua melhor colônia. Deve estar [analisada](bacterial_analyzer.md). É copiada e nunca gasta.
* Forragem (meio): qualquer colônia da linhagem do modelo, quaisquer que sejam seus stats. É decomposta em biomassa assim que entra. Uma colônia de outra linhagem fica no slot e a máquina espera.
* Itens de forragem (acima da colônia de forragem): o item que a linhagem do modelo produz, ou o bloco de armazenamento daquele item. Cada um é decomposto em biomassa, então a própria saída de um reator pode pagar pelas cópias.
* Saída (direita): a nova colônia.

Cada nova colônia usa 20.000 de biomassa. Uma colônia de forragem dá seu tamanho: dez colônias de 2.000 servem tão bem quanto uma de 20.000. Um item de forragem dá 100 dividido pelo [Rendimento de Linhagem](production_rates.md) da linhagem, e um bloco de armazenamento nove vezes isso, então itens raros valem mais:

| Item | Biomassa | Para uma cópia |
|---|---|---|
| Pedra (Rendimento de Linhagem 1) | 100 | 200 pedras |
| Lingote de Ferro (0.6) | 167 | 120 barras, ou 14 Blocos de Ferro |
| Diamante (0.12) | 833 | 25 diamantes, ou 3 Blocos de Diamante |

A barra ao lado do slot de forragem mostra quanto está armazenado, até 200.000. Forragem que levaria o estoque além de 200.000 ainda é gasta, e o extra se perde. A biomassa pertence a uma linhagem, então trocar o modelo para outra linhagem joga fora o que está armazenado.

A nova colônia tem os stats do modelo, sai analisada e começa com tamanho 10.000 — metade da biomassa que custou — então está pronta para trabalhar ou para completar na [Incubadora](incubator.md).

### Erros de Cópia

Uma cópia pode sair levemente pior que o modelo. Cada stat tem sua própria chance de erro, e um erro tira até um décimo daquele stat. Uma cópia nunca é melhor que o modelo.

A Resistência à Mutação decide quão fiel a cópia é. Sem resistência, cada stat tem 50% de chance de erro. A chance e o tamanho do erro encolhem conforme a resistência sobe, e no teto de resistência toda cópia é perfeita. Apure a resistência primeiro se quiser uma linha de colônias idênticas.

***

## <Color id="gold">Emendar</Color>

Aperte o botão de modo para trocar para Emendar. Ponha uma segunda colônia analisada da mesma linhagem no slot de parceira (canto inferior esquerdo). Nenhuma das mães é gasta.

A filha recebe cada um dos seus quatro stats de uma mãe, e para cada stat tem 70% de chance de pegar o valor melhor. Emendar uma colônia com alta Taxa de Produção e uma com Longevidade longa pode lhe dar ambos. A filha nunca pode superar a melhor mãe em nenhum stat, e é então copiada com uma chance de erro de cópia definida pela sua própria Resistência à Mutação, como acima.

Emendar usa a mesma biomassa que replicar.

***

## <Color id="gold">Energia</Color>

Precisa de um feixe de laser de pelo menos 80 AP com pureza 2.0 ou maior, em qualquer face exceto a frontal. Leva 30 segundos por colônia. Com um feixe mais fraco ele pausa e mantém o progresso.

***

## <Color id="gold">Automação</Color>

Os três slots no canto inferior esquerdo são a Porta de Placas: uma placa entra à esquerda, cópias prontas saem pelo slot do meio e placas vazias saem pela direita. Uma Placa de Petri segurando uma colônia da linhagem do modelo a carrega no slot de forragem. Uma placa vazia tira cada colônia pronta do slot de saída. A porta só aceita uma placa que possa usar naquele momento: nada de forragem antes de um modelo definido, nada de forragem de outra linhagem, e nada de placa vazia até uma cópia estar esperando. Funis e canos podem encher a porta e puxar placas para fora, então uma fileira de máquinas de enxertia pode mantê-la abastecida.

A energia, pureza, tempo, custo e armazenamento de biomassa, biomassa por item, tamanho da cópia, chance de erro de cópia e chance de emenda estão todos em `config/nautec-common.toml`.

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Replicador de Colônias precisa de 80 AP. Um feixe mais forte copia colônias mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 80).

| Feixe | Velocidade |
|---|---|
| 80 AP | ×1 (normal) |
| 320 AP | ×2 |
| 720 AP | ×3 |
| 1.280 AP | ×4 |

Ele ainda precisa de pureza 2.0 ou maior, e pureza não o acelera. Os 30 segundos por colônia são num feixe de 80 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.

<RecipeFor id="colony_replicator"/>