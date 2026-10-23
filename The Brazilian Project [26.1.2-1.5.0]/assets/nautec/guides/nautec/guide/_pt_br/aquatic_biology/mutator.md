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

Coloque a colônia no espaço de bactérias da esquerda e o catalisador no espaço de item. A cada 12 segundos o Mutador faz uma tentativa, e continua tentando até uma ter sucesso. O espaço de bactérias da direita precisa estar vazio antes de começar, então retire cada nova colônia assim que ela aparecer.

O catalisador não é consumido, então um único item cobre todas as tentativas. Funis e tubos podem inseri-lo, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)).

Os dois espaços no canto inferior esquerdo são a Porta de Placas: uma placa entra pela esquerda e novas mutações saem pela direita. Uma Placa de Petri com colônia a carrega no espaço de bactérias da esquerda quando esse espaço está livre e o catalisador no Mutador funciona naquela linhagem. A placa esvaziada fica na porta, e assim que a mutação aparece no espaço da direita ela a retira e a move para o espaço de saída. Isso libera a porta para a próxima colônia, então um tubo alimentando placas com colônia e outro puxando mutações mantém o Mutador funcionando sem placas vazias para gerenciar. A porta só aceita uma placa que possa usar na hora, então coloque o catalisador primeiro, e um tubo segura qualquer outra coisa em vez de travar a máquina.

A categoria Mutações de Bactérias do JEI lista o catalisador e a chance base de cada mutação, e a [Árvore de Linhagens](strain_tree.md) as mostra todas em árvore.

Passe o mouse sobre o espaço de catalisador vazio com uma colônia carregada para ver toda linhagem em que ela pode virar, com o catalisador e sua chance para aquela colônia. Passe o mouse sobre a seta de progresso para ver do que o Mutador está esperando, a energia que está recebendo, a chance real por tentativa após tamanho, Resistência à Mutação e o estimulante, o que uma falha custa e quantas tentativas já falharam.

***

## <Color id="gold">Energia</Color>

Ele precisa de um feixe de pelo menos 10 AP entrando por sua face superior ou inferior. Feixes nas duas faces se somam. Abaixo de 10 AP ele pausa. O tempo (240 tiques) e a potência são configuráveis.

***

## <Color id="gold">Sucesso</Color>

A chance mostrada no JEI é o melhor caso. Duas coisas a reduzem:

* Resistência à Mutação: no teto de resistência a chance é cortada pela metade.
* Tamanho: no teto de tamanho a chance é um quarto menor.

Uma mutação de 25% numa colônia nova de 400 com 0.05 de resistência tem sucesso cerca de 24% das vezes. A mesma mutação numa colônia cheia de 40.000 cai para cerca de 18%.

Num sucesso a colônia de entrada inteira é consumida e a nova linhagem aparece no espaço da direita. Ela começa em seu próprio tamanho inicial, qualquer que tenha sido o da mãe. Ela herda os quatro atributos da mãe com um pequeno desvio aleatório, começa com Vitalidade cheia e sai não analisada.

***

## <Color id="gold">Falha</Color>

Uma tentativa falha mata um quarto da colônia, reduzido pela sua Resistência à Mutação: uma colônia no teto de resistência não perde nada. Uma falha nunca leva o resto de uma colônia, então o Mutador sempre continua tentando. Um espaço de [estimulante](#booster) preenchido impede que falhas custem qualquer coisa.

Como o tamanho da nova colônia não depende da mãe, mute colônias enquanto são pequenas. Cultivar uma colônia antes só diminui a chance e dá às falhas mais o que comer.

***

## <Color id="gold">Criação de Atributos</Color>

Mutação é a única coisa que muda os atributos de uma colônia, e uma colônia os mantém a cada passo. Analise cada resultado no [Analisador Bacteriano](bacterial_analyzer.md) antes de se comprometer com ele.

Você não precisa mudar de linhagem para criar atributos. Use o bloco de armazenamento do item que a colônia produz como catalisador (Blocos de Ferro para Ferrófilos, Fardos de Feno para Rizobactérias), ou o próprio item se não tiver bloco de armazenamento, e o Mutador refina a colônia em vez disso. Um refino tem 25% de chance base, reduzida por tamanho e Resistência à Mutação como qualquer outra tentativa. Um sucesso mantém a linhagem e o tamanho da colônia e desloca os atributos do mesmo jeito que uma mutação, e uma falha custa o mesmo que uma mutação falha. O JEI lista cada refino na categoria Mutações de Bactérias como uma linhagem virando ela mesma.

***

## <Color id="gold">Estimulante</Color>

O espaço à direita do catalisador aceita Frascos de Soro Eletrolítico de Algas. Enquanto houver um, toda tentativa tem o triplo de chance de sucesso, seja mutação ou refino, e uma falha não encolhe a colônia. Um frasco só é consumido quando uma tentativa tem sucesso, então cada nova colônia custa um frasco por mais tentativas que tenha levado. Funis e tubos podem preenchê-lo.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:mutator"/>

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Mutador precisa de 10 AP. Um feixe mais forte torna suas tentativas mais rápidas: sua velocidade é a raiz quadrada de (feixe ÷ 10).

| Feixe | Velocidade |
|---|---|
| 10 AP | ×1 (normal) |
| 40 AP | ×2 |
| 90 AP | ×3 |
| 160 AP | ×4 |

Cada tentativa tem a mesma chance de antes, então um Mutador mais rápido simplesmente faz mais tentativas por minuto. Os 12 segundos por tentativa são num feixe de 10 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.
