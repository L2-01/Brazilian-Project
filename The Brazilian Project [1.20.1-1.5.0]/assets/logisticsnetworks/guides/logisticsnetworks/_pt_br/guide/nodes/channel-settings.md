---
navigation:
  title: Configurações do Canal
  parent: nodes/index.md
  position: 2
---

# Configurações do Canal

![Painel completo de configurações do canal — Estado, Modo, Tipo, Lado, Redstone, Distribuição, Prioridade, Lote, Atraso](images/channel-settings-full.png)

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui afeta apenas o canal que você está olhando.

**Alt + Clique Esquerdo/Direito para definir a quantidade máxima ou mínima das configurações.**

Clique nos botões de número de canal no topo da tela para trocar a qual canal estas configurações se aplicam.

## Estado

![Estado: Ativado](images/channel-status-enabled.png)

![Estado: Desativado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está vivo. Ele é processado a cada tique (sujeito a Atraso, Redstone e assim por diante).
- **Desativado** — o canal é completamente pulado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como mudar:** clique esquerdo na pílula de valor para alternar entre Ativado e Desativado.

**Pegadinha:** um canal desativado mantém todas as outras configurações (filtros, lote, atraso, etc.). Você não está deletando nada — apenas pausando-o. Reative para continuar exatamente de onde parou.

## Modo

![Modo: Emissor](images/channel-mode-sender.png)

![Modo: Receptor](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Emissor** — puxa recursos **para fora** do bloco ao qual este nó está preso. Os Emissores são os que dirigem as transferências: eles procuram Receptores correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Receptor** — aceita recursos **para dentro** do bloco ao qual este nó está preso. Os Receptores são passivos — esperam um Emissor no mesmo número de canal entregar.

**Como mudar:** clique esquerdo na pílula de valor para alternar entre Emissor e Receptor.

**Pegadinha:** uma rede com apenas Receptores (ou apenas Emissores) não faz nada. Você precisa de pelo menos um de cada no mesmo número de canal para que algo se mova.

## Tipo

![Tipo: Item](images/channel-type-item.png)

![Tipo: Fluido](images/channel-type-fluid.png)

![Tipo: Energia](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco anexo:

- **Item** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces do AE2, etc.).
- **Fluido** — milibaldes (mB) de um tanque.
- **Energia** — Forge Energy / RF de um buffer de energia.

**Como mudar:** clique esquerdo na pílula de valor para percorrer os tipos disponíveis.

**Pegadinha:** nem todo bloco suporta todo tipo. Se o bloco não tem a capacidade correspondente no lado escolhido, o canal silenciosamente não faz nada. Coloque um nó de item num tanque de fluido e ele não transferirá — porque o tanque não tem inventário de itens.

Dois tipos extras — Químico (Mekanism) e Fonte (Ars Nouveau) — existem, mas exigem melhorias específicas para desbloquear. Eles são cobertos na página de Melhorias.

## Lado

![Lado: Cima](images/channel-side-up.png)

![Lado: Todos](images/channel-side-all.png)

**O que é:** qual face do bloco anexo este canal interage.

**O que faz:** alguns blocos se comportam diferente dependendo de qual lado você insere ou extrai. Fornalhas são o exemplo clássico: o lado de cima aceita combustível, o lado da frente aceita/dá o item fundido, o lado de baixo só dá saída. Lado permite escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — apenas aquela face. O motor sonda o inventário (ou tanque, ou buffer de energia) do bloco naquele lado específico e usa quaisquer espaços que o bloco expõe ali.
- **Todos** — toda face do bloco é mesclada num único manipulador combinado. O canal vê o bloco como um único poço de espaços/tanques/buffers feito de todo armazenamento exposto de cada lado. Se duas faces expõem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todo lado), a duplicata é removida para que você não conte em dobro.

**Como mudar:** clique esquerdo para avançar à próxima face (a ordem é Cima → Baixo → N → L → S → O → Todos → Cima ...).

**Pegadinha:** em blocos com inventários sensíveis a lado (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de espaços. Escolher **Todos** numa fornalha deixa o canal ver os espaços de entrada, combustível e saída de uma vez, o que normalmente não é o que você quer. Escolha a face específica para que os filtros se apliquem apenas aos espaços que importam.

## Redstone

![Redstone: Sempre Ligado](images/channel-redstone-always-on.png)

![Redstone: Sempre Desligado](images/channel-redstone-always-off.png)

![Redstone: Sinal Alto](images/channel-redstone-high-signal.png)

![Redstone: Sinal Baixo](images/channel-redstone-low-signal.png)

**O que é:** controle de redstone para este canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco ao qual este nó está preso** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, qualquer coisa). Com base naquele sinal, o canal roda ou é bloqueado:

- **Sempre Ligado** — roda independentemente do sinal.
- **Sempre Desligado** — nunca roda. Mesmo efeito que Estado = Desativado, mas você mantém o canal armado.
- **Sinal Alto** — roda apenas quando um sinal de redstone está presente (força > 0).
- **Sinal Baixo** — roda apenas quando não há sinal de redstone (força = 0).

**Como mudar:** clique esquerdo para avançar ao próximo modo.

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. O controle por redstone só se aplica no lado do Emissor (já que os Emissores dirigem a transferência).

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
- **Rodízio** — alterna pelos Receptores uniformemente. Cada transferência bem-sucedida avança o ponteiro de rotação para o próximo Receptor.

**Como mudar:** clique esquerdo para avançar ao próximo modo.

**Pegadinha:** o ponteiro de rotação do Rodízio **persiste entre tiques**. Ele não reseta entre tiques do jogo — apenas continua avançando. Isso dá uma rotação genuinamente justa ao longo de execuções longas, não um loop reiniciado a cada tique.

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. Distribuição só faz sentido no lado do Emissor.

## Prioridade

![Linha de Prioridade](images/channel-priority.png)

**O que é:** um pequeno inteiro preso a este canal. Faixa: **–99 a +99**.

**O que faz:** usado por um Emissor que tem Distribuição definida como **Prioridade**. O Emissor ordena seus Receptores alvo por este número, o maior primeiro, e os serve nessa ordem. Receptores com prioridade maior recebem recursos antes dos de prioridade menor.

**Como mudar:** clique esquerdo no campo de número para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Pegadinha:** a Prioridade só é consultada quando Distribuição = Prioridade. Sob Mais Próximo/Mais Distante/Rodízio ela é ignorada — o ordenador nunca a lê. Defina Prioridade nos **Receptores** que você quer servidos primeiro, não no Emissor.

## Lote

![Linha de Lote](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida numa operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Item** — número de itens (ex.: Lote 64 = até uma pilha completa por operação).
- **Fluido** — milibaldes (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como mudar:** clique esquerdo no campo de número para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1.

**Pegadinha:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se seu nível de melhoria só permite 500, o motor usa 500. Instale melhorias de nível mais alto para elevar o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. O tamanho do lote é decidido pelo Emissor.

## Atraso

![Linha de Atraso](images/channel-delay.png)

**O que é:** recarga entre operações de transferência neste canal, medida em **tiques**. `20t` significa 20 tiques, que é 1 segundo de tempo real.

**O que faz:** após uma transferência bem-sucedida, o canal espera essa quantidade de tiques antes de tentar de novo. Usado para estrangular canais para que não transfiram em spam a cada tique quando você não precisa.

**Como mudar:** clique esquerdo no campo de número para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tique.

**Pegadinha:** canais de Energia **ignoram o Atraso**. O motor força as transferências de Energia para 1 tique (instantâneo) independentemente do que você colocar aqui. A linha de Atraso fica acinzentada em canais do tipo Energia por essa razão.

**Pegadinha (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desativado em Receptores:** esta linha fica acinzentada quando o Modo é Receptor. O Emissor decide a que velocidade empurra.

---

Toda linha desta página vive apenas no canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
