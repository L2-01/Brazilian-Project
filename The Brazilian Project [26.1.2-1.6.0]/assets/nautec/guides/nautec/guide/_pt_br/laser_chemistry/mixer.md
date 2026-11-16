---
navigation:
  title: Misturador
  icon: nautec:mixer
  position: 4
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:mixer
---

# <Color id="light_purple">Misturador</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="mixer" scale="2"/>
  Mistura itens em Água Salgada para produzir químicos, Composto de Aço Aquarine e peças de máquina.
</Column>

## <Color id="gold">Montando-o</Color>

O Misturador aceita um feixe de laser em qualquer face e funciona enquanto chegarem pelo menos 10 AP por tique (configurável). Um <ItemLink id="aquatic_catalyst"/> queimando Fragmentos de Prismarinho ou Fragmentos de Cristal de Prismarinho basta. Um queimando Cristais de Prismarinho não; adicione uma segunda fonte por uma [Junção de Laser](laser_manipulation.md).

Clique direito com a mão vazia para abri-lo. Ele tem quatro espaços de ingredientes, um de saída, um tanque de entrada e um de saída, cada tanque com 64.000 mB (64 baldes, configurável).

* Clique direito com um <ItemLink id="saltwater_bucket"/> para encher o tanque de entrada. Água Salgada vem do [Dreno do Mar Profundo](drain.md), ou do próprio Misturador com um Balde de Água e Sal.
* Clique direito com um Balde vazio para tirar fluido do tanque de saída.
* Funis e tubos podem inserir ingredientes, encher o tanque de entrada e drenar o de saída.
* Resultados de itens podem ser puxados do espaço de saída.
* Toda face faz tudo isso por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente para itens e fluidos.

O batedor gira enquanto ele trabalha. O <ItemLink id="prism_monocle"/> mostra a potência chegando, e o Jade também mostra seus tanques, progresso de mistura e quantas fabricações ele executa de uma vez.

***

## <Color id="gold">Receitas</Color>

O JEI lista os ingredientes em Mistura.

| Resultado | Fluido usado | Tempo |
|---|---|---|
| 1.000 mB de Água Salgada | 1.000 mB de Água e 1 <ItemLink id="salt"/> | 5 segundos |
| 1.000 mB de Soro Eletrolítico de Algas | 1.000 mB de Água Salgada | 10 segundos |
| 1.000 mB de Ácido de Gravação | 1.000 mB de Água Salgada | 7,5 segundos |
| 5 Compostos de Aço Aquarine | 1.000 mB de Água Salgada | 5 segundos |
| 1 <ItemLink id="burnt_coil"/> | 1.000 mB de Água Salgada | 10 segundos |
| 2 <ItemLink id="aquatic_chip"/>s | 1.000 mB de Água Salgada | 10 segundos |
| 1 <ItemLink id="pressure_synthesizer"/> | 8.000 mB de Água Salgada | 20 segundos |
| 1 <ItemLink id="atlantean_pressure_synthesizer"/> | 8.000 mB de Água Salgada | 30 segundos |

Uma receita só começa quando seu resultado cabe na saída, então esvazie o tanque ou espaço de saída entre lotes. Perder energia pausa uma mistura sem reiniciá-la.

<Color id="gold">Dica</Color>: enquanto o tanque de saída tiver fluido, clicar direito com um balde age no tanque de saída, então um Balde de Água Salgada não entra. Esvazie a saída primeiro.

Veja [Fluidos de Química](chemistry_introduction.md) para para que serve cada fluido.

***

### <Color id="aqua">Receita do Misturador</Color>

O <ItemLink id="whisk"/> é reparado de um Batedor Quebrado, ou fabricado de Varas de Ferro Fundido, um Fragmento de Cristal de Prismarinho e um Lingote de Aço Aquarine.

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Misturador precisa de 10 AP. Um feixe mais forte primeiro executa mais fabricações de uma vez: a cada 10 AP adiciona uma fabricação por ciclo, até 64 (configurável). Quando um ciclo termina ele faz o quanto seus ingredientes, seu tanque de entrada e o espaço na saída permitirem, então 640 AP com uma pilha de Sal e 64.000 mB de Água fazem 64.000 mB de Água Salgada num único ciclo de 5 segundos.

Acima de 64 fabricações, mais AP acelera o ciclo em vez disso: sua velocidade é a raiz quadrada de (feixe ÷ (fabricações × 10)). Abaixo de 640 AP, um feixe entre dois degraus de 10 só dá uma aceleração pequena.

| Feixe | Fabricações por ciclo | Velocidade |
|---|---|---|
| 10 AP | 1 | ×1 (normal) |
| 40 AP | 4 | ×1 |
| 640 AP | 64 | ×1 |
| 2.560 AP | 64 | ×2 |
| 5.760 AP | 64 | ×3 |
| 10.240 AP | 64 | ×4 |

Os tempos na tabela de receitas são para um ciclo a ×1.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

<RecipeFor id="mixer"/>
