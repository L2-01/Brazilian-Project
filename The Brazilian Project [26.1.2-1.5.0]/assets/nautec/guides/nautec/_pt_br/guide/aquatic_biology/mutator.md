---
navigation:
  title: Mutador
  icon: nautec:mutator
  position: 6
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:mutator
---

# <Color id="light_purple">Mutador</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="mutator" scale="2"/>
  O Mutador transforma uma colônia de uma linhagem em outra.
</Column>

Coloque a colônia no slot de bactéria da esquerda e o catalisador no slot de item. A cada 12 segundos o Mutador faz uma tentativa, e continua fazendo tentativas até uma ter sucesso. O slot de bactéria da direita deve estar vazio antes de começar, então tire cada nova colônia assim que aparecer.

O catalisador não é gasto, então um item cobre toda tentativa. Funis e canos podem inseri-lo, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)).

Os dois slots no canto inferior esquerdo são a Porta de Placas: uma placa entra à esquerda e novas mutações saem à direita. Uma Placa de Petri segurando uma colônia a carrega no slot de bactéria da esquerda quando aquele slot está livre e o catalisador no Mutador funciona naquela linhagem. A placa esvaziada fica na porta, e assim que a mutação aparece no slot de bactéria da direita ela a tira e a move para o slot de saída. Isso libera a porta para a próxima colônia, então um cano alimentando placas de colônia e outro puxando mutações mantém o Mutador trabalhando sem placas vazias para lidar. A porta só aceita uma placa que possa usar naquele momento, então coloque o catalisador primeiro, e um cano segura qualquer outra em vez de travar a máquina.

A categoria Mutações de Bactérias do JEI lista o catalisador e a chance base de toda mutação, e a [Árvore de Linhagens](strain_tree.md) as mostra todas como uma árvore.

Paire sobre o slot de catalisador vazio com uma colônia carregada para ver toda linhagem em que ela pode se tornar, com o catalisador e sua chance para aquela colônia. Paire sobre a seta de progresso para ver o que o Mutador está esperando, a energia que está recebendo, a chance real por tentativa após tamanho, Resistência à Mutação e o reforço, o que uma falha custa, e quantas tentativas já falharam.

***

## <Color id="gold">Energia</Color>

Ele precisa de um feixe de pelo menos 10 AP entrando pela face de cima ou de baixo. Feixes nas duas faces somam. Abaixo de 10 AP ele pausa. O tempo (240 tiques) e a energia são configuráveis.

***

## <Color id="gold">Sucesso</Color>

A chance mostrada no JEI é o melhor caso. Duas coisas a reduzem:

* Resistência à Mutação: no teto de resistência a chance é reduzida à metade.
* Tamanho: no limite de tamanho a chance é um quarto menor.

Uma mutação de 25% numa colônia fresca de 400 com resistência 0.05 tem sucesso cerca de 24% das vezes. A mesma mutação numa colônia cheia de 40.000 cai para cerca de 18%.

Num sucesso a colônia de entrada inteira é gasta e a nova linhagem aparece no slot da direita. Ela começa no seu próprio tamanho inicial, qualquer que fosse o tamanho da mãe. Herda os quatro stats da mãe com um pequeno deslocamento aleatório, começa com Vitalidade cheia e sai não analisada.

***

## <Color id="gold">Falha</Color>

Uma tentativa falha mata um quarto da colônia, reduzido pela sua Resistência à Mutação: uma colônia no teto de resistência não perde nada. Uma falha nunca leva o fim de uma colônia, então o Mutador sempre continua tentando. Um slot de [reforço](#reforço) preenchido impede que falhas custem qualquer coisa.

Como o tamanho da nova colônia não depende da mãe, mute colônias enquanto são pequenas. Cultivar uma colônia antes só reduz a chance e dá às falhas mais para comer.

***

## <Color id="gold">Apuramento de Stats</Color>

Mutação é a única coisa que muda os stats de uma colônia, e uma colônia mantém seus stats a cada passo. Analise cada resultado no [Analisador Bacteriano](bacterial_analyzer.md) antes de se comprometer com ele.

Você não precisa mudar de linhagem para apurar stats. Use o bloco de armazenamento do item que uma colônia produz como catalisador (Blocos de Ferro para Ferrófilas, Fardos de Feno para Rizobactérias), ou o próprio item se não tiver bloco de armazenamento, e o Mutador apura a colônia em vez disso. Um apuramento tem 25% de chance base, reduzida por tamanho e Resistência à Mutação como qualquer outra tentativa. Um sucesso mantém a linhagem e o tamanho da colônia e desloca os stats do mesmo jeito que uma mutação, e uma falha custa o mesmo que uma mutação falha. O JEI lista cada apuramento na categoria Mutações de Bactérias como uma linhagem virando ela mesma.

***

## <Color id="gold">Reforço</Color>

O slot à direita do catalisador aceita Frascos de Soro Eletrolítico de Algas. Enquanto tiver um, toda tentativa é três vezes mais provável de ter sucesso, seja mutando ou apurando, e uma tentativa falha não encolhe a colônia. Um frasco só é gasto quando uma tentativa tem sucesso, então cada nova colônia custa um frasco por mais tentativas que leve. Funis e canos podem abastecê-lo.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:mutator"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Mutador precisa de 10 AP. Um feixe mais forte faz suas tentativas mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 10).

| Feixe | Velocidade |
|---|---|
| 10 AP | ×1 (normal) |
| 40 AP | ×2 |
| 90 AP | ×3 |
| 160 AP | ×4 |

Cada tentativa tem a mesma chance de antes, então um Mutador mais rápido simplesmente ganha mais tentativas por minuto. Os 12 segundos por tentativa são num feixe de 10 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.