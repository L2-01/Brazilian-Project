---
navigation:
  title: Prensa de Cavalo
  position: 5
item_ids:
  - horsepowered:press
---

# Prensa de Cavalo

A Prensa de Cavalo é uma máquina movida a cavalo que prensa itens para extrair fluidos ou produzir outras saídas. Útil para extrair óleos, sucos e outros líquidos.

<Row>
<ItemImage id="horsepowered:press" scale="4" />
</Row>

## Preparação

1. Coloque a Prensa de Cavalo numa área com pelo menos 7x7 de espaço livre ao redor.
2. Puxe um cavalo (ou outra criatura válida) com um laço.
3. Clique com o botão direito na prensa segurando o laço para prender a criatura.
4. A criatura anda em círculos, movendo a prensa.

## Verificando a Área de Trabalho

**Shift + clique direito** na prensa com a mão vazia para visualizar a área de trabalho exigida. Verde = livre, Vermelho = obstruído.

## Uso

1. Clique com o botão direito com itens para inseri-los.
2. Clique com o botão direito com um balde cheio para encher o tanque interno, ou com um balde vazio para drená-lo.
3. A criatura presa prensa itens automaticamente.
4. Clique com o botão direito para extrair quaisquer saídas sólidas.

## Receita

<RecipeFor id="horsepowered:press" />

## Tanque de Fluido

A Prensa de Cavalo tem um tanque de fluido interno usado tanto para produzir quanto para consumir fluidos:

- Receitas podem encher o tanque (prensar sementes produz óleo), ou drená-lo (uma receita pode consumir uma entrada de fluido).
- Clique com o botão direito com um balde cheio para encher, ou um balde vazio para drenar.
- Conecte um tubo ou tanque de fluido para transferência automatizada.

## Envase

Baldes funcionam porque o jogo lhes dá uma capacidade de manipulador de fluido. Frascos de vidro não têm, então não conseguem tirar fluido de um tanque sozinhos. A prensa cobre isso com uma lista de receitas de envase.

Clique com o botão direito na prensa com um frasco (ou qualquer contêiner que a receita indique) e ela drena o fluido daquela receita do tanque de saída e devolve o item cheio. Clique com o botão direito com o item cheio e o inverso acontece: o fluido entra no tanque de entrada e você recebe o contêiner vazio de volta.

Uma receita de envase vem por padrão: um frasco de vidro tira 250 mB de água da prensa e vira um frasco de água. Prense gelo, neve ou espeleotema para conseguir a água primeiro.

Criadores de modpack podem adicionar mais em `data/<namespace>/recipe/bottling/<recipe>.json`:

```json
{
  "type": "horsepowered:bottling",
  "container": "minecraft:glass_bottle",
  "fluid": { "id": "minecraft:water", "amount": 250 },
  "result": {
    "id": "minecraft:potion",
    "components": { "minecraft:potion_contents": { "potion": "minecraft:water" } }
  }
}
```

* `container`: Ingrediente. O contêiner vazio que o jogador segura.
* `fluid`: o fluido e a quantidade em mB movida por clique.
* `result`: o item cheio devolvido. Componentes são respeitados, então poções e outros itens que carregam dados funcionam.
* `priority`: opcional, ordem de exibição no JEI. Números menores aparecem primeiro.

Esta é a forma de tornar removível da prensa à mão um fluido que só existe em forma engarrafada (sucos de fruta e afins). O JEI lista toda receita de envase numa categoria Envase.

## Observações

- A prensa tem dois blocos de altura.
- Algumas receitas exigem múltiplos itens de entrada ou um fluido específico no tanque.
- Clique com o botão direito com a mão vazia para soltar a criatura presa.
- O piso sob o caminho escala a velocidade de trabalho. Veja [Caminho e Velocidade](horse_path.md).
- As receitas de prensa disponíveis podem ser vistas no JEI/EMI.
