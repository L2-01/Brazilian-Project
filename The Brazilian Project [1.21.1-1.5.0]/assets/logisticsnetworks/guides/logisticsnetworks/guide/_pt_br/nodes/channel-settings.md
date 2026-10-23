---
navigation:
  title: Configurações de Canal
  parent: nodes/index.md
  position: 2
---

# Configurações de Canal

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui só afeta o canal que você está vendo.

Segure a **Tecla Modificadora 3 (padrão: Alt)** e use a **Interação Primária (padrão: Botão Esquerdo)** para definir uma configuração em seu valor máximo, ou a **Interação Secundária (padrão: Botão Direito)** para defini-la em seu valor mínimo.

Use a Interação Primária nos botões de número de canal no topo da tela para trocar a qual canal essas configurações se aplicam.

## Status

![Status: Ativado](images/channel-status-enabled.png)

![Status: Desabilitado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está ativo. Ele é processado a cada tick (sujeito a Atraso, Redstone etc.).
- **Desabilitado** — o canal é completamente ignorado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como alterar:** use a Interação Primária na pílula de valor para alternar entre Ativado e Desabilitado.

**Detalhe:** um canal desabilitado mantém todas as outras configurações (filtros, lote, atraso etc.). Você não está apagando nada — apenas pausando. Reative para continuar de onde parou.

## Modo

![Modo: Emissor](images/channel-mode-sender.png)

![Modo: Receptor](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Emissor** — puxa recursos **de dentro** do bloco ao qual este nó está anexo. Emissores são quem dirige as transferências: eles procuram Receptores correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Receptor** — aceita recursos **para dentro** do bloco ao qual este nó está anexo. Receptores são passivos — esperam um Emissor no mesmo número de canal entregar.

**Como alterar:** use a Interação Primária na pílula de valor para alternar entre Emissor e Receptor.

**Detalhe:** uma rede só com Receptores (ou só com Emissores) não faz nada. Você precisa de pelo menos um de cada no mesmo número de canal para algo se mover.

## Tipo

![Tipo: Item](images/channel-type-item.png)

![Tipo: Fluido](images/channel-type-fluid.png)

![Tipo: Energia](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco anexado:

- **Item** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces do AE2, interfaces do Refined Storage etc.).
- **Fluido** — milibaldes (mB) de um tanque.
- **Energia** — Forge Energy / RF de um acumulador de energia.

**Como alterar:** use a Interação Primária na pílula de valor para alternar entre os tipos disponíveis.

**Detalhe:** nem todo bloco suporta todo tipo. Se o bloco não tiver a capacidade correspondente no lado escolhido, o canal simplesmente não fará nada. Coloque um nó de itens em um tanque de fluido e ele não transferirá — porque o tanque não tem inventário de itens.

### Interfaces do AE2 e do Refined Storage

Nós com uma [Melhoria de Rede](upgrades-special.md) em Interfaces do Applied Energistics 2 e do Refined Storage transferem itens e fluidos diretamente pela rede de armazenamento conectada. Sem a melhoria, a Interface é tratada como qualquer outro inventário: o nó só vê os itens e tanques estocados na própria Interface. Os recursos de exportação configurados na Interface decidem o que um Emissor pode puxar, incluindo sua configuração fuzzy nativa, mas a quantidade configurada não limita o lote da Logistics. Receptores podem inserir qualquer recurso aceito pelos filtros de canal da Logistics deles.

Para Emissores de itens, o caminho direto puxa da rede de armazenamento primeiro e depois usa itens estocados naquela Interface para completar qualquer lote restante. Itens de buffer continuam disponíveis para transferências posteriores, permitindo que a Interface se esvazie. Transferências diretas de fluido ainda ignoram tanques expostos. Adicionar um mapeamento explícito de espaço da Logistics volta aquele canal de itens para o inventário exposto da Interface. Uma rede de armazenamento desconectada ou inativa espera sem usar o buffer da Interface, e transferências diretas nunca solicitam autofabricação.

Dois tipos extras — Químico (Mekanism) e Fonte (Ars Nouveau) — existem, mas exigem melhorias específicas para desbloquear. Eles são cobertos na página de Melhorias.

## Lado

![Lado: Cima](images/channel-side-up.png)

![Lado: Todos](images/channel-side-all.png)

**O que é:** qual face do bloco anexado este canal usa para interagir.

**O que faz:** alguns blocos se comportam de forma diferente dependendo de em qual lado você insere ou extrai. Fornalhas são o exemplo clássico: o lado de cima recebe combustível, o lado da frente recebe/entrega o item fundido, o lado de baixo só entrega a saída. Lado permite escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — apenas aquela face. O motor sonda o inventário do bloco (ou tanque, ou acumulador de energia) naquele lado específico e usa os espaços que o bloco expõe ali.
- **Todos** — todas as faces do bloco são mescladas em um único manipulador combinado. O canal vê o bloco como um único conjunto de espaços/tanques/acumuladores formado pelo armazenamento exposto de todos os lados. Se duas faces expuserem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todos os lados), a duplicata é removida para não contar em dobro.

**Como alterar:** use a Interação Primária para alternar para a próxima face (a ordem é Cima → Baixo → N → L → S → O → Todos → Cima ...).

**Detalhe:** em blocos com inventários sensíveis a lado (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de espaços. Escolher **Todos** em uma fornalha faz o canal ver os espaços de entrada, combustível e saída de uma vez, o que geralmente não é o que você quer. Escolha a face específica para que os filtros só se apliquem aos espaços que interessam.

## Redstone

![Redstone: Sinal Alto](images/channel-redstone-high-signal.png)

![Redstone: Sinal Baixo](images/channel-redstone-low-signal.png)

**O que é:** controle por redstone deste canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco ao qual este nó está anexo** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, o que for). Com base nesse sinal, o canal roda ou é bloqueado:

- **Ignorado** (padrão) — roda independentemente de redstone. O sinal nem é verificado.
- **Sinal Alto** — roda apenas quando há um sinal de redstone presente (força > 0).
- **Sinal Baixo** — roda apenas quando não há sinal de redstone (força = 0).

**Como alterar:** use a Interação Primária para alternar para o próximo modo.

O bloqueio por redstone se aplica tanto a Emissores quanto a Receptores.

## Distribuição

![Distribuição: Prioridade](images/channel-distribution-priority.png)

![Distribuição: Mais Próximo Primeiro](images/channel-distribution-nearest-first.png)

![Distribuição: Mais Distante Primeiro](images/channel-distribution-farthest-first.png)

![Distribuição: Distribuição Igual](images/channel-distribution-round-robin.png)

**O que é:** como um Emissor escolhe entre vários Receptores correspondentes no mesmo número de canal.

**O que faz:** quando há apenas um Receptor, esta configuração não faz nada. Quando há vários, ela decide a ordem em que são atendidos:

- **Prioridade** — ordena pelo valor de **Prioridade** de cada Receptor. Números maiores são atendidos primeiro. Empates são resolvidos sem ordem definida.
- **Mais Próximo Primeiro** — atende primeiro os Receptores mais próximos do Emissor (por distância em linha reta).
- **Mais Distante Primeiro** — o oposto do Mais Próximo Primeiro: atende primeiro o Receptor mais distante.
- **Distribuição Igual** — divide o lote de itens de cada operação o mais uniformemente possível entre os Receptores correspondentes.
- **Rodízio por Prioridade** — cada operação vai para um Receptor, depois o próximo. Os Receptores são visitados da maior para a menor **Prioridade**, e o ciclo se repete. Um Receptor cheio é ignorado.

**Como alterar:** use a Interação Primária para alternar para o próximo modo.

**Detalhe:** a Distribuição Igual não mantém um ponteiro de rotação, e as porções não usadas fluem para Receptores com espaço. Ela só divide lotes de itens; em canais de fluido, energia, químicos e Fonte ela se comporta como **Prioridade**.

**Detalhe:** a posição do Rodízio por Prioridade volta ao Receptor de maior prioridade quando o mundo ou o chunk do Emissor recarrega. Se o Receptor escolhido aceitar só parte de um lote, o resto espera a próxima operação. Funciona em todo tipo de canal.

**Desabilitado em Receptores:** esta linha fica cinza quando o Modo é Receptor. A distribuição só faz sentido no lado do Emissor.

## Prioridade

![Linha de Prioridade](images/channel-priority.png)

**O que é:** um pequeno número inteiro ligado a este canal. Faixa: **–99 a +99**.

**O que faz:** o Emissor ordena seus Receptores alvo por este número, do maior primeiro. Em **Prioridade**, Receptores de prioridade mais alta recebem recursos antes dos de prioridade mais baixa. Em **Rodízio por Prioridade**, define a ordem em que os Receptores se alternam.

**Como alterar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Detalhe:** a Prioridade define a ordem de atendimento em Prioridade, Rodízio por Prioridade e Distribuição Igual em canais que não são de itens. Em Mais Próximo/Mais Distante ela é ignorada — o ordenador nem a lê. Defina a Prioridade nos **Receptores** que você quer atendidos primeiro, não no Emissor.

## Lote

![Linha de Lote](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida em uma operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Item** — número de itens (ex.: Lote 64 = até uma pilha cheia por operação).
- **Fluido** — milibaldes (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como alterar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1. A caixa também aceita contas simples com `+ - * /` e parênteses, então `64*7` salva como 448. Prioridade e Atraso funcionam da mesma forma.

**Detalhe:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se seu nível de melhoria só permite 500, o motor usa 500. Instale melhorias de nível mais alto para elevar o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desabilitado em Receptores:** esta linha fica cinza quando o Modo é Receptor. O tamanho do lote é decidido pelo Emissor.

## Atraso

![Linha de Atraso](images/channel-delay.png)

**O que é:** tempo de recarga entre operações de transferência neste canal, medido em **ticks**. `20t` significa 20 ticks, que é 1 segundo de tempo real.

**O que faz:** após uma transferência bem-sucedida, o canal espera essa quantidade de ticks antes de tentar de novo. Serve para estrangular canais para que não transfiram a cada tick quando você não precisa.

**Como alterar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tick.

**Detalhe:** canais de Energia **ignoram o Atraso**. O motor força transferências de Energia a 1 tick (instantâneas) independentemente do que você colocar aqui. A linha de Atraso fica cinza em canais do tipo Energia por isso.

**Detalhe (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desabilitado em Receptores:** esta linha fica cinza quando o Modo é Receptor. O Emissor decide com que velocidade ele empurra.

---

Toda linha desta página vale apenas para o canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
