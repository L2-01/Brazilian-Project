---
navigation:
  title: Colocação em Massa
  parent: wrench/index.md
  position: 3
---

# Modo Colocação em Massa

O modo para montar configurações grandes e repetitivas numa única ação. Você anda por aí marcando blocos, depois abre a tela de colocação e coloca um nó pré-configurado em todo bloco marcado com um clique.

Troque para Colocação em Massa com **Shift + roda do mouse**. A sobreposição do HUD mostra o modo e a contagem atual de seleções.

## Selecionar Blocos

**Clique com o botão direito num bloco** para adicioná-lo ao conjunto de seleção da chave-inglesa. Clique com o botão direito no mesmo bloco de novo para removê-lo.

- As seleções persistem na chave-inglesa até você limpá-las ou colocar, então você pode andar por aí, carregar um novo chunk, voltar — a seleção ainda está lá.
- As seleções são **por dimensão**: blocos que você marca no Overworld são rastreados separadamente dos blocos marcados no Nether, então uma seleção feita numa dimensão não vaza acidentalmente para outra.
- Máximo de **2048 seleções por chave-inglesa**. Além disso, a seleção mais nova é rejeitada.

## Seleção por Preenchimento

**Ctrl + clique direito num bloco** para selecionar todo bloco conectado do **mesmo tipo de bloco** de uma vez. É assim que você ilumina uma fileira longa de fornalhas, uma parede de baús ou uma linha ramificada de máquinas sem clicar em cada um manualmente.

O mesmo limite de 2048 se aplica.

## Menu de Colocação

Depois de ter sua seleção, **clique com o botão direito no ar** (sem bloco na sua frente) para abrir o menu de Colocação em Massa. O menu mostra:

- Total de seleções.
- Seleções válidas (seleções que podem de fato aceitar um nó — blocos que ainda existem, têm armazenamento e não foram construídos por cima).
- Itens necessários — os itens Nó Logístico, mais quaisquer itens de filtro e melhoria que o modelo da área de transferência precisa.

O menu também tem um botão **Posicionar Nós**. Clique nele e a chave-inglesa:

1. Paga os itens necessários do seu inventário.
2. Coloca um nó em toda seleção válida.
3. Aplica o modelo da área de transferência em todo nó recém-colocado — mesmos canais, filtros, melhorias, rótulo e rede do modelo.

Seleções inválidas são puladas sem custo; seleções válidas que falham no meio da execução (inventário acabou, chunk descarregou, etc.) são reportadas para você saber exatamente quantas foram colocadas.

## Sincronia de Modelo + Rótulo

Todo nó colocado numa execução de Colocação em Massa herda o modelo da área de transferência **incluindo seu rótulo**. Isso significa que o lote inteiro já aterrissa no mesmo grupo de rótulo — sem necessidade de configuração posterior.

Fluxo de trabalho típico:

1. Monte um modelo no [Editor da Área de Transferência](copy-paste.md#clipboard-editor) (ou copie de um nó funcional).
2. Dê ao modelo um rótulo como `furnace_row`.
3. Troque para Colocação em Massa, selecione todo bloco alvo.
4. Abra o menu e clique em Posicionar Nós.

Todo nó que surge já tem nove canais configurados, os filtros certos, as melhorias certas e o rótulo compartilhado. Edições futuras em qualquer um deles se propagam para todos os outros automaticamente.

## Bom Saber

- Colocação em Massa não faz nada sem um modelo na área de transferência. Se a chave-inglesa estiver vazia, o botão Posicionar Nós do menu fica desativado. Copie algo primeiro.
- Limpando seleções: o botão **Clear Selection** dentro do menu apaga todo o conjunto de seleções sem colocar nada.
- Você não precisa colocar tudo de uma vez — feche o menu e continue coletando mais seleções; a chave-inglesa lembra a lista.
