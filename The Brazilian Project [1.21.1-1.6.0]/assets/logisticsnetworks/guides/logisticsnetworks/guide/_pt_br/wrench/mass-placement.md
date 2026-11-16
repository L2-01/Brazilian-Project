---
navigation:
  title: Colocação em Massa
  parent: wrench/index.md
  position: 3
---

# Modo Colocação em Massa

O modo para montar grandes configurações repetitivas em uma única ação. Você marca uma área retangular com dois cantos, escolhe qual tipo de bloco dentro da área deve receber nós e coloca nós configurados em todo bloco correspondente válido.

Troque para Colocação em Massa com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. A sobreposição do HUD mostra o modo atual da chave.

## Selecionar uma Área

Use a **Interação Secundária (padrão: Botão Direito)** em um bloco para definir o primeiro canto, depois em outro bloco para definir o segundo canto. A chave desenha uma borda cuboide verde ao redor da área selecionada para você ver exatamente o que será examinado.

- A área selecionada fica gravada na chave até você limpá-la ou colocar nós.
- Seleções são **por dimensão**: uma área selecionada na Superfície não vale no Nether.
- A área selecionada pode conter até **10.000 blocos**.
- Começar uma área nova é simples: use a Interação Secundária de novo depois de definir os dois cantos, e aquela interação vira o novo primeiro canto.

## Abrir o Menu de Colocação

Abra o menu de Colocação em Massa com a **Tecla Modificadora 1 + Interação Secundária**. Funciona em blocos e no ar, então você não precisa mirar para longe da sua construção.

Com dois cantos selecionados, o menu lista os tipos de bloco dentro da área que podem aceitar um nó. Escolha o tipo de bloco desejado, como baús, barris, fornalhas ou máquinas. Blocos sem capacidade de item, fluido, energia, químico ou fonte não são mostrados.

Apenas o tipo de bloco escolhido recebe nós. Outros blocos dentro do cuboide verde são ignorados.

## Limites de Colocação

A área pode ser grande, mas uma única rodada de colocação cria no máximo **2048 nós**. Se existirem mais de 2048 blocos com capacidade correspondente, a contagem no menu mostra o limite e a colocação para em 2048.

O menu mostra:

- Tamanho da área selecionada.
- Nós necessários para o bloco alvo escolhido.
- Itens de Nó Logístico necessários.
- Filtros e melhorias exigidos pelo modelo da área de transferência.
- Se a colocação pode rodar agora.

## Colocar Nós

Use a **Interação Primária (padrão: Botão Esquerdo)** em **Colocar Nós** e a chave:

1. Paga os itens necessários do seu inventário ou da rede vinculada do AE2 ou do Refined Storage.
2. Coloca um nó em todo bloco alvo correspondente válido, até 2048 nós.
3. Aplica o modelo da área de transferência a cada nó recém-colocado: canais, filtros, melhorias, rótulo e rede.

Se um bloco alvo selecionado mudar antes da colocação, o menu o verifica de novo. Blocos inválidos são ignorados e nenhum item de nó é consumido por eles.

Se faltarem itens necessários, um backend vinculado pode autofabricá-los. O pedido reserva primeiro itens do inventário e da rede existentes, devolve-os se a colocação se tornar inválida e mantém a chave vinculada à sua rede original durante todo o pedido.

## Modelo + Sincronia de Rótulo

Todo nó colocado numa rodada de Colocação em Massa herda o modelo da área de transferência **incluindo seu rótulo**. Isso significa que todo o lote já cai no mesmo grupo de rótulo, sem precisar de configuração posterior.

Fluxo de trabalho típico:

1. Monte um modelo no [Editor da Área de Transferência](copy-paste.md#clipboard-editor) ou copie de um nó funcional.
2. Dê ao modelo um rótulo como `furnace_row`.
3. Troque para Colocação em Massa e use a Interação Secundária em dois cantos ao redor da área de construção.
4. Use a Tecla Modificadora 1 + Interação Secundária para abrir o menu.
5. Escolha o tipo de bloco alvo.
6. Use a Interação Primária em **Colocar Nós**.

Todo nó que aparece já tem nove canais configurados, os filtros certos, as melhorias certas e o rótulo compartilhado. Edições futuras em qualquer um deles se propagam para todos os outros automaticamente.

## Bom Saber

- A Colocação em Massa pode colocar nós vazios sem um modelo na área de transferência, mas são os modelos copiados que a tornam útil.
- O botão **Limpar** dentro do menu apaga a área selecionada e o bloco alvo sem colocar nada.
- A escolha do bloco alvo é recalculada a partir do mundo atual quando o menu abre, então blocos quebrados ou substituídos são tratados antes da colocação.
