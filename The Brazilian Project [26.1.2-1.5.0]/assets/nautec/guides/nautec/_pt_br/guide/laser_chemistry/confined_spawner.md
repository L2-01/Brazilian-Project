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
  Transforma um gerador de criaturas numa máquina que produz os itens deixados pela criatura direto no próprio armazenamento, sem gerar nenhuma criatura.
</Column>

## <Color id="gold">Confinando um Gerador</Color>

Use uma Matriz de Confinamento de Gerador num gerador. A jaula ganha uma faixa de runas brilhantes e uma moldura de metal, e vira um Gerador Confinado. Ele mantém tudo do gerador original: a criatura, quantas gera de uma vez, com que frequência e quaisquer melhorias. Geradores aprimorados com Apothic Spawners mantêm sua contagem de geração e seu intervalo e rodam mais rápido por causa deles.

Agache-se e use o Gerador Confinado com a mão vazia, ou com uma Matriz, para liberá-lo. O gerador volta exatamente como estava e a Matriz retorna ao seu inventário. Ele só libera quando o armazenamento e o tanque de experiência estão vazios; até lá uma mensagem manda esvaziá-los primeiro.

Quebrar um Gerador Confinado com uma picareta deixa cair o próprio Gerador Confinado, com ou sem Toque Suave. Ele mantém a criatura, as configurações e melhorias do gerador e o filtro, então você pode movê-lo e recolocá-lo exatamente como estava. Os itens deixados e a experiência armazenados vão junto, então nada se espalha pelo chão. Para ter um gerador comum de volta, esvazie-o e libere-o.

## <Color id="gold">Energia</Color>

Mire um feixe de laser em qualquer face. O gerador armazena até 500 AP e gasta 50 AP por tique enquanto roda, então um feixe de 50 AP ou mais o mantém rodando sem parar. Um feixe mais fraco ainda funciona, em rajadas, conforme o buffer recarrega. Veja [Energia de Laser](nautec:getting_started/laser_power.md) para formas de supri-lo.

Ele roda sempre que tem energia e um slot de armazenamento livre, sem precisar de jogador por perto e sem regras de luz ou espaço. As runas clareiam e a criatura dentro gira mais rápido enquanto ele trabalha.

## <Color id="gold">Itens Deixados</Color>

Cada ciclo dura o mesmo que o intervalo de geração do próprio gerador. No fim dele, o gerador sorteia o loot da criatura uma vez para cada criatura que teria gerado, contando como abate por jogador, então item largados que exigem abate por jogador entram. Os resultados vão para 54 slots de armazenamento, o mesmo de um baú duplo.

Quando todos os slots estão ocupados, o gerador pausa e mantém o buffer cheio até abrir um slot. Qualquer parte de um sorteio que não caiba é perdida.

Funis e canos puxam os itens para fora, por qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). Só o gerador põe itens dentro.

## <Color id="gold">Experiência</Color>

O gerador também guarda a experiência que suas criaturas deixariam, como experiência líquida num tanque de 16.000 mB. Cada ponto de experiência vira 20 mB, a taxa que a maioria dos mods usa para experiência líquida. Quando o tanque enche, a experiência nova é perdida; o gerador continua rodando.

Por padrão o líquido são Algas de Experiência, um fluido verde brilhante. Se seu pacote tiver a experiência líquida de outro mod, liste o id do fluido dele primeiro em `confinedSpawnerXpFluids` em `config/nautec-common.toml` e o gerador produz aquele em vez disso. As Algas de Experiência estão na marcador de fluidos `c:experience`, então mods que aceitam experiência líquida por marcador também a aceitam.

Extraia a experiência por cano de qualquer face (fluidos seguem a [Configuração de Lados](nautec:getting_started/utilities.md) separadamente dos itens), ou clique com o botão direito no gerador segurando um balde vazio. Canos só podem drenar o tanque. A terceira barra na aba esquerda da tela mostra o quão cheio ele está. Quebrar o gerador mantém a experiência no item que cai.

## <Color id="gold">A Tela</Color>

Clique com o botão direito no gerador para ver seu armazenamento e tirar itens. A aba à esquerda tem três barras: AP armazenado, progresso do ciclo atual e experiência líquida. Passe o mouse sobre uma barra para ver seus números. O estado ao lado do título diz por que ele está parado quando não está rodando.

## <Color id="gold">Filtrando Itens</Color>

O botão de funil ao lado do título abre o painel de filtro, com 18 slots de filtro.

* Clique num slot segurando um item para filtrar aquele item. Você também pode arrastar um item do JEI.
* Clique com o botão direito num slot preenchido para percorrer as marcadores do item, e depois voltar ao item exato. Um filtro de marcador aceita todo item daquela marcador e mostra um **#** dourado.
* Clique num slot de mão vazia para limpá-lo.

O botão no topo alterna entre dois modos:

* **Lista de bloqueio** produz tudo exceto os itens filtrados.
* **Lista de permissões** produz só os itens filtrados.

Itens filtrados nunca são produzidos, então nunca ocupam armazenamento. Uma lista de permissões vazia para o gerador até você adicionar um filtro.

## <Color id="gold">Jade</Color>

Olhar para um Gerador Confinado com o Jade mostra sua criatura, se está rodando, seu AP armazenado e o que há no armazenamento.

***

### <Color id="aqua">Receita da Matriz de Confinamento de Gerador</Color>

<RecipeFor id="spawner_confinement_matrix"/>