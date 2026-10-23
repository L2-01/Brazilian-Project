---
navigation:
  title: Rebolo Manual
  position: 1
item_ids:
  - horsepowered:hand_grindstone
---

# Rebolo Manual

O Rebolo Manual é um bloco de processamento manual que permite moer itens à mão. Uma ótima opção de início de jogo, antes de ter cavalos para a automação.

<Row>
<ItemImage id="horsepowered:hand_grindstone" scale="4" />
</Row>

## Uso

1. Coloque o Rebolo Manual.
2. Clique com o botão direito com um item para inseri-lo no slot de entrada.
3. Clique com o botão direito com a mão vazia para girar o rebolo. Cada giro toca um som de moagem e gira o item sobre a pedra.
4. O rebolo processa o item ao longo de vários giros. A saída aparece na superfície de moagem ao lado da entrada.
5. Clique com o botão direito com a mão vazia na saída para coletá-la.
6. Agache + clique direito para retirar a entrada ainda não moída.

## Lados de Exibição e Coleta

Os itens renderizados na superfície do rebolo se alinham com o lado que os recolhe, conforme a direção em que o bloco foi colocado:

- **Topo (girando)**: a entrada, processada a cada giro
- **Lado esquerdo do jogador**: o slot de entrada; agache + clique direito aqui para retirar a entrada não processada
- **Lado direito do jogador**: a saída principal; clique direito aqui para coletar
- **Frente (lado do jogador)**: a saída secundária (quando a receita produz uma)

## Receita

<RecipeFor id="horsepowered:hand_grindstone" />

## Custo de Fome

Cada giro custa uma pequena quantidade básica de fome (configurável). Algumas receitas também adicionam um custo extra de fome sobre o valor base, e só o Rebolo Manual paga esse custo. O Rebolo de Cavalo o ignora. O JEI mostra uma linha "Hunger" nas receitas que o têm, então você identifica as caras de relance.

## Observações

- Vários itens podem ser inseridos para processamento em lote.
- Funciona com as mesmas receitas do Rebolo de Cavalo, exceto quando a receita está marcada como exclusiva de cavalo.
- As receitas de moagem disponíveis podem ser vistas no JEI/EMI.
