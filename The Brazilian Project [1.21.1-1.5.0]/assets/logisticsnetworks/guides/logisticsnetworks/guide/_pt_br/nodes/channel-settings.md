---
navigation:
  title: Configurações do Canal
  parent: nodes/index.md
  position: 2
---

# Configurações do Canal

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui afeta apenas o canal que você está olhando.

Segure a **Tecla Modificadora 3 (padrão: Alt)** e use a **Interação Primária (padrão: Botão Esquerdo)** para definir uma configuração no valor máximo, ou a **Interação Secundária (padrão: Botão Direito)** para defini-la no valor mínimo.

Use a Interação Primária nos botões de número de canal no topo da tela para trocar a qual canal estas configurações se aplicam.

## Estado

![Estado: Ativado](images/channel-status-enabled.png)

![Estado: Desativado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está vivo. Ele é processado a cada tique (sujeito a Atraso, Redstone e assim por diante).
- **Desativado** — o canal é completamente pulado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como mudar:** use a Interação Primária na pílula de valor para alternar entre Ativado e Desativado.

**Pegadinha:** um canal desativado mantém todas as outras configurações (filtros, lote, atraso, etc.). Você não está excluindo nada — apenas pausando-o. Reative para continuar exatamente de onde parou.

## Modo

![Modo: Emissor](images/channel-mode-sender.png)

![Modo: Receptor](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Emissor** — puxa recursos **para fora** do bloco ao qual este nó está preso. Os Emissores são os que dirigem as transferências: eles procuram Receptores correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Receptor** — aceita recursos **para dentro** do bloco ao qual este nó está preso. Os Receptores são passivos — esperam um Emissor no mesmo número de canal entregar.

**Como mudar:** use a Interação Primária na pílula de valor para alternar entre Emissor e Receptor.

**Pegadinha:** uma rede com apenas Receptores (ou apenas Emissores) não faz nada. Você precisa de pelo menos um de cada no mesmo número de canal para que algo se mova.

## Tipo

![Tipo: Item](images/channel-type-item.png)

![Tipo: Fluido](images/channel-type-fluid.png)

![Tipo: Energia](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco anexo:

- **Item** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces do AE2, interfaces do Refined Storage, etc.).
- **Fluido** — milibaldes (mB) de um tanque.
- **Energia** — Forge Energy / RF de um buffer de energia.

**Como mudar:** use a Interação Primária na pílula de valor para percorrer os tipos disponíveis.

**Pegadinha:** nem todo bloco suporta todo tipo. Se o bloco não tem a capacidade correspondente no lado escolhido, o canal silenciosamente não faz nada. Coloque um nó de item num tanque de fluido e ele não transferirá — porque o tanque não tem inventário de itens.

### Interfaces do AE2 e do Refined Storage

Nós com uma [Melhoria de Rede](upgrades-special.md) em Interfaces do Applied Energistics 2 e do Refined Storage transferem itens e fluidos diretamente pela rede de armazenamento conectada. Sem a melhoria, a Interface é tratada como qualquer outro inventário: o nó só vê os itens e tanques estocados na própria Interface. Os recursos de exportação configurados da Interface decidem o que um Emissor pode puxar, incluindo sua configuração fuzzy nativa, mas a quantidade configurada não limita o lote do Logistics. Receptores podem inserir qualquer recurso aceito pelos filtros de canal do Logistics.

Para Emissores de itens, o caminho direto puxa da rede de armazenamento primeiro, depois usa itens estocados naquela Interface para completar qualquer lote restante. Itens exclusivos do buffer ficam disponíveis para transferências posteriores, permitindo que a Interface esvazie. Transferências diretas de fluido ainda ignoram tanques expostos. Adicionar um mapeamento de espaço explícito do Logistics muda aquele canal de item de volta para o inventário exposto da Interface. Uma rede de armazenamento desconectada ou inativa espera sem usar o buffer da Interface, e transferências diretas nunca solicitam autofabricação.

Dois tipos extras — Químico (Mekanism) e Fonte (Ars Nouveau) — existem, mas exigem melhorias específicas para desbloquear. Eles são cobertos na página de Melhorias.

## Lado

![Lado: Cima](images/channel-side-up.png)

![Lado: Todos](images/channel-side-all.png)

**O que é:** qual face do bloco anexo este canal interage.

**O que faz:** alguns blocos se comportam diferente dependendo de qual lado você insere ou extrai. Fornalhas são o exemplo clássico: o lado de cima aceita combustível, o lado da frente aceita/dá o item fundido, o lado de baixo só dá saída. Lado permite escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — apenas aquela face. O motor sonda o inventário (ou tanque, ou buffer de energia) do bloco naquele lado específico e usa quaisquer espaços que o bloco expõe ali.
- **Todos** — toda face do bloco é mesclada num único manipulador combinado. O canal vê o bloco como um único poço de espaços/tanques/buffers feito de todo armazenamento exposto de cada lado. Se duas faces expõem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todo lado), a duplicata é removida para que você não conte em dobro.

**Como mudar:** use a Interação Primária para avançar à próxima face (a ordem é Cima → Baixo → N → L → S → O → Todos → Cima ...).

**Pegadinha:** em blocos com inventários sensíveis a lado (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de espaços. Escolher **Todos** numa fornalha deixa o canal ver os espaços de entrada, combustível e saída de uma vez, o que normalmente não é o que você quer. Escolha a face específica para que os filtros se apliquem apenas aos espaços que importam.

## Redstone

![Redstone: Sinal Alto](images/channel-redstone-high-signal.png)

![Redstone: Sinal Baixo](images/channel-redstone-low-signal.png)

**O que é:** controle de redstone para este canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco ao qual este nó está preso** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, qualquer coisa). Com base naquele sinal, o canal roda ou é bloqueado:

- **Ignorado** (padrão) — roda independentemente de redstone. O sinal nem é verificado.
- **Sinal Alto** — roda apenas quando um sinal de redstone está presente (força > 0).
- **Sinal Baixo** — roda apenas quando não há sinal de redstone (força = 0).

**Como mudar:** use a Interação Primária para avançar ao próximo modo.

O controle por redstone se aplica tanto a Emissores quanto a Receptores.

## Distribuição

![Distribuição: Prioridade](images/channel-distribution-priority.png)

![Distribuição: Mais Próximo Primeiro](images/channel-distribution-nearest-first.png)

![Distribuição: Mais Distante Primeiro](images/channel-distribution-farthest-first.png)

![Distribuição: Rodízio](images/channel-distribution-round-robin.png)

**O que é:** como um Emissor escolhe entre vários Receptores correspondentes no mesmo número de canal.

**O que faz:** quando há apenas um Receptor, esta configuração não faz nada. Quando há vários, decide a ordem em que são servidos:

- **Prioridade** — ordena pelo valor de **Prioridade** de cada Receptor. Números maiores são servidos primeiro. Empates são quebrados sem ordem particular.
- **Mais Próximo Primeiro** — serve primeiro os Receptores mais próximos do Emissor (por distância em linha reta).
- **Mais Distante Primeiro** — o oposto do Mais Próximo Primeiro: serve o Receptor mais distante primeiro.
- **Rodízio** — divide o lote de itens de cada operação o mais uniformemente possível entre os Receptores correspondentes.
- **Rodízio por Prioridade** — cada operação vai para um Receptor, depois o próximo. Os Receptores são visitados da **Prioridade** mais alta para a mais baixa, e então o ciclo se repete. Um Receptor cheio é pulado.

**Como mudar:** use a Interação Primária para avançar ao próximo modo.

**Pegadinha:** o Rodízio não mantém um ponteiro de rotação, e as parcelas não usadas fluem para Receptores com espaço. Ele só divide lotes de itens; em canais de fluido, energia, produto químico e Fonte ele se comporta como **Prioridade**.

**Pegadinha:** a posição do Rodízio por Prioridade reseta para o Receptor de maior prioridade quando o mundo ou o chunk do Emissor recarrega. Se o Receptor escolhido aceita apenas parte de um lote, o resto espera a próxima operação. Ele funciona em todo tipo de canal.

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. Distribuição só faz sentido no lado do Emissor.

## Prioridade

![Linha de Prioridade](images/channel-priority.png)

**O que é:** um pequeno inteiro preso a este canal. Faixa: **–99 a +99**.

**O que faz:** o Emissor ordena seus Receptores alvo por este número, o maior primeiro. Sob **Prioridade**, Receptores com prioridade maior recebem recursos antes dos de prioridade menor. Sob **Rodízio por Prioridade**, ele define a ordem em que os Receptores se alternam.

**Como mudar:** use a Interação Primária no campo de número para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Pegadinha:** a Prioridade define a ordem de serviço sob Prioridade, Rodízio por Prioridade e Rodízio em canais que não são de itens. Sob Mais Próximo/Mais Distante ela é ignorada — o ordenador nunca a lê. Defina Prioridade nos **Receptores** que você quer servidos primeiro, não no Emissor.

## Lote

![Linha de Lote](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida numa operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Item** — número de itens (ex.: Lote 64 = até uma pilha completa por operação).
- **Fluido** — milibaldes (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como mudar:** use a Interação Primária no campo de número para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1. A caixa também aceita matemática simples com `+ - * /` e parênteses, então `64*7` salva como 448. Prioridade e Atraso funcionam do mesmo jeito.

**Pegadinha:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se seu nível de melhoria só permite 500, o motor usa 500. Instale melhorias de nível mais alto para elevar o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. O tamanho do lote é decidido pelo Emissor.

## Atraso

![Linha de Atraso](images/channel-delay.png)

**O que é:** recarga entre operações de transferência neste canal, medida em **tiques**. `20t` significa 20 tiques, que é 1 segundo de tempo real.

**O que faz:** após uma transferência bem-sucedida, o canal espera essa quantidade de tiques antes de tentar de novo. Usado para estrangular canais para que não transfiram em spam a cada tique quando você não precisa.

**Como mudar:** use a Interação Primária no campo de número para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tique.

**Pegadinha:** canais de Energia **ignoram o Atraso**. O motor força as transferências de Energia para 1 tique (instantâneo) independentemente do que você colocar aqui. A linha de Atraso fica acinzentada em canais do tipo Energia por essa razão.

**Pegadinha (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. O Emissor decide a que velocidade empurra.

---

Toda linha desta página vive apenas no canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
