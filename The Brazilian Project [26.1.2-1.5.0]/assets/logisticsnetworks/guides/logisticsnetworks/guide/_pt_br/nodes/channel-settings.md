---
navigation:
  title: Configurações de Canal
  parent: nodes/index.md
  position: 2
---

# Configurações de Canal

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui afeta apenas o canal que você está vendo.

Segure a **Tecla Modificadora 3 (padrão: Alt)** e use **Interação Primária (padrão: Clique Esquerdo)** para definir uma configuração no valor máximo, ou **Interação Secundária (padrão: Clique Direito)** para defini-la no mínimo.

Use Interação Primária nos botões de número de canal no topo da tela para trocar a qual canal estas configurações se aplicam.

## Status

![Status: Ativado](images/channel-status-enabled.png)

![Status: Desabilitado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está no ar. Ele é processado a cada tique (sujeito a Atraso, Redstone e assim por diante).
- **Desativado** — o canal é completamente ignorado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como mudar:** use Interação Primária na pílula de valor para alternar entre Ativado e Desativado.

**Pegadinha:** um canal desativado mantém todas as outras configurações (filtros, lote, atraso etc.). Você não está apagando nada — só pausando. Reative para continuar de onde parou.

## Modo

![Mode: Sender](images/channel-mode-sender.png)

![Mode: Receiver](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Emissor** — retira recursos **do** bloco ao qual este nó está anexado. Emissores são quem dirigem as transferências: procuram Receptores correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Receptor** — aceita recursos **no** bloco ao qual este nó está anexado. Receptores são passivos — esperam um Emissor no mesmo número de canal entregar.

**Como mudar:** use Interação Primária na pílula de valor para alternar entre Emissor e Receptor.

**Pegadinha:** uma rede só com Receptores (ou só com Emissores) não faz nada. Você precisa de ao menos um de cada no mesmo número de canal para algo se mover.

## Tipo

![Type: Item](images/channel-type-item.png)

![Type: Fluid](images/channel-type-fluid.png)

![Type: Energy](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco anexado:

- **Item** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces de AE2, interfaces de Refined Storage etc.).
- **Fluido** — millibuckets (mB) de um tanque.
- **Energia** — Forge Energy / RF de um buffer de energia.

**Como mudar:** use Interação Primária na pílula de valor para percorrer os tipos disponíveis.

**Pegadinha:** nem todo bloco suporta todo tipo. Se o bloco não tiver a capacidade correspondente no lado escolhido, o canal silenciosamente não faz nada. Coloque um nó de item num tanque de fluido e ele não transfere — porque o tanque não tem inventário de itens.

### Interfaces de AE2 e Refined Storage

Nós com uma [Melhoria de Rede](upgrades-special.md) em Interfaces de Applied Energistics 2 e Refined Storage transferem itens e fluidos diretamente pela rede de armazenamento conectada. Sem a melhoria, a Interface é tratada como qualquer outro inventário: o nó só vê os itens e tanques estocados na própria Interface. Os recursos de exportação configurados da Interface decidem o que um Emissor pode puxar, incluindo sua configuração fuzzy nativa, mas a quantidade configurada não limita o Lote da Logistics. Receptores podem inserir qualquer recurso aceito pelos filtros de canal da Logistics.

Para Emissores de item, o caminho direto puxa primeiro da rede de armazenamento e depois usa os itens estocados naquela Interface para completar qualquer lote restante. Itens só de buffer ficam disponíveis para transferências posteriores, permitindo que a Interface esvazie. Transferências diretas de fluido ainda ignoram tanques expostos. Adicionar um mapeamento de espaço explícito da Logistics faz aquele canal de item voltar ao inventário exposto da Interface. Uma rede de armazenamento desconectada ou inativa espera sem usar o buffer da Interface, e transferências diretas nunca pedem autofabricação.

A integração química (Mekanism) e de Fonte (Ars Nouveau) é mantida para compatibilidade futura e está indisponível no momento.

## Lado

![Side: Up](images/channel-side-up.png)

![Side: All](images/channel-side-all.png)

**O que é:** qual face do bloco anexado este canal usa para interagir.

**O que faz:** alguns blocos se comportam diferente dependendo do lado por onde você insere ou extrai. Fornalhas são o exemplo clássico: a face de cima recebe combustível, a da frente recebe/entrega o item fundido, a de baixo só entrega saída. O Lado permite escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — só aquela face. O motor sonda o inventário do bloco (ou tanque, ou buffer de energia) naquele lado específico e usa os espaços que o bloco expõe ali.
- **Todas** — todas as faces do bloco são unidas num único manipulador combinado. O canal vê o bloco como um único poço de espaços/tanques/buffers formado pelo armazenamento exposto de cada lado. Se duas faces expõem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todas as faces), a duplicata é removida para você não contar em dobro.

**Como mudar:** use Interação Primária para percorrer até a próxima face (a ordem é Cima → Baixo → N → L → S → O → Todas → Cima ...).

**Pegadinha:** em blocos com inventários que diferenciam lados (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de espaços. Escolher **Todas** numa fornalha deixa o canal ver os espaços de entrada, combustível e saída de uma vez, o que geralmente não é o que você quer. Escolha a face específica para que os filtros se apliquem só aos espaços que importam.

## Redstone

![Redstone: High Signal](images/channel-redstone-high-signal.png)

![Redstone: Low Signal](images/channel-redstone-low-signal.png)

**O que é:** controle por redstone deste canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco ao qual este nó está anexado** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, o que for). Com base nesse sinal, o canal roda ou é bloqueado:

- **Ignorado** (padrão) — roda independente da redstone. O sinal nem é verificado.
- **Sinal Alto** — roda só quando há sinal de redstone (força > 0).
- **Sinal Baixo** — roda só quando não há sinal de redstone (força = 0).

**Como mudar:** use Interação Primária para percorrer até o próximo modo.

O condicionamento por redstone se aplica tanto a Emissores quanto a Receptores.

## Distribuição

![Distribution: Priority](images/channel-distribution-priority.png)

![Distribution: Nearest First](images/channel-distribution-nearest-first.png)

![Distribution: Farthest First](images/channel-distribution-farthest-first.png)

![Distribution: Equal Distribution](images/channel-distribution-round-robin.png)

**O que é:** como um Emissor escolhe entre vários Receptores correspondentes no mesmo número de canal.

**O que faz:** quando há só um Receptor, esta configuração não faz nada. Quando há vários, ela decide a ordem em que são atendidos:

- **Prioridade** — ordena pelo valor de **Prioridade** de cada Receptor. Números maiores são atendidos primeiro. Empates são resolvidos sem ordem particular.
- **Mais Próximo Primeiro** — atende primeiro os Receptores mais próximos do Emissor (por distância em linha reta).
- **Mais Distante Primeiro** — o oposto de Mais Próximo Primeiro: atende primeiro o Receptor mais longe.
- **Rodízio** — divide o lote de itens de cada operação o mais igualmente possível entre os Receptores correspondentes. Por exemplo, um lote de 8 itens comuns enviado a dois Receptores vazios é dividido em 4 e 4.
- **Rodízio por Prioridade** — cada operação vai para um Receptor, depois para o próximo. Os Receptores são visitados da maior para a menor **Prioridade**, e o ciclo se repete. Um Receptor cheio é pulado.

**Como mudar:** use Interação Primária para percorrer até o próximo modo.

**Pegadinha:** o Rodízio não mantém um ponteiro de rotação, e as parcelas não usadas fluem para Receptores com espaço. Ele só divide lotes de itens; em canais de fluido e energia se comporta como **Prioridade**.

**Pegadinha:** a posição do Rodízio por Prioridade volta ao Receptor de maior prioridade quando o mundo ou o chunk do Emissor recarrega. Se o Receptor escolhido aceitar só parte de um lote, o resto espera a próxima operação. Funciona em todo tipo de canal.

**Desativado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. A Distribuição só faz sentido no lado do Emissor.

## Prioridade

![Priority row](images/channel-priority.png)

**O que é:** um pequeno inteiro anexado a este canal. Faixa: **–99 a +99**.

**O que faz:** o Emissor ordena seus Receptores alvo por este número, do maior ao menor. Sob **Prioridade**, Receptores de prioridade maior recebem recursos antes dos de prioridade menor. Itens são lidos dos espaços de origem em ordem, então um lote espalhado pelos espaços de origem pode encher o primeiro Receptor com os espaços anteriores antes de mover o restante para o próximo Receptor. Sob **Rodízio por Prioridade**, define a ordem em que os Receptores se revezam.

**Como mudar:** use Interação Primária no campo numérico para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Pegadinha:** a Prioridade define a ordem de atendimento sob Prioridade, Rodízio por Prioridade e Rodízio em canais que não são de itens. Sob Mais Próximo/Mais Distante ela é ignorada — o ordenador nunca a lê. Defina a Prioridade nos **Receptores** que você quer atendidos primeiro, não no Emissor.

## Lote

![Batch row](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida numa operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Item** — número de itens (ex.: Lote 64 = até uma pilha cheia por operação).
- **Fluido** — millibuckets (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como mudar:** use Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1. A caixa também aceita matemática simples com `+ - * /` e parênteses, então `64*7` salva como 448. Prioridade e Atraso funcionam da mesma forma.

**Pegadinha:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se o seu nível de melhoria só permitir 500, o motor usa 500. Instale melhorias de nível maior para subir o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desativado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. O tamanho do lote é decidido pelo Emissor.

## Atraso

![Delay row](images/channel-delay.png)

**O que é:** o resfriamento entre operações de transferência neste canal, medido em **tiques**. `20t` significa 20 tiques, que é 1 segundo de tempo real.

**O que faz:** depois de uma transferência bem-sucedida, o canal espera essa quantidade de tiques antes de tentar de novo. Serve para segurar canais que não precisam transferir a cada tique.

**Como mudar:** use Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tique.

**Pegadinha:** canais de Energia **ignoram o Atraso**. O motor força transferências de Energia a 1 tique (instantâneas) independente do que você colocar aqui. A linha de Atraso fica esmaecida em canais do tipo Energia por isso.

**Pegadinha (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desativado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. O Emissor decide a que velocidade ele empurra.

---

Cada linha desta página vive apenas no canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
