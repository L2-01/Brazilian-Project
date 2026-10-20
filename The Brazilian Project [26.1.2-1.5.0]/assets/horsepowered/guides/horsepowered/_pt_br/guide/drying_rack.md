---
navigation:
  title: Varal de Secagem
  position: 6
item_ids:
  - horsepowered:drying_rack
---

# Varal de Secagem

O Varal de Secagem é um suporte de madeira passivo que converte lentamente itens úmidos ou crus numa forma seca. Ele comporta **8 itens de uma vez** numa grade 4x2 distribuída pelas ripas, e cada espaço avança seu próprio temporizador de progresso independentemente, então você pode carregar o varal um espaço por vez sem zerar o progresso dos outros.

<Row>
<ItemImage id="horsepowered:drying_rack" scale="4" />
</Row>

## Uso

1. Coloque o Varal de Secagem no chão (ele pode ficar em qualquer direção).
2. **Clique com o botão direito** com um item de entrada na mão para colocá-lo no espaço clicado. Só um item por espaço.
3. Espere o tempo de secagem da receita passar. O item do espaço é substituído pela saída seca ao concluir.
4. **Clique com o botão direito com a mão vazia** num espaço preenchido para pegar o item de volta. Funciona tanto para itens em secagem quanto para saídas prontas.

## Automação

Funis e tubos podem interagir com o varal por qualquer lado:

- **Inserir**: só itens com uma receita de secagem registrada são aceitos. Um item por espaço vazio.
- **Extrair**: só itens **prontos** podem ser puxados. Itens ainda secando ficam travados.

Um fluxo completo é possível: funil em cima alimentando entrada crua, funil embaixo puxando saída pronta.

## Receita

<RecipeFor id="horsepowered:drying_rack" />

## Observações

- O varal não requer energia, combustível nem um trabalhador. A secagem acontece passivamente com o tempo.
- Itens com progresso parcial sobrevivem a um recarregamento de chunk.
- As receitas de secagem disponíveis podem ser vistas no JEI/EMI.
