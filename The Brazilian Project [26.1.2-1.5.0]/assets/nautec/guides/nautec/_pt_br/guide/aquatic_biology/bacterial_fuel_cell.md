---
navigation:
  title: Célula de Combustível Bacteriana
  icon: nautec:bacterial_fuel_cell
  position: 13
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:bacterial_fuel_cell
---

# <Color id="light_purple">Célula de Combustível Bacteriana</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="bacterial_fuel_cell" scale="2"/>
  A Célula de Combustível Bacteriana queima uma colônia para disparar um feixe de laser.
</Column>

Clique com o botão direito na Célula de Combustível segurando uma <ItemLink id="petri_dish"/> para carregar a colônia nela. Clique com o botão direito segurando uma placa vazia para pegar de volta o que sobrou. Uma colônia carregada se funde com a que já está dentro apenas se for da mesma linhagem com exatamente os mesmos stats.

Funis e canos também podem alimentá-la. Uma placa segurando uma colônia entra por qualquer face e carrega assim que a Célula de Combustível estiver vazia ou contiver uma colônia correspondente com espaço de sobra, e a placa vazia pode ser puxada de volta. Ela recusa placas vazias e colônias que ainda não pode receber, então um baú de placas atrás dela a mantém queimando uma colônia após a outra. A [Configuração de Lados](nautec:getting_started/utilities.md) define o que cada face permite, com a chave já que a Célula de Combustível não tem tela.

Funciona com qualquer colônia, analisada ou não, incluindo as linhagens que não produzem nada no [Biorreator](bio_reactor.md).

***

## <Color id="gold">Colocando-a</Color>

O feixe sai pelo lado oposto à face para a qual você estava olhando ao colocá-la, então ela dispara para longe de você. Isso pode ser para cima ou para baixo, além dos lados.

Ela só dispara, e só queima colônia, enquanto um bloco que aceite feixe estiver a até 16 blocos naquele lado. Sem nada para atingir, a colônia fica ali intocada.

***

## <Color id="gold">Saída</Color>

| Stat | Efeito |
|---|---|
| Taxa de Produção | Potência é 24 AP por ponto de Taxa de Produção (48 AP no teto de 2). Também queima meio ponto de tamanho por tique por ponto de Taxa de Produção. |
| Resistência à Mutação | Pureza é 2.5 no teto de resistência e escala para baixo até 0 sem resistência. |
| Tamanho | Quanto tempo ela dura. |

Potência e queima sobem juntas, então cada ponto de tamanho dá a mesma energia total. Uma colônia rápida só a gasta mais cedo. Uma colônia completa de 40.000 dá 24 AP por cerca de 67 minutos com Taxa de Produção 1, ou 48 AP por cerca de 33 minutos com Taxa de Produção 2.

A maioria das receitas de [Transformação de Itens](nautec:getting_started/item_transformation.md) que o NauTec traz precisa de pureza 2.0 ou menos, que uma colônia alcança com 0.8 de Resistência à Mutação. Isso as executa sem construir um núcleo de Cristal de Prismarinho. Engrenagens a partir de um Bloco de Ferro Fundido precisam de 2.5, então só uma colônia no teto de resistência executa essa.

A potência base (24), a taxa de queima (0.5) e a pureza máxima (2.5) são todas configuráveis.

***

## <Color id="gold">Escolhendo Entre Matéria e Energia</Color>

A Célula de Combustível nunca envelhece uma colônia, então Vitalidade não importa aqui, e uma colônia senescente queima exatamente tão bem quanto uma fresca. Isso a torna o lar certo para uma colônia velha demais para valer alimentar. O Biorreator quer as mesmas colônias boas, então para cada uma você escolhe itens ou energia.

***

## <Color id="gold">Receita</Color>

<Recipe id="nautec:bacterial_fuel_cell"/>