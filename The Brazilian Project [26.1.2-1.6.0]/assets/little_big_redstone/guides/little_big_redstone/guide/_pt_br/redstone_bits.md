---
navigation:
  title: "Bits de Redstone"
  icon: "redstone_bit"
  position: 2
item_ids:
  - little_big_redstone:redstone_bit
---

# Bits de Redstone

<FloatingColumn align="right">
	<PaddedBox left="5">
		<Recipe id="little_big_redstone:redstone_bit" />
	</PaddedBox>
</FloatingColumn>

<FloatingColumn>
	<ItemImage id="redstone_bit" scale="2" />
</FloatingColumn>

Os bits de redstone são usados para criar fios que conectam portas entre si. Portas são as saliências triangulares
na lateral da [lógica](logic/introduction.md). As portas de saída ficam sempre no lado direito da lógica, e as portas
de entrada sempre no lado esquerdo.

Cada porta de entrada pode ter exatamente um fio conectado. Já nas portas de saída, não há limite de quantos fios
podem sair delas. Se precisar combinar vários fios numa única porta de entrada, use uma [porta OU](logic/or_gate.md).

Os bits de redstone funcionam de forma parecida com o pó de redstone normal, podendo ter uma força de sinal de 0 a
15. Naturalmente, uma força de sinal 0 significa que o fio está desligado, e 1 ou mais é considerado ligado.

### Trabalhando com fios

Os fios podem ser criados clicando com o botão esquerdo numa porta de saída e depois clicando com o botão esquerdo
na porta de entrada desejada. Um fio na mão pode ser descartado com o botão direito. Os fios também podem ser
recolhidos depois de colocados, usando o botão esquerdo.

Cada fio custa exatamente um bit de redstone, e o bit só é consumido quando o fio é conectado à porta de entrada.