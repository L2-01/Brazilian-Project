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
  Muda a cepa de uma colônia ou refina seus atributos.
</Column>

**Tentando elevar a Taxa de Produção?** Guarde sua melhor colônia, refine cópias e fique só com as melhorias. Uma tentativa bem-sucedida ainda pode baixar atributos. Comece pela [Criação de Atributos](mutator.md#stat-breeding) abaixo.

Coloque a colônia no espaço de bactérias esquerdo e o catalisador no espaço de item. A cada 12 segundos o Mutador faz uma tentativa, e continua fazendo tentativas até uma funcionar. O espaço de bactérias direito precisa estar vazio antes de começar, então retire cada nova colônia assim que ela aparecer.

O catalisador não é consumido, então um item cobre todas as tentativas. Funis e tubos podem inseri-lo, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)).

Os dois espaços no canto inferior esquerdo são a Porta de Placas: uma placa entra pela esquerda e as novas mutações saem pela direita. Uma Placa de Petri contendo uma colônia a carrega no espaço de bactérias esquerdo quando esse espaço está livre e o catalisador no Mutador funciona naquela cepa. A placa esvaziada fica na porta, e assim que a mutação aparece no espaço de bactérias direito ela a retira e a move para o espaço de saída. Isso libera a porta para a próxima colônia, então um tubo alimentando placas com colônias e outro retirando mutações mantém o Mutador trabalhando sem placas vazias para lidar. A porta só aceita uma placa que pode usar naquele momento, então coloque o catalisador primeiro, e um tubo segura qualquer outra coisa em vez de travar a máquina.

A categoria de Mutações de Bactérias do JEI lista o catalisador e a chance base de cada mutação, e a [Árvore de Linhagens](strain_tree.md) mostra todas em árvore.

Passe o mouse sobre o espaço vazio de catalisador com uma colônia carregada para ver cada cepa em que ela pode se tornar, com o catalisador e sua chance para aquela colônia. Passe o mouse sobre a seta de progresso para ver o que o Mutador está aguardando, a energia que está recebendo, a chance real por tentativa depois do tamanho, da Resistência à Mutação e do impulsionador, o que uma falha custa, e quantas tentativas falharam até agora.

***

## <Color id="gold">Energia</Color>

Ele precisa de um feixe de pelo menos 10 AP entrando pela face superior ou inferior. Feixes em ambas as faces se somam. Abaixo de 10 AP ele pausa. O tempo (240 tiques) e a energia são configuráveis.

***

## <Color id="gold">Sucesso</Color>

A chance mostrada no JEI é o melhor caso. Duas coisas a reduzem:

* Resistência à Mutação: no máximo de resistência, a chance é reduzida pela metade.
* Tamanho: no tamanho máximo, a chance é um quarto menor.

Uma mutação de 25% em uma colônia nova de 400 com resistência 0,05 funciona cerca de 24% das vezes. A mesma mutação em uma colônia cheia de 40.000 cai para cerca de 18%.

Em caso de sucesso, a colônia de entrada inteira é consumida e a nova cepa aparece no espaço direito. Ela começa no próprio tamanho inicial, qualquer que fosse o tamanho da progenitora. Herda os quatro atributos da progenitora com um pequeno desvio aleatório, começa com Vitalidade cheia e sai não analisada.

***

## <Color id="gold">Falha</Color>

