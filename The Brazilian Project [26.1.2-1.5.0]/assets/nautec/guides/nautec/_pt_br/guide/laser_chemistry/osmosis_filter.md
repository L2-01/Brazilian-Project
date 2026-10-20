---
navigation:
  title: Filtro de Osmose
  icon: nautec:osmosis_filter
  position: 5
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:osmosis_filter
---

# <Color id="light_purple">Filtro de Osmose</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="osmosis_filter" scale="2"/>
  Produz Água sozinho, sem combustível, insumos ou feixe.
</Column>

## <Color id="gold">Usando-o</Color>

Coloque-o em qualquer lugar e ele começa a encher seu tanque com 1.000 mB (1 balde) de Água por segundo. Ele para quando o tanque atinge 16.000 mB (16 baldes, configurável), e o painel em sua frente brilha enquanto ele filtra.

* Clique com o botão direito segurando um Balde vazio para tirar 1.000 mB. Outros recipientes de fluido também funcionam.
* Canos podem puxar Água de qualquer face. Nada pode ser inserido.
* Toda face fornece Água por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) desliga ou liga faces separadamente.

Clique nele com o botão direito e a mão vazia para ver o tanque, quanta Água ele produz por segundo e o AP chegando. O Jade também mostra o tanque e a taxa.

Alimente a Água para um [Misturador](mixer.md) com Sal para fazer Água Salgada, ou para um [Dínamo de Combustão](nautec:getting_started/combustion_dynamo.md).

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Filtro de Osmose não precisa de feixe, mas um feixe de laser em qualquer face o deixa mais rápido: cada 40 AP dobra sua produção, até 1.024.000 mB por segundo (ambos configuráveis).

| Feixe | Água por segundo |
|---|---|
| nenhum | 1.000 mB |
| 40 AP | 2.000 mB |
| 80 AP | 4.000 mB |
| 160 AP | 16.000 mB |
| 320 AP | 256.000 mB |
| 400 AP | 1.024.000 mB |

Com um feixe que produz mais de 16.000 mB por segundo, o tanque enche até um segundo de produção em vez disso, para nunca travar entre retiradas. Se o feixe enfraquecer, a Água que já está no tanque permanece; ele só para de produzir mais até você retirar um pouco.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para cada máquina que um feixe mais forte acelera.

<RecipeFor id="osmosis_filter"/>
