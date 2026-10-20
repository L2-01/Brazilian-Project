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
  Mistura itens em Água Salgada para fazer químicos, Composto de Aço Aquarine e peças de máquina.
</Column>

## <Color id="gold">Montando</Color>

O Misturador aceita um feixe de laser por qualquer face e roda enquanto pelo menos 10 AP por tique chegarem (configurável). Um <ItemLink id="aquatic_catalyst"/> queimando Fragmentos de Prismarinho ou Fragmentos de Cristal de Prismarinho basta. Um queimando Cristais de Prismarinho não; adicione uma segunda fonte por uma [Junção de Laser](laser_manipulation.md).

Clique nele com o botão direito e a mão vazia para abri-lo. Ele tem quatro slots de ingrediente, um slot de saída, um tanque de entrada e um tanque de saída, cada tanque com 32.000 mB (32 baldes, configurável).

* Clique com o botão direito segurando um <ItemLink id="saltwater_bucket"/> para encher o tanque de entrada. Água Salgada vem do [Dreno do Mar Profundo](drain.md), ou do próprio Misturador com um Balde de Água e Sal.
* Clique com o botão direito segurando um Balde vazio para tirar fluido do tanque de saída.
* Funis e canos podem inserir ingredientes, encher o tanque de entrada e drenar o tanque de saída.
* Resultados de item podem ser puxados do slot de saída.
* Toda face faz tudo isso por padrão. A [Configuração de Lados](nautec:getting_started/utilities.md) define cada face separadamente para itens e fluidos.

O batedor gira enquanto ele trabalha. O <ItemLink id="prism_monocle"/> mostra a energia chegando, e o Jade também mostra seus tanques e o progresso da mistura.

***

## <Color id="gold">Receitas</Color>

O JEI lista os ingredientes em Mistura.

| Resultado | Fluido usado | Tempo |
|---|---|---|
| 1.000 mB de Água Salgada | 1.000 mB de Água e 1 <ItemLink id="salt"/> | 5 segundos |
| 1.000 mB de Soro Eletrolítico de Algas | 1.000 mB de Água Salgada | 10 segundos |
| 1.000 mB de Ácido de Gravação | 1.000 mB de Água Salgada | 7.5 segundos |
| 5 Compostos de Aço Aquarine | 1.000 mB de Água Salgada | 5 segundos |
| 1 <ItemLink id="burnt_coil"/> | 1.000 mB de Água Salgada | 10 segundos |
| 2 <ItemLink id="aquatic_chip"/> | 1.000 mB de Água Salgada | 10 segundos |
| 1 <ItemLink id="pressure_synthesizer"/> | 8.000 mB de Água Salgada | 20 segundos |
| 1 <ItemLink id="atlantean_pressure_synthesizer"/> | 8.000 mB de Água Salgada | 30 segundos |

Uma receita só começa quando seu resultado cabe na saída, então esvazie o tanque ou slot de saída entre lotes. Perder energia pausa uma mistura sem zerá-la.

<Color id="gold">Dica</Color>: enquanto o tanque de saída tiver fluido, clicar com o botão direito segurando um balde age no tanque de saída, então um Balde de Água Salgada não entra. Esvazie a saída primeiro.

Veja [Fluidos de Química](chemistry_introduction.md) para que serve cada fluido.

***

### <Color id="aqua">Receita do Misturador</Color>

O <ItemLink id="whisk"/> é consertado a partir de um Batedor Quebrado, ou fabricado com Hastes de Ferro Fundido, um Fragmento de Cristal de Prismarinho e um Lingote de Aço Aquarine.

***

## <Color id="gold">Feixes Mais Fortes</Color>

O Misturador precisa de 10 AP. Um feixe mais forte roda toda receita mais rápido: sua velocidade é a raiz quadrada de (feixe ÷ 10).

| Feixe | Velocidade |
|---|---|
| 10 AP | ×1 (normal) |
| 40 AP | ×2 |
| 90 AP | ×3 |
| 160 AP | ×4 |

Os tempos na tabela de receitas são num feixe de 10 AP.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e toda máquina a que ela se aplica.

<RecipeFor id="mixer"/>