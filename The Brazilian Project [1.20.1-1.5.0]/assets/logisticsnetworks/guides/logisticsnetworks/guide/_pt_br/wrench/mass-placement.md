---
navigation:
  title: Posicionamento em Massa
  parent: wrench/index.md
  position: 3
---

# Modo Posicionamento em Massa

O modo para construir configurações grandes e repetitivas numa única ação. Você anda por aí marcando blocos, depois abre a tela de posicionamento e coloca um nó pré-configurado em todo bloco marcado com um clique.

Troque para Posicionamento em Massa com **Shift + roda do mouse**. A sobreposição do HUD mostra o modo e a contagem de seleção atual.

## Selecionar Blocos

**Clique com o botão direito num bloco** para adicioná-lo ao conjunto de seleção da chave. Clique com o botão direito no mesmo bloco de novo para removê-lo.

- As seleções persistem na chave até você limpá-las ou posicionar, então pode andar por aí, carregar um chunk novo, voltar — a seleção continua lá.
- As seleções são **por dimensão**: blocos que você marca na Superfície são rastreados separadamente dos marcados no Nether, então uma seleção feita numa dimensão não vaza acidentalmente para outra.
- Máximo de **2048 seleções por chave**. Além disso, a seleção mais nova é rejeitada.

## Seleção por Preenchimento em Varredura

**Ctrl + botão direito num bloco** para selecionar todo bloco conectado do **mesmo tipo de bloco** de uma vez. É assim que você ilumina uma fileira longa de fornalhas, uma parede de baús de armazenamento ou uma linha ramificada de máquinas sem clicar uma a uma.

O mesmo teto de 2048 se aplica.

## Menu de Posicionamento

Quando tiver sua seleção, **clique com o botão direito no ar** (sem bloco à sua frente) para abrir o menu de Posicionamento em Massa. O menu mostra:

- Total de seleções.
- Seleções válidas (seleções que realmente podem aceitar um nó — blocos que ainda existem, têm armazenamento e não foram construídos por cima).
- Itens necessários — os itens de Nó Logístico, mais quaisquer itens de filtro e melhoria que o modelo da área de transferência precisa.

O menu também tem um botão **Posicionar Nós**. Clique nele e a chave:

1. Paga os itens necessários do seu inventário.
2. Coloca um nó em toda seleção válida.
3. Aplica o modelo da área de transferência a todo nó recém-colocado — mesmos canais, filtros, melhorias, rótulo e rede do modelo.

Seleções inválidas são ignoradas sem custo; seleções válidas que falham no meio da execução (inventário acabou, chunk descarregado etc.) são informadas para você saber exatamente quantas foram posicionadas.

## Sincronia de Modelo + Rótulo

Todo nó colocado numa execução de Posicionamento em Massa herda o modelo da área de transferência **incluindo seu rótulo**. Isso significa que o lote inteiro já nasce no mesmo grupo de rótulo — sem configuração posterior necessária.

Fluxo típico:

1. Monte um modelo no [Editor da Área de Transferência](copy-paste.md#clipboard-editor) (ou copie de um nó funcional).
2. Dê ao modelo um rótulo como `furnace_row`.
3. Troque para Posicionamento em Massa, selecione todo bloco alvo.
4. Abra o menu e clique em Posicionar Nós.

Todo nó que surge já tem nove canais configurados, os filtros certos, as melhorias certas e o rótulo compartilhado. Edições futuras em qualquer um deles se propagam para todos os outros automaticamente.

## Bom Saber

- O Posicionamento em Massa não faz nada sem um modelo na área de transferência. Se a chave estiver vazia, o botão Posicionar Nós do menu fica desabilitado. Copie algo primeiro.
- Limpando seleções: o botão **Limpar Seleção** dentro do menu apaga todo o conjunto de seleção sem posicionar nada.
- Você não precisa posicionar tudo de uma vez — feche o menu e continue coletando seleções; a chave lembra a lista.
