---
navigation:
  title: Configurações de Canal
  parent: nodes/index.md
  position: 2
---

# Configurações de Canal

Este painel controla o canal que você selecionou no [Cabeçalho](header.md). Todo nó tem 9 canais e cada um tem sua própria cópia independente de todas as configurações abaixo — mudar uma configuração aqui só afeta o canal que você está olhando.

Segure a **Tecla Modificadora 3 (padrão: Alt)** e use a **Interação Primária (padrão: Botão Esquerdo)** para definir uma configuração no seu valor máximo, ou a **Interação Secundária (padrão: Botão Direito)** para defini-la no mínimo.

Use a Interação Primária nos botões de número de canal no topo da tela para trocar a qual canal estas configurações se aplicam.

## Estado

![Estado: Ativado](images/channel-status-enabled.png)

![Estado: Desativado](images/channel-status-disabled.png)

**O que é:** interruptor liga/desliga do canal.

**O que faz:**

- **Ativado** — o canal está vivo. Ele é processado a cada tique (sujeito a Atraso, Redstone e assim por diante).
- **Desativado** — o canal é completamente ignorado pelo motor de transferência. Sem extração, sem inserção, sem verificação de redstone. Nada.

**Como mudar:** use a Interação Primária no selo de valor para alternar entre Ativado e Desativado.

**Pegadinha:** um canal desativado mantém todas as outras configurações (filtros, lote, atraso etc.). Você não está apagando nada — só pausando. Reative para continuar de onde parou.

## Modo

![Modo: Remetente](images/channel-mode-sender.png)

![Modo: Destinatário](images/channel-mode-receiver.png)

**O que é:** a direção da transferência deste canal.

**O que faz:**

- **Remetente** — puxa recursos **de dentro** do bloco em que este nó está preso. Os Remetentes são quem conduz as transferências: eles procuram Destinatários correspondentes no mesmo número de canal pela rede e empurram recursos para eles.
- **Destinatário** — aceita recursos **para dentro** do bloco em que este nó está preso. Os Destinatários são passivos — esperam um Remetente no mesmo número de canal entregar.

**Como mudar:** use a Interação Primária no selo de valor para alternar entre Remetente e Destinatário.

**Pegadinha:** uma rede só com Destinatários (ou só com Remetentes) não faz nada. Você precisa de pelo menos um de cada no mesmo número de canal para qualquer coisa se mover.

## Tipo

![Tipo: Item](images/channel-type-item.png)

![Tipo: Fluido](images/channel-type-fluid.png)

![Tipo: Energia](images/channel-type-energy.png)

**O que é:** o tipo de recurso que este canal move.

**O que faz:** diz ao motor qual capacidade procurar no bloco preso:

- **Item** — pilhas de itens de um inventário (baús, fornalhas, funis, interfaces do AE2, interfaces do Refined Storage etc.).
- **Fluido** — milibaldes (mB) de um tanque.
- **Energia** — Forge Energy / RF de um armazenamento de energia.

**Como mudar:** use a Interação Primária no selo de valor para percorrer os tipos disponíveis.

**Pegadinha:** nem todo bloco aceita todo tipo. Se o bloco não tiver a capacidade correspondente no lado escolhido, o canal silenciosamente não faz nada. Ponha um nó de item num tanque de fluido e ele não transfere — porque o tanque não tem inventário de itens.

### Interfaces do AE2 e do Refined Storage

Nós com uma [Melhoria de Rede](upgrades-special.md) em Interfaces do Applied Energistics 2 e do Refined Storage transferem itens e fluidos diretamente pela rede de armazenamento conectada. Sem a melhoria, a Interface é tratada como qualquer inventário: o nó só vê os itens e tanques estocados na própria Interface. Os recursos de exportação configurados da Interface decidem o que um Remetente pode puxar, incluindo sua configuração nativa de fuzzy, mas a quantidade configurada não limita o lote da Logistics. Os Destinatários podem inserir qualquer recurso aceito pelos filtros do canal Logistics deles.

Para Remetentes de item, o caminho direto puxa primeiro da rede de armazenamento, depois usa itens estocados naquela Interface para preencher o lote restante. Itens só de reserva ficam disponíveis para transferências posteriores, permitindo que a Interface esvazie. Transferências diretas de fluido ainda ignoram tanques expostos. Adicionar um mapeamento de slot explícito da Logistics faz aquele canal de item voltar ao inventário exposto da Interface. Uma rede de armazenamento desconectada ou inativa espera sem usar a reserva da Interface, e transferências diretas nunca pedem autocriação.

