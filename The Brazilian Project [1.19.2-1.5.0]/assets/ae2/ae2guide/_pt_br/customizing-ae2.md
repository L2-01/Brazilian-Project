---
navigation:
  title: Personalizando o AE2
  icon: certus_quartz_wrench
---

Esta página descreve como o AE2 pode ser ajustado por autores de modpacks ou jogadores ao seu próprio estilo de jogo.

## Configuração

### Modos de Canal

Se você não gosta de jogar com canais ou prefere uma experiência mais tranquila, veja a
[seção de modos de canal](./features/me-network/channels.md#channel-modes) para várias opções
de personalização da mecânica de canais do AE2.

### Crescimento de Cristais Mais Rápido em Certos Fluidos

O AE2 permite especificar uma tag de fluido em `improvedFluidTag`, que aumenta a velocidade de crescimento
das sementes de cristal em `improvedFluidMultiplier` (padrão: 2) quando submersas nesse tipo de fluido.

## Receitas

O AE2 usa receitas JSON padrão. O ponto de partida mais fácil é baixar o arquivo jar e descompactá-lo. As receitas
ficam em `data/ae2/recipes`.

### Tipos Especiais de Receita

O AE2 introduz alguns tipos de receita personalizados que usam um formato JSON próprio. Eles são descritos nas seções a seguir.

#### Inscritor

Usado pelo <ItemLink id="inscriber" />. Receitas de exemplo podem ser encontradas em `data/ae2/recipes/inscriber`.

Note que o inscritor também permite inverter cada receita de modo que os espaços superior e inferior sejam trocados,
então duas receitas cujo topo/base fiquem iguais após a inversão resultariam em conflito de receitas.

As propriedades JSON disponíveis são as seguintes:

| Propriedade            | Descrição                                                                                 |
| ---------------------- | ----------------------------------------------------------------------------------------- |
| `type`                 | Deve ser `ae2:inscriber`                                                                  |
| `mode`                 | Define se os ingredientes de cima e de baixo são consumidos (`press`) ou não (`inscribe`)   |
| `ingredients`.`top`    | Ingrediente do espaço superior (opcional).                                                |
| `ingredients`.`middle` | Ingrediente do espaço central (obrigatório).                                              |
| `ingredients`.`bottom` | Ingrediente do espaço inferior (opcional).                                                |
| `result`               | Resultado da receita                                                                      |

#### Manipulador de Entropia

O <ItemLink id="entropy_manipulator" /> usa receitas para decidir no que ele pode ser usado.
Receitas de exemplo podem ser encontradas em `data/ae2/recipes/entropy`.

Clicar com o botão direito com o manipulador de entropia usa receitas do tipo `heat`, enquanto Shift+clique usa `cool`.
Colocar um manipulador de entropia num ejetor tentará os dois tipos (primeiro `cool`, depois `heat`).

As propriedades JSON disponíveis são as seguintes:

| Propriedade     | Descrição                                                                        |
| --------------- | -------------------------------------------------------------------------------- |
| `type`          | Deve ser `ae2:entropy`                                                           |
| `mode`          | O modo de uso do manipulador de entropia ao qual esta receita se aplica (`heat` ou `cool`). |
| `input`         | A qual bloco/fluido no mundo esta receita se aplica.                             |
| `input`.`block` | Define a quais blocos esta receita se aplica (veja detalhes abaixo).             |
| `input`.`fluid` | Define a quais fluidos esta receita se aplica (veja detalhes abaixo).            |
| `output`        | Define o resultado de usar o item em `input`.                                    |

##### Definindo Entradas

A entrada do tipo de receita de entropia pode ser um bloco ou um fluido, ou ambos ao mesmo tempo, para corresponder apenas a
blocos específicos alagados.

Entradas de bloco e fluido podem ser definidas assim:

```json
{
  "input": {
    "block": {
      "id": "minecraft:cobblestone",
      "property1": "value",
      "property2": ["value1", "value2"],
      "property3": {
        "min": 1,
        "max": 5
      }
    },
    "fluid": {
      "id": "minecraft:water",
      "property1": "value",
      "property2": ["value1", "value2"],
      "property3": {
        "min": 1,
        "max": 5
      }
    }
  }
}
```

A propriedade `id` é obrigatória, enquanto propriedades adicionais podem ser especificadas para corresponder a propriedades
de estado de bloco específicas, seja diretamente, como uma lista de valores válidos, ou como um intervalo (entre `min` e `max`).

##### Definindo a Saída

Aplicar uma receita de manipulador de entropia pode resultar em um ou todos os seguintes efeitos:

- Alterar o bloco
- Alterar o fluido
- Largar itens

```json
{
  "output": {
    "block": {
      "id": "minecraft:cobblestone",
      "keep": true,
      "property1": "value"
    },
    "fluid": {
      "id": "minecraft:water",
      "property2": "value"
    },
    "drops": [
      {
        "item": "minecraft:snowball",
        "count": 1
      }
    ]
  }
}
```

As três propriedades (block, fluid, drops) são opcionais, mas também podem ser usadas juntas.
A propriedade especial `keep` de `block` e `fluid` copia as propriedades de estado do bloco
existente ao trocar o `id` do bloco ou fluido. Além disso, quaisquer propriedades extras serão interpretadas como
propriedades de estado de bloco e aplicadas ao novo bloco.

Se a operação deve largar itens, eles devem ser especificados como uma lista em `drops`.

#### Munição do Canhão de Matéria

O <ItemLink id="matter_cannon" /> usa receitas para decidir quais itens contam como munição e qual deve ser seu dano.
Receitas de exemplo podem ser encontradas em `data/ae2/recipes/matter_cannon`.

| Propriedade | Descrição                                                                                                      |
| ----------- | -------------------------------------------------------------------------------------------------------------- |
| `type`      | Deve ser `ae2:matter_cannon`                                                                                   |
| `ammo`      | Ingrediente que identifica a qual item esta receita se aplica.                                                  |
| `weight`    | O peso da munição. Afeta a penetração de blocos e o dano. O dano é o peso dividido por 20, arredondado para cima. |
