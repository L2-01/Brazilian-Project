---
navigation:
  title: Configurações de Canal
  parent: nodes/index.md
  position: 2
---

# Configurações de Canal

![Painel completo de configurações de canal — Estado, Modo, Tipo, Lado, Redstone, Distribuição, Prioridade, Lote, Atraso](images/channel-settings-full.png)

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui só afeta o canal que você está vendo.

**Alt + Clique Esquerdo/Direito para definir a quantidade máxima ou mínima das configurações.**

Clique nos botões de número de canal no topo da tela para trocar a qual canal estas configurações se aplicam.

## Estado

![Estado: Ativado](images/channel-status-enabled.png)

![Estado: Desativado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está vivo. Ele é processado a cada tique (sujeito a Atraso, Redstone e assim por diante).
- **Desativado** — o canal é completamente ignorado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como mudar:** clique esquerdo na pílula de valor para alternar entre Ativado e Desativado.

**Pegadinha:** um canal desativado mantém todas as outras configurações (filtros, lote, atraso etc.). Você não está apagando nada — só pausando. Reative para continuar de onde parou.

## Modo

![Modo: Emissor](images/channel-mode-sender.png)

![Modo: Receptor](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Emissor** — puxa recursos **de dentro** do bloco ao qual este nó está anexo. Emissores são os que dirigem as transferências: eles procuram Receptores correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Receptor** — aceita recursos **para dentro** do bloco ao qual este nó está anexo. Receptores são passivos — esperam um Emissor no mesmo número de canal entregar.

**Como mudar:** clique esquerdo na pílula de valor para alternar entre Emissor e Receptor.

**Pegadinha:** uma rede com só Receptores (ou só Emissores) não faz nada. Você precisa de pelo menos um de cada no mesmo número de canal para algo se mover.

## Tipo

![Tipo: Item](images/channel-type-item.png)

![Tipo: Fluido](images/channel-type-fluid.png)

![Tipo: Energia](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco anexo:

- **Itens** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces do AE2 etc.).
- **Fluido** — milibaldes (mB) de um tanque.
- **Energia** — Forge Energy / RF de uma reserva de energia.

**Como mudar:** clique esquerdo na pílula de valor para percorrer os tipos disponíveis.

**Pegadinha:** nem todo bloco suporta todo tipo. Se o bloco não tiver a capacidade correspondente no lado escolhido, o canal silenciosamente não faz nada. Coloque um nó de itens num tanque de fluido e ele não vai transferir — porque o tanque não tem inventário de itens.

Dois tipos extras — Químico (Mekanism) e Fonte (Ars Nouveau) — existem, mas exigem melhorias específicas para destravar. São cobertos na página de Melhorias.

## Lado

![Lado: Cima](images/channel-side-up.png)

![Lado: Todos](images/channel-side-all.png)

**O que é:** qual face do bloco anexo este canal usa para interagir.

**O que faz:** alguns blocos se comportam diferente dependendo de por qual lado você insere ou extrai. Fornalhas são o exemplo clássico: o lado de cima recebe fundíveis, o lado da frente recebe/entrega o item fundido, o lado de baixo só entrega a saída. Lado permite escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — só aquela face. O motor examina o inventário do bloco (ou tanque, ou reserva de energia) naquele lado específico e usa quaisquer espaços que o bloco exponha ali.
- **Todos** — toda face do bloco é fundida num manipulador combinado. O canal vê o bloco como um único conjunto de espaços/tanques/reservas feito do armazenamento exposto por todos os lados. Se duas faces expuserem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todos os lados), a duplicata é removida para você não contar em dobro.

**Como mudar:** clique esquerdo para avançar à próxima face (a ordem vai Cima → Baixo → N → L → S → O → Todos → Cima ...).

**Pegadinha:** em blocos com inventários sensíveis a lados (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de espaços. Escolher **Todos** numa fornalha deixa o canal ver os espaços de entrada, combustível e saída de uma vez, o que normalmente não é o que você quer. Escolha a face específica para os filtros só se aplicarem aos espaços que importam.

## Redstone

![Redstone: Sempre Ligado](images/channel-redstone-always-on.png)

![Redstone: Sempre Desligado](images/channel-redstone-always-off.png)

![Redstone: Sinal Alto](images/channel-redstone-high-signal.png)

![Redstone: Sinal Baixo](images/channel-redstone-low-signal.png)

**O que é:** controle por redstone deste canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco ao qual este nó está anexo** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, o que for). Com base naquele sinal, o canal roda ou é bloqueado:

- **Sempre Ligado** — roda independentemente do sinal.
- **Sempre Desligado** — nunca roda. Mesmo efeito de Estado = Desativado, mas você mantém o canal armado.
- **Sinal Alto** — roda só quando um sinal de redstone está presente (força > 0).
- **Sinal Baixo** — roda só quando não há sinal de redstone (força = 0).

**Como mudar:** clique esquerdo para avançar ao próximo modo.

**Desabilitado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. O bloqueio por redstone só se aplica no lado do Emissor (já que os Emissores dirigem a transferência).

## Distribuição

![Distribuição: Prioridade](images/channel-distribution-priority.png)

![Distribuição: Mais Próximo Primeiro](images/channel-distribution-nearest-first.png)

![Distribuição: Mais Distante Primeiro](images/channel-distribution-farthest-first.png)

![Distribuição: Rodízio](images/channel-distribution-round-robin.png)

**O que é:** como um Emissor escolhe entre vários Receptores correspondentes no mesmo número de canal.

**O que faz:** quando há só um Receptor, esta configuração não faz nada. Quando há vários, decide a ordem em que são atendidos:

- **Prioridade** — ordena pelo valor de **Prioridade** de cada Receptor. Números maiores são atendidos primeiro. Empates são resolvidos em ordem indefinida.
- **Mais Próximo Primeiro** — atende primeiro os Receptores mais próximos do Emissor (por distância em linha reta).
- **Mais Distante Primeiro** — oposto de Mais Próximo Primeiro: atende primeiro o Receptor mais longe.
- **Rodízio** — gira entre os Receptores uniformemente. Cada transferência bem-sucedida avança o ponteiro da rotação para o próximo Receptor.

**Como mudar:** clique esquerdo para avançar ao próximo modo.

**Pegadinha:** o ponteiro de rotação do Rodízio **persiste entre tiques**. Ele não reinicia entre tiques do jogo — só continua avançando. Isso dá uma rotação genuinamente justa em execuções longas, não um laço reiniciado a cada tique.

**Desabilitado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. Distribuição só faz sentido no lado do Emissor.

## Prioridade

![Linha de Prioridade](images/channel-priority.png)

**O que é:** um pequeno inteiro anexado a este canal. Intervalo: **–99 a +99**.

**O que faz:** usado por um Emissor com Distribuição definida como **Prioridade**. O Emissor ordena seus Receptores alvo por este número, o maior primeiro, e os atende nessa ordem. Receptores com prioridade mais alta recebem recursos antes dos de prioridade mais baixa.

**Como mudar:** clique esquerdo no campo numérico para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Pegadinha:** a Prioridade só é consultada quando Distribuição = Prioridade. Em Mais Próximo/Mais Distante/Rodízio ela é ignorada — o ordenador nunca a lê. Defina Prioridade nos **Receptores** que você quer atendidos primeiro, não no Emissor.

## Lote

![Linha de Lote](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida numa operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Itens** — número de itens (ex.: Lote 64 = até uma pilha cheia por operação).
- **Fluido** — milibaldes (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como mudar:** clique esquerdo no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1.

**Pegadinha:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se o seu nível de melhoria só permite 500, o motor usa 500. Instale melhorias de nível maior para subir o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desabilitado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. O tamanho do lote é decidido pelo Emissor.

## Atraso

![Linha de Atraso](images/channel-delay.png)

**O que é:** recarga entre operações de transferência neste canal, medida em **tiques**. `20t` significa 20 tiques, que é 1 segundo de tempo real.

**O que faz:** depois de uma transferência bem-sucedida, o canal espera essa quantidade de tiques antes de tentar de novo. Serve para estrangular canais para que não transfiram em spam a cada tique quando você não precisa.

**Como mudar:** clique esquerdo no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tique.

**Pegadinha:** canais de Energia **ignoram o Atraso**. O motor força transferências de Energia a 1 tique (instantâneas) independentemente do que você puser aqui. A linha de Atraso fica esmaecida em canais do tipo Energia por isso.

**Pegadinha (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desabilitado em Receptores:** esta linha fica esmaecida quando o Modo é Receptor. O Emissor decide a que velocidade ele empurra.

---

Toda linha desta página vale só para o canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
