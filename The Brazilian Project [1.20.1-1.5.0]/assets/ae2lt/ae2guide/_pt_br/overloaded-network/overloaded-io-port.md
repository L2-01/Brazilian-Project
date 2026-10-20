---
navigation:
  title: Porto de E/S Sobrecarregado
  icon: ae2lt:overloaded_io_port
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_io_port
---

# Porto de E/S Sobrecarregado

<BlockImage id="ae2lt:overloaded_io_port" scale="4" />

Move recursos em massa entre células de armazenamento e a rede ME. Fornece seis espaços de entrada e seis de saída e reutiliza as configurações de esvaziar, encher e ejetar do Porto de E/S de AE2, exigindo um canal e energia da rede.

## Taxa de transferência

Cada tentativa move um tipo de recurso, e as seis células de entrada compartilham as tentativas por rodada em rotação. Até 8 **Matrizes de Colapso de Raios** aumentam tanto a contagem de tentativas quanto o teto de quantidade:

| Matrizes | Tentativas por rodada | Teto por tipo (unidades de transferência) |
| --- | ---: | ---: |
| 0 | 4 | 8.388.608 |
| 1 | 6 | 268.435.456 |
| 2 | 8 | 8.589.934.592 |
| 3 | 10 | 274.877.906.944 |
| 4 | 12 | 8.796.093.022.208 |
| 5 | 14 | 281.474.976.710.656 |
| 6 | 16 | 9.007.199.254.740.992 |
| 7 | 16 | 288.230.376.151.711.744 |
| 8 | 16 | Long.MAX_VALUE |

As unidades de transferência são convertidas em quantidades nativas usando a quantidade por operação de AE2 do tipo de recurso. Transferências reais são limitadas pelo estoque da origem e pela capacidade do destino. `Long.MAX_VALUE` é 9.223.372.036.854.775.807.

Instale matrizes no espaço à direita abaixo da seta. O intervalo começa em 5 tiques; cada cartão de aceleração remove um tique, até quatro cartões.

## Energia

Cada extração custa **32 AE**, independente da quantidade movida, mais **4 AE/t** em repouso, ajustado pelo multiplicador de energia do AE2. Transferências pausam quando a energia é insuficiente.

## Controles e automação

* **Esvaziar** envia o conteúdo das células para a rede; **Encher** retira da rede para dentro da célula.
* Ejete células quando vazias, quando cheias, ou quando uma varredura completa não encontrar recursos transferíveis.
* Um cartão de redstone habilita controle por ignorar, sinal alto e sinal baixo.
* Insira células de armazenamento pelo topo e pela base locais do porto e extraia células concluídas pelos outros quatro lados; girar o bloco muda essas direções.
* Quando os espaços de saída estão cheios, as células esperam nos espaços de entrada e ainda podem ser removidas manualmente.

## Componente de filtro

O espaço à esquerda abaixo da seta aceita um **Componente de Filtro Sobrecarregado** cuja lista de recursos é configurada numa Bancada de Células; encher e esvaziar então movem apenas recursos correspondentes. Um cartão fuzzy habilita casamento aproximado e um cartão inversor transforma a lista numa lista-negra.

Recursos filtrados para fora permanecem no armazenamento original e não consomem tentativas nem energia. Com uma lista de filtro não vazia, a ejeção por vazio significa que a célula não contém recursos permitidos.

## Recuperação

Recursos que não podem ser entregues retornam primeiro à sua origem. Se a origem também os rejeitar, o porto os retém e pausa as transferências. Recursos pendentes aparecem na tooltip do item e sobrevivem à desmontagem; reconecte o porto a uma rede ME com espaço livre para devolvê-los.