A integração de Produto Químico (Mekanism) e de Fonte (Ars Nouveau) é mantida para compatibilidade futura e está indisponível no momento.

## Lado

![Lado: Cima](images/channel-side-up.png)

![Lado: Todos](images/channel-side-all.png)

**O que é:** qual face do bloco preso este canal usa para interagir.

**O que faz:** alguns blocos se comportam diferente dependendo de qual lado você insere ou extrai. As fornalhas são o exemplo clássico: o lado de cima aceita combustível, o lado da frente aceita/dá o item fundido, o lado de baixo só dá saída. O Lado deixa você escolher exatamente qual face usar.

- **Cima / Baixo / Norte / Leste / Sul / Oeste** — só aquela face. O motor sonda o inventário do bloco (ou tanque, ou armazenamento de energia) naquele lado específico e usa quaisquer slots que o bloco expõe ali.
- **Todos** — todas as faces do bloco são fundidas num único manipulador combinado. O canal vê o bloco como uma única piscina de slots/tanques/armazenamentos feita do armazenamento exposto de todos os lados. Se duas faces expuserem exatamente o mesmo manipulador (comum — a maioria dos blocos expõe um inventário em todos os lados), a duplicata é removida para não contar em dobro.

**Como mudar:** use a Interação Primária para avançar para a próxima face (a ordem vai Cima → Baixo → N → L → S → O → Todos → Cima ...).

**Pegadinha:** em blocos com inventários sensíveis a lado (fornalhas, suportes de poções, algumas máquinas), cada face expõe um conjunto *diferente* de slots. Escolher **Todos** numa fornalha deixa o canal ver os slots de entrada, combustível e saída de uma vez, o que normalmente não é o que você quer. Escolha a face específica para os filtros só valerem nos slots que importam.

## Redstone

![Redstone: Sinal Alto](images/channel-redstone-high-signal.png)

![Redstone: Sinal Baixo](images/channel-redstone-low-signal.png)

**O que é:** controle por redstone deste canal.

**O que faz:** o motor verifica o sinal de redstone **no bloco em que este nó está preso** (de qualquer vizinho — alavanca, tocha de redstone, pó, comparador, o que for). Com base nesse sinal, o canal roda ou é bloqueado:

- **Ignorado** (padrão) — roda independente de redstone. O sinal não é verificado.
- **Sinal Alto** — roda só quando há sinal de redstone (força > 0).
- **Sinal Baixo** — roda só quando não há sinal de redstone (força = 0).

**Como mudar:** use a Interação Primária para avançar para o próximo modo.

O controle por redstone se aplica tanto a Remetentes quanto a Destinatários.

## Distribuição

![Distribuição: Prioridade](images/channel-distribution-priority.png)

![Distribuição: Mais Próximo Primeiro](images/channel-distribution-nearest-first.png)

![Distribuição: Mais Distante Primeiro](images/channel-distribution-farthest-first.png)

![Distribuição: Distribuição Igual](images/channel-distribution-round-robin.png)

**O que é:** como um Remetente escolhe entre vários Destinatários correspondentes no mesmo número de canal.

**O que faz:** quando há só um Destinatário, esta configuração não faz nada. Quando há vários, decide a ordem em que são atendidos:

- **Prioridade** — ordena pelo valor de **Prioridade** de cada Destinatário. Números maiores são atendidos primeiro. Empates são resolvidos sem ordem específica.
- **Mais Próximo Primeiro** — atende primeiro os Destinatários mais próximos do Remetente (por distância em linha reta).
- **Mais Distante Primeiro** — o oposto de Mais Próximo Primeiro: atende primeiro o Destinatário mais distante.
- **Distribuição Igual** — divide o lote de itens de cada operação o mais igualmente possível entre os Destinatários correspondentes. Por exemplo, um lote de 8 itens comuns enviado a dois Destinatários vazios é dividido 4 e 4.
- **Prioridade Rotativa** — cada operação vai para um Destinatário, depois o próximo. Os Destinatários são visitados da maior para a menor **Prioridade**, e o ciclo repete. Um Destinatário cheio é pulado.