Uma tentativa falha mata um quarto da colônia, reduzido por sua Resistência à Mutação: uma colônia no máximo de resistência não perde nada. Uma falha nunca leva o último resto de uma colônia, então o Mutador continua tentando. Um espaço de [impulsionador](mutator.md#booster) preenchido impede que falhas custem qualquer coisa.

Como o tamanho da nova colônia não depende da progenitora, mute colônias enquanto são pequenas. Fazer uma colônia crescer primeiro só baixa a chance e dá às falhas mais para comer.

***

## <Color id="gold">Criação de Atributos</Color>

Uma mutação ou refinamento bem-sucedido é uma nova rolagem de atributos, não uma melhoria garantida. Taxa de Crescimento, Taxa de Produção e Tempo de Vida podem subir ou descer. Refinar repetidamente sua única colônia pode desfazer os ganhos que você já fez.

### Guarde a melhor, refine as cópias

1. Analise sua colônia no [Analisador Bacteriano](bacterial_analyzer.md) e guarde a melhor como modelo.
2. Faça colônias reserva no [Replicador de Colônias](colony_replicator.md). Cópias também podem perder atributos, então compare cada resultado com o modelo original.
3. Refine uma reserva no Mutador e analise o resultado. Fique com um resultado melhor como novo modelo; mantenha o modelo antigo quando o resultado for pior.
4. Repita até os atributos que importam chegarem aos máximos. Cresça a colônia pronta na [Incubadora](incubator.md) para produção.

Você não precisa mudar de cepa para criar atributos. Use o bloco de armazenamento do item que a colônia produz como catalisador (Blocos de Ferro para Ferrófilas, Fardos de Feno para Rizobactérias), ou o próprio item se não houver bloco de armazenamento. O JEI lista cada refinamento como uma cepa virando ela mesma.

Um refinamento tem 25% de chance base de sucesso, reduzida pelo tamanho da colônia e pela Resistência à Mutação. Um sucesso mantém a cepa e o tamanho da colônia enquanto rola os atributos. Uma tentativa falha segue as regras normais de perda da colônia.

### O que os números significam

Toda cepa compartilha o mesmo máximo de Taxa de Produção: **2,0 por padrão**. A faixa inicial de atributos de uma cepa só decide sua rolagem inicial; ela não limita até onde você pode criá-la.

**O Rendimento da Linhagem é separado.** O reator multiplica a Taxa de Produção pelo Rendimento da Linhagem, pelo tamanho da colônia e pelos fatores de velocidade da máquina. Uma cepa com Rendimento da Linhagem 0,12 ainda pode chegar a 2,0 de Taxa de Produção, mas produz 12% da velocidade de uma cepa de rendimento 1 com os mesmos atributos de colônia e o mesmo reator. Veja [Taxas de Produção](production_rates.md) para o cálculo completo.
Sem a proteção do soro, a Taxa de Produção rola igualmente para aumento ou redução, em até cerca de 10% dividido por (1 + Resistência à Mutação) cada vez. Resistência maior torna essas mudanças menores. Também torna a replicação mais fiel, chegando a cópias perfeitas no máximo de resistência, mas baixa a chance de sucesso do Mutador.

O modo de cruzamento do Replicador de Colônias pode combinar bons atributos de duas progenitoras. Ele não pode elevar um atributo acima do valor da melhor progenitora, então use mutação ou refinamento para alcançar novos picos.

***

## <Color id="gold">Impulsionador</Color>

O espaço à direita do catalisador aceita Frascos de Soro Eletrolítico de Algas. Enquanto contém um, cada tentativa tem três vezes mais chance de sucesso, seja mutando ou refinando, e uma tentativa falha não encolhe a colônia. Um frasco só é consumido quando uma tentativa funciona, então cada nova colônia custa um frasco por mais tentativas que tenha levado. Funis e tubos podem abastecê-lo.

Numa mutação ou refinamento impulsionado bem-sucedido, o soro também dá a **cada atributo que reduziria uma chance separada de 50% de manter o valor da progenitora**. Melhorias são mantidas como rolaram. A proteção não garante melhoria nem protege todos os atributos juntos, então guarde um modelo reserva.

Defina `mutatorBoostedStatProtectionChance` em `config/nautec-common.toml` como um percentual de 0 a 100. Em 0, o soro não protege atributos; em 100, um resultado impulsionado bem-sucedido não pode perder atributos. Essa proteção não se aplica a erros de cópia do Replicador de Colônias.

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

Cada tentativa tem a mesma chance de antes, então um Mutador mais rápido simplesmente ganha mais tentativas por minuto. Os 12 segundos por tentativa são com um feixe de 10 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e todas as máquinas a que ela se aplica.
