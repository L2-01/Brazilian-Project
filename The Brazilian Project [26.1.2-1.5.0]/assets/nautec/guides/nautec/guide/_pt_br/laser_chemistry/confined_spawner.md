---
navigation:
  title: Gerador Confinado
  icon: nautec:spawner_confinement_matrix
  position: 12
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:spawner_confinement_matrix
  - nautec:confined_spawner
---

# <Color id="light_purple">Gerador Confinado</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="spawner_confinement_matrix" scale="2"/>
  Transforma um gerador de mobs numa máquina que produz os drops do mob direto em seu próprio armazenamento, sem gerar um único mob.
</Column>

## <Color id="gold">Confinando um Gerador</Color>

Use uma Matriz de Confinamento de Gerador num gerador. A jaula ganha uma faixa de runas brilhantes e uma moldura de metal, e vira um Gerador Confinado. Ele mantém tudo do gerador original: o mob, quantos gera de uma vez, com que frequência e quaisquer melhorias. Geradores aprimorados com o Apothic Spawners mantêm sua contagem de surgimento e atraso e funcionam mais rápido por eles.

Agache e use o Gerador Confinado com a mão vazia, ou com uma Matriz, para libertá-lo. O gerador volta exatamente como era e a Matriz retorna ao seu inventário. Ele só liberta quando o armazenamento e o tanque de experiência estiverem vazios; até lá uma mensagem pede para esvaziá-los primeiro.

Quebrar um Gerador Confinado com picareta dropa o próprio Gerador Confinado, com ou sem Toque Suave. Ele mantém o mob, as configurações e melhorias do gerador e o filtro, então você pode movê-lo e recolocá-lo exatamente como estava. Os drops e a experiência armazenados vão junto, então nada se derrama no chão. Para ter um gerador comum de volta, esvazie-o e liberte-o.

## <Color id="gold">Energia</Color>

Mire um feixe de laser em qualquer face. O gerador comporta até 500 AP e gasta 50 AP por tique enquanto funciona, então um feixe de 50 AP ou mais o mantém rodando sem parar. Um feixe mais fraco ainda funciona, em rajadas, conforme o buffer recarrega. Veja [Energia de Laser](nautec:getting_started/laser_power.md) para formas de abastecê-lo.

Ele funciona sempre que tem energia e um espaço livre no armazenamento, sem precisar de jogador por perto e sem regras de luz ou espaço. As runas clareiam e o mob dentro gira mais rápido enquanto ele trabalha.

## <Color id="gold">Drops</Color>

Cada ciclo leva o tempo do próprio atraso de surgimento do gerador. No fim dele, o gerador sorteia o saque do mob uma vez para cada mob que teria gerado, contado como abate por jogador, então drops que exigem abate por jogador estão incluídos. Os resultados vão para 54 espaços de armazenamento, o mesmo que um baú duplo.

Quando todos os espaços estão ocupados, o gerador pausa e mantém o buffer cheio até um espaço abrir. Qualquer parte de um sorteio que não couber se perde.

Funis e tubos puxam os drops de qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). Só o gerador insere itens.

## <Color id="gold">Experiência</Color>

O gerador também guarda a experiência que seus mobs dropariam, como experiência líquida num tanque de 16.000 mB. Cada ponto de experiência vira 20 mB, a taxa que a maioria dos mods usa para experiência líquida. Quando o tanque enche, a experiência nova se perde; o gerador continua funcionando.

Por padrão o líquido é Algas de Experiência, um fluido verde brilhante. Se seu pack tiver a experiência líquida de outro mod, liste o id do fluido primeiro em `confinedSpawnerXpFluids` em `config/nautec-common.toml` e o gerador produz aquele em vez disso. Algas de Experiência está na tag de fluidos `c:experience`, então mods que aceitam experiência líquida por tag também a aceitam.

Tubule a experiência por qualquer face (fluidos seguem a [Configuração de Lados](nautec:getting_started/utilities.md) separadamente dos itens), ou clique direito no gerador com um balde vazio. Tubos só podem drenar o tanque. A terceira barra da aba esquerda da tela mostra quão cheio está. Quebrar o gerador mantém a experiência no item dropado.

## <Color id="gold">A Tela</Color>

Clique direito no gerador para ver seu armazenamento e tirar itens. A aba à esquerda tem três barras: AP armazenado, progresso do ciclo atual e experiência líquida. Passe o mouse sobre uma barra para seus números. O estado ao lado do título diz por que ele está parado quando não está funcionando.

## <Color id="gold">Filtrando Drops</Color>

O botão de funil ao lado do título abre o painel de filtro, com 18 espaços.

* Clique num espaço segurando um item para filtrar aquele item. Você também pode arrastar um item a partir do JEI.
* Clique direito num espaço preenchido para percorrer as tags do item, e depois de volta ao item exato. Um filtro de tag corresponde a todo item daquela tag e mostra um **#** dourado.
* Clique num espaço com a mão vazia para limpá-lo.

O botão no topo alterna entre dois modos:

* **Lista Negra** produz tudo exceto os drops filtrados.
* **Lista Branca** produz só os drops filtrados.

Drops filtrados nunca são produzidos, então nunca ocupam armazenamento. Uma lista branca vazia para o gerador até você adicionar um filtro.

## <Color id="gold">Jade</Color>

Olhar para um Gerador Confinado com o Jade mostra seu mob, se está funcionando, seus AP armazenados e o que há no armazenamento.

***

### <Color id="aqua">Receita da Matriz de Confinamento de Gerador</Color>

<RecipeFor id="spawner_confinement_matrix"/>