**Como mudar:** use a Interação Primária para avançar para o próximo modo.

**Pegadinha:** a Distribuição Igual não mantém um ponteiro de rotação, e as partes não usadas fluem para Destinatários com espaço. Ela só divide lotes de itens; em canais de fluido e energia se comporta como **Prioridade**.

**Pegadinha:** a posição da Prioridade Rotativa volta ao Destinatário de maior prioridade quando o mundo ou o chunk do Remetente recarrega. Se o Destinatário escolhido aceitar só parte de um lote, o resto espera a próxima operação. Funciona em todo tipo de canal.

**Desativado em Destinatários:** esta linha fica acinzentada quando o Modo é Destinatário. A Distribuição só faz sentido no lado do Remetente.

## Prioridade

![Linha de Prioridade](images/channel-priority.png)

**O que é:** um pequeno inteiro preso a este canal. Faixa: **–99 a +99**.

**O que faz:** o Remetente ordena seus Destinatários-alvo por este número, do maior primeiro. Em **Prioridade**, Destinatários de prioridade maior recebem recursos antes dos destinatários de menor prioridade. Os itens são lidos dos slots de origem em ordem, então um lote espalhado por slots de origem pode encher o primeiro Destinatário com os slots anteriores antes de mover o resto para o próximo Destinatário. Em **Prioridade Rotativa**, define a ordem em que os Destinatários se revezam.

**Como mudar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite um número entre –99 e 99 e pressione Enter.

**Pegadinha:** a Prioridade define a ordem de atendimento em Prioridade, Prioridade Rotativa e Distribuição Igual em canais que não são de item. Em Mais Próximo/Mais Distante ela é ignorada — o ordenador nunca a lê. Defina a Prioridade nos **Destinatários** que você quer atendidos primeiro, não no Remetente.

## Lote

![Linha de Lote](images/channel-batch.png)

**O que é:** a quantidade máxima de recurso movida numa única operação de transferência.

**O que faz:** limita uma única tentativa de transferência. As unidades dependem do Tipo:

- **Item** — número de itens (ex.: Lote 64 = até uma pilha cheia por operação).
- **Fluido** — milibaldes (ex.: Lote 1000 = até 1 balde por operação).
- **Energia** — Forge Energy / RF por operação.

**Como mudar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1. A caixa também aceita matemática simples com `+ - * /` e parênteses, então `64*7` salva como 448. Prioridade e Atraso funcionam do mesmo jeito.

**Pegadinha:** o Lote é limitado pelas melhorias instaladas no nó. Você pode digitar 10.000, mas se o seu nível de melhoria só permite 500, o motor usa 500. Instale melhorias de nível maior para subir o teto — veja [Melhorias de Desempenho](upgrades-performance.md).

**Desativado em Destinatários:** esta linha fica acinzentada quando o Modo é Destinatário. O tamanho do lote é decidido pelo Remetente.

## Atraso

![Linha de Atraso](images/channel-delay.png)

**O que é:** recarga entre operações de transferência neste canal, medida em **tiques**. `20t` significa 20 tiques, que é 1 segundo de tempo real.

**O que faz:** após uma transferência bem-sucedida, o canal espera esses tiques antes de tentar de novo. Usado para estrangular canais para que não transfiram a todo tique quando você não precisa.

**Como mudar:** use a Interação Primária no campo numérico para abrir uma caixa de texto, digite o novo valor e pressione Enter. O mínimo é 1 tique.

**Pegadinha:** canais de Energia **ignoram o Atraso**. O motor força transferências de Energia a 1 tique (instantâneas) independente do que você puser aqui. A linha de Atraso fica acinzentada em canais do tipo Energia por isso.

**Pegadinha (melhorias):** o Atraso também é limitado pelo atraso mínimo do seu nível de melhoria. Você pode digitar 1, mas se suas melhorias só permitem 10, o motor usa 10. Melhorias melhores significam um piso menor.

**Desativado em Destinatários:** esta linha fica acinzentada quando o Modo é Destinatário. O Remetente decide a que velocidade empurra.

---

Cada linha desta página só vale no canal atualmente selecionado. Troque de canal no [Cabeçalho](header.md), ou configure filtros e melhorias compartilhados em [Filtros e Melhorias](filters-upgrades.md).
