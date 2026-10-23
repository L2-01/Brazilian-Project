---
navigation:
  title: Matriz de Fabricação a Laser
  icon: nautec:laser_crafting_matrix
  position: 2
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:laser_crafting_matrix
---

# <Color id="light_purple">Matriz de Fabricação a Laser</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="laser_crafting_matrix" scale="2"/>
  Executa transformações a laser dentro de uma máquina, para que possam ser automatizadas.
</Column>

Toda [Transformação de Itens](item_transformation.md) também pode ser feita na matriz, uma fabricação por vez, com itens e fluidos entrando e saindo por tubos em vez de pelo chão.

## <Color id="gold">Montando-a</Color>

A matriz só aceita laser por **cima**. Aponte um relé ou catalisador para baixo sobre ela. Feixes chegando pelos lados ou por baixo são ignorados.

Cada receita precisa de um feixe com pelo menos seus AP e pelo menos sua pureza. Enquanto faltar qualquer um dos dois, a matriz espera e mantém o progresso. Um feixe mais forte que o necessário a faz funcionar mais rápido, igual às outras máquinas (veja [Feixes Mais Fortes](stronger_beams.md)).

Clique direito com a mão vazia para abri-la.

* Três espaços de entrada à esquerda da seta e três de saída à direita.
* Dois tanques de entrada na extrema esquerda e dois de saída na extrema direita, cada um com 16.000 mB (configurável).
* Cada espaço de entrada guarda um item diferente e cada tanque de entrada um fluido diferente, então tubos nunca espalham um item por todos os espaços.
* Clique direito com um balde cheio para encher um tanque de entrada, ou com um balde vazio para tirar fluido, começando pelos tanques de saída.
* Funis e tubos inserem nas entradas e puxam das saídas. [Configuração de Lados](utilities.md) define cada face separadamente para itens e fluidos.

O painel mostra os AP e a pureza que a receita atual precisa, verde quando o feixe os atende e vermelho quando não. Passe o mouse sobre a seta para os números exatos. O Jade mostra o mesmo, além do que a receita produz e por que a matriz está esperando.

A faixa central gira e a lente pulsa enquanto ela trabalha.

***

## <Color id="gold">Receitas</Color>

O JEI lista toda receita em Fabricação a Laser.

| Entrada | Saída | AP | Pureza | Tempo |
|---|---|---|---|---|
| Composto de Aço Aquarine | Lingote de Aço Aquarine | 10 | qualquer | 1 s |
| Composto de Aço Aquarine | 2 Lingotes de Aço Aquarine | 20 | 2.0 | 1 s |
| <ItemLink id="burnt_coil"/> | Bobina de Canalização de Laser | 20 | 1.5 | 5 s |
| Cristais de Prismarinho | 2 <ItemLink id="prismarine_crystal_shard"/>s | 20 | 2.0 | 2 s |
| <ItemLink id="cast_iron_block"/> | 4 <ItemLink id="gear"/>s | 40 | 2.5 | 4 s |

Quando mais de uma receita corresponde, a matriz usa a de maior pureza que o feixe atende.

Modpacks e datapacks podem adicionar suas próprias receitas `nautec:laser_crafting` com até três entradas de item, duas de fluido, três saídas de item e duas de fluido.

<RecipeFor id="laser_crafting_matrix"/>
