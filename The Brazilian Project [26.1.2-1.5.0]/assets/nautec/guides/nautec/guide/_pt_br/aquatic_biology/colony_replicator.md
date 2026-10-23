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

Criar uma colônia forte leva uma longa cadeia de [mutações](mutator.md), e cada mutação muda a linhagem. O Replicador deixa você criar uma colônia boa uma vez e depois produzir mais dela a partir de colônias baratas da mesma linhagem, como enxertos novos.

***

## <Color id="gold">Replicar</Color>

* Modelo (canto superior esquerdo): sua melhor colônia. Ela precisa estar [analisada](bacterial_analyzer.md). É copiada e nunca consumida.
* Forragem (meio): qualquer colônia da linhagem do modelo, quaisquer que sejam seus atributos. Ela é decomposta em biomassa assim que entra. Uma colônia de outra linhagem fica no espaço e a máquina espera.
* Itens de forragem (acima da colônia de forragem): o item que a linhagem do modelo produz, ou o bloco de armazenamento daquele item. Cada um é decomposto em biomassa, então a própria produção de um reator pode pagar pelas cópias.
* Saída (direita): a nova colônia.

Cada nova colônia usa 20.000 de biomassa. Uma colônia de forragem dá seu tamanho: dez colônias de 2.000 valem tanto quanto uma de 20.000. Um item de forragem dá 100 dividido pelo [Rendimento de Linhagem](production_rates.md), e um bloco de armazenamento nove vezes isso, então itens raros valem mais:

| Item | Biomassa | Para uma cópia |
|---|---|---|
| Pedra (Rendimento de Linhagem 1) | 100 | 200 pedras |
| Lingote de Ferro (0.6) | 167 | 120 lingotes, ou 14 Blocos de Ferro |
| Diamante (0.12) | 833 | 25 diamantes, ou 3 Blocos de Diamante |

A barra ao lado do espaço de forragem mostra quanto está armazenado, até 200.000. Forragem que passaria o estoque de 200.000 ainda é consumida, e o excedente se perde. Biomassa pertence a uma linhagem, então trocar o modelo por outra linhagem joga fora o que está armazenado.

A nova colônia tem os atributos do modelo, sai analisada e começa com tamanho 10.000, metade da biomassa que custou, então está pronta para trabalhar ou para completar na [Incubadora](incubator.md).

### Erros de Cópia

Uma cópia pode sair um pouco pior que o modelo. Cada atributo tem sua própria chance de erro, e um erro tira até um décimo daquele atributo. Uma cópia nunca é melhor que o modelo.

A Resistência à Mutação decide quão fiel é a cópia. Sem resistência, cada atributo tem 50% de chance de erro. A chance e o tamanho do erro encolhem conforme a resistência sobe, e no teto de resistência toda cópia é perfeita. Crie resistência primeiro se quiser uma linha de colônias idênticas.

***

## <Color id="gold">Combinar</Color>

Aperte o botão de modo para mudar para Combinar. Coloque uma segunda colônia analisada da mesma linhagem no espaço de parceira (canto inferior esquerdo). Nenhum dos genitores é consumido.

O filhote recebe cada um de seus quatro atributos de um genitor, e para cada atributo tem 70% de chance de pegar o melhor valor. Combinar uma colônia com alta Taxa de Produção e uma com longa Vida Útil pode lhe dar ambos. O filhote nunca pode superar o melhor genitor em nenhum atributo, e depois é copiado com uma chance de erro de cópia definida por sua própria Resistência à Mutação, como acima.

Combinar usa a mesma biomassa que replicar.

***

## <Color id="gold">Energia</Color>

Ele precisa de um feixe de laser de pelo menos 80 AP a pureza 2.0 ou maior, em qualquer face exceto a frente. Leva 30 segundos por colônia. Com um feixe mais fraco ele pausa e mantém o progresso.

***

## <Color id="gold">Automação</Color>

Os três espaços no canto inferior esquerdo são a Porta de Placas: uma placa entra pela esquerda, cópias prontas saem pelo espaço do meio e placas vazias saem pela direita. Uma Placa de Petri com uma colônia da linhagem do modelo a carrega no espaço de forragem. Uma placa vazia retira cada colônia pronta do espaço de saída. A porta só aceita uma placa que possa usar na hora: nada de forragem antes de um modelo definido, nada de forragem de outra linhagem e nada de placa vazia até uma cópia estar esperando. Funis e tubos podem encher a porta e puxar placas, então uma fileira de máquinas de enxertia pode mantê-la alimentada.

A potência, a pureza, o tempo, o custo e estoque de biomassa, a biomassa por item, o tamanho da cópia, a chance de erro de cópia e a chance de combinação estão todos em `config/nautec-common.toml`.

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

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

<RecipeFor id="colony_replicator"/>
