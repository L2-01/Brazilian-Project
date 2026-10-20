---
navigation:
  title: Colocação em Massa
  parent: wrench/index.md
  position: 3
---

# Modo Colocação em Massa

O modo para montar ajustes grandes e repetitivos numa ação só. Você marca uma área retangular com dois cantos, escolhe qual tipo de bloco dentro dela deve receber nós e então coloca nós configurados em cada bloco correspondente válido.

Mude para Colocação em Massa com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. A sobreposição da interface mostra o modo atual da chave.

## Selecionar uma Área

Use a **Interação Secundária (padrão: Botão Direito)** num bloco para definir o primeiro canto, e depois noutro bloco para definir o segundo canto. A chave desenha uma borda de cuboide verde ao redor da área selecionada para você ver exatamente o que será varrido.

- A área selecionada fica guardada na chave até você limpá-la ou colocar nós.
- As seleções são **por dimensão**: uma área selecionada no Overworld não vale no Nether.
- A área selecionada pode conter até **10.000 blocos**.
- Começar uma área nova é simples: use a Interação Secundária de novo depois de definir os dois cantos, e aquela interação vira o novo primeiro canto.

## Abrir o Menu de Colocação

Abra o menu de Colocação em Massa com **Tecla Modificadora 1 + Interação Secundária**. Funciona em blocos e no ar, então você não precisa mirar para longe da sua construção.

Com os dois cantos selecionados, o menu lista os tipos de bloco dentro da área que podem receber um nó. Escolha o tipo que você quer, como baús, barris, fornalhas ou máquinas. Blocos sem capacidade de item, fluido ou energia não aparecem.

Só o tipo de bloco escolhido recebe nós. Os outros blocos dentro do cuboide verde são ignorados.

## Limites de Colocação

A área pode ser grande, mas uma única rodada de colocação cria no máximo **2.048 nós**. Se houver mais de 2.048 blocos com capacidade correspondentes, a contagem do menu mostra o teto e a colocação para em 2.048.

O menu mostra:

- Tamanho da área selecionada.
- Nós necessários para o bloco-alvo escolhido.
- Itens de Nó de Logística necessários.
- Filtros e melhorias necessários do template da área de transferência.
- Se a colocação pode rodar no momento.

## Colocar Nós

Use a **Interação Primária (padrão: Botão Esquerdo)** em **Colocar Nós** e a chave:

1. Paga os itens necessários do seu inventário ou da rede vinculada do AE2 ou Refined Storage.
2. Coloca um nó em cada bloco-alvo correspondente válido, até 2.048 nós.
3. Aplica o template da área de transferência a cada nó recém-colocado: canais, filtros, melhorias, rótulo e rede.

Se um bloco-alvo selecionado mudar antes da colocação, o menu o verifica de novo. Blocos inválidos são pulados e nenhum item de nó é consumido por eles.

Se faltarem itens necessários, um backend vinculado pode autocriá-los. O pedido primeiro reserva itens do inventário e da rede existentes, devolve-os se a colocação se tornar inválida e mantém a chave vinculada à sua rede original durante todo o pedido.

## Sincronia de Template + Rótulo

Todo nó colocado numa rodada de Colocação em Massa herda o template da área de transferência **incluindo seu rótulo**. Isso significa que o lote inteiro já nasce no mesmo grupo de rótulo, sem precisar de configuração posterior.

Fluxo de trabalho típico:

1. Monte um template no [Editor de Área de Transferência](copy-paste.md#clipboard-editor) ou copie de um nó funcional.
2. Dê ao template um rótulo como `furnace_row`.
3. Mude para Colocação em Massa e use a Interação Secundária nos dois cantos ao redor da área da construção.
4. Use Tecla Modificadora 1 + Interação Secundária para abrir o menu.
5. Escolha o tipo de bloco-alvo.
6. Use a Interação Primária em **Colocar Nós**.

Todo nó que aparece já tem nove canais configurados, os filtros certos, as melhorias certas e o rótulo compartilhado. Edições futuras em qualquer um deles se propagam a todos os outros automaticamente.

## Bom Saber

- A Colocação em Massa pode colocar nós vazios sem template na área de transferência, mas são os templates copiados que a tornam útil.
- O botão **Limpar** no menu apaga a área selecionada e o bloco-alvo sem colocar nada.
- A escolha do bloco-alvo é recalculada do mundo atual quando o menu abre, então blocos quebrados ou substituídos são tratados antes da colocação.
