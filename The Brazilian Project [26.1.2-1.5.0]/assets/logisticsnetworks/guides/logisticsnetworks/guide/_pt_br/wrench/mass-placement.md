---
navigation:
  title: Posicionamento em Massa
  parent: wrench/index.md
  position: 3
---

# Modo Posicionamento em Massa

O modo para montar setups grandes e repetitivos numa ação. Você marca uma área retangular com dois cantos, escolhe qual tipo de bloco dentro daquela área deve receber nós, e então posiciona nós configurados em cada bloco correspondente válido.

Mude para Posicionamento em Massa com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. O HUD de sobreposição mostra o modo atual da chave.

## Selecionar uma área

Use **Interação Secundária (padrão: Clique Direito)** num bloco para definir o primeiro canto, e depois noutro bloco para definir o segundo canto. A chave desenha uma borda cuboide verde ao redor da área selecionada para você ver exatamente o que será examinado.

- A área selecionada fica guardada na chave até você limpá-la ou posicionar nós.
- As seleções são **por dimensão**: uma área selecionada na Superfície não se aplica no Nether.
- A área selecionada pode conter até **10.000 blocos**.
- Começar uma nova área é simples: use Interação Secundária de novo depois de definir os dois cantos, e aquela interação vira o novo primeiro canto.

## Abrir o Menu de Posicionamento

Abra o menu de Posicionamento em Massa com **Tecla Modificadora 1 + Interação Secundária**. Funciona em blocos e no ar, então você não precisa mirar para longe da sua construção.

Com os dois cantos selecionados, o menu lista os tipos de bloco dentro da área que podem aceitar um nó. Escolha o tipo de bloco desejado, como baús, barris, fornalhas ou máquinas. Blocos sem capacidade de item, fluido ou energia não são mostrados.

Só o tipo de bloco escolhido recebe nós. Os outros blocos dentro do cuboide verde são ignorados.

## Limites de posicionamento

A área pode ser grande, mas uma única rodada de posicionamento cria no máximo **2048 nós**. Se existirem mais de 2048 blocos com capacidade correspondentes, a contagem do menu mostra o teto e o posicionamento para em 2048.

O menu mostra:

- Tamanho da área selecionada.
- Nós necessários para o bloco alvo escolhido.
- Itens de Nó Logístico necessários.
- Filtros e melhorias necessários do modelo da área de transferência.
- Se o posicionamento pode rodar agora.

## Posicionar nós

Use **Interação Primária (padrão: Clique Esquerdo)** em **Posicionar Nós** e a chave:

1. Paga os itens necessários do seu inventário ou da rede de AE2 ou Refined Storage vinculada.
2. Posiciona um nó em cada bloco alvo correspondente válido, até 2048 nós.
3. Aplica o modelo da área de transferência a cada nó recém-posicionado: canais, filtros, melhorias, rótulo e rede.

Se um bloco alvo selecionado mudar antes do posicionamento, o menu o verifica de novo. Blocos inválidos são pulados e nenhum item de nó é consumido por eles.

Se faltarem itens necessários, um backend vinculado pode autofabricá-los. O pedido reserva primeiro os itens do inventário e da rede existentes, devolve-os se o posicionamento virar inválido, e mantém a chave vinculada à sua rede original durante todo o pedido.

## Sincronia de modelo + rótulo

Todo nó posicionado numa rodada de Posicionamento em Massa herda o modelo da área de transferência **incluindo seu rótulo**. Isso significa que o lote inteiro já chega no mesmo grupo de rótulo, sem pós-configuração necessária.

Fluxo de trabalho típico:

1. Monte um modelo no [Editor da Área de Transferência](copy-paste.md#clipboard-editor) ou copie de um nó funcional.
2. Dê ao modelo um rótulo como `furnace_row`.
3. Mude para Posicionamento em Massa e use Interação Secundária em dois cantos ao redor da área da construção.
4. Use Tecla Modificadora 1 + Interação Secundária para abrir o menu.
5. Escolha o tipo de bloco alvo.
6. Use Interação Primária em **Posicionar Nós**.

Todo nó que aparece já tem nove canais configurados, os filtros certos, as melhorias certas e o rótulo compartilhado. Edições futuras em qualquer um deles propagam automaticamente para todos os outros.

## Bom saber

- O Posicionamento em Massa pode posicionar nós vazios sem um modelo de área de transferência, mas são os modelos copiados que o tornam útil.
- O botão **Limpar** no menu apaga a área selecionada e o bloco alvo sem posicionar nada.
- A escolha do bloco alvo é recalculada a partir do mundo atual quando o menu abre, então blocos quebrados ou substituídos são tratados antes do posicionamento.
