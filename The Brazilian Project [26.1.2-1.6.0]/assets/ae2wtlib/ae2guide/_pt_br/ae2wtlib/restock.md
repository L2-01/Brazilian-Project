---
navigation:
  parent: ae2wtlib/ae2wtlib-index.md
  title: Restocking
  position: 110
categories:
- ae2wtlib
---

# Reabastecimento

Se o Reabastecimento estiver ativado, seu <ItemLink id="ae2:wireless_crafting_terminal" /> tentará repor os itens que você usar com itens do Sistema ME.

Você pode ativá-lo na GUI ou usando uma Tecla de Atalho.

Quando ativado, ele tentará manter a Pilha que você está usando no tamanho máximo da pilha, ou seja, 64 para a maioria dos itens.
Ele pegará quaisquer itens faltantes do seu Sistema ME,
ou colocará itens excedentes no seu Sistema ME se você coletar a mais.
Isso significa que, se você colocar alguns itens e depois quebrá-los de novo, o item não transbordará para um espaço diferente,
mesmo que você não tenha um <ItemLink id="ae2wtlib:magnet_card" /> ativo.

Ele **NÃO** reabastece pilhas contendo um único item antes de serem usadas.

Ele também muda a contagem de itens na sua barra de acesso,
para mostrar a contagem de itens na rede (+ os itens que realmente estão na sua barra de acesso).

Ele só funciona enquanto você estiver no alcance de um ponto de acesso,
ou se o seu terminal estiver [vinculado por quântica](quantum_bridge_card.md).

No modo criativo, isso é desativado automaticamente, já que você não está gastando itens mesmo.

O Reabastecimento funciona para a maioria das ações, como colocar blocos, comer comida e atirar com arco,
mas outras ações (especialmente ações de outros mods) podem não ser reconhecidas e os itens usados não serão reabastecidos.
