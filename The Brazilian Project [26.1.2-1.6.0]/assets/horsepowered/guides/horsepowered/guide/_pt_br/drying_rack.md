---
navigation:
  title: Varal de Secagem
  position: 6
item_ids:
  - horsepowered:drying_rack
---

# Varal de Secagem

O Varal de Secagem é um varal de madeira passivo que converte lentamente itens molhados ou crus numa forma seca. Ele comporta **8 itens de uma vez** numa grade 4x2 disposta sobre as ripas, e cada slot avança seu próprio temporizador de progresso de forma independente, então você pode carregar o varal um slot por vez sem zerar o progresso dos outros.

<Row>
<ItemImage id="horsepowered:drying_rack" scale="4" />
</Row>

## Uso

1. Coloque o Varal de Secagem no chão (pode virar para qualquer direção).
2. **Clique com o botão direito** com um item de entrada na mão para colocá-lo no slot clicado. Apenas um item por slot.
3. Aguarde o tempo de secagem da receita passar. O item do slot é substituído pela saída seca ao concluir.
4. **Clique com o botão direito com a mão vazia** num slot cheio para pegar o item de volta. Funciona tanto para itens secando quanto para saídas prontas.

## Automação

Funis e canos podem interagir com o varal por qualquer lado:

- **Inserção**: só itens com receita de secagem registrada são aceitos. Um item por slot vazio.
- **Extração**: só itens **concluídos** podem ser retirados. Itens ainda secando ficam travados.

Um fluxo completo é possível: funil acima alimentando a entrada crua, funil abaixo puxando a saída pronta.

## Receita

<RecipeFor id="horsepowered:drying_rack" />

## Observações

- O varal não exige energia, combustível nem trabalhador. A secagem acontece passivamente com o tempo.
- Itens com progresso parcial sobrevivem a um recarregamento de chunk.
- As receitas de secagem disponíveis podem ser vistas no JEI/EMI.
