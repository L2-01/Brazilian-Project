---
navigation:
  title: Gerador Confinado
  icon: nautec:spawner_confinement_matrix
  position: 12
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:spawner_confinement_matrix
  - nautec:confined_spawner
  - nautec:mob_sampler
  - nautec:mob_sample
---

# <Color id="light_purple">Gerador Confinado</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="spawner_confinement_matrix" scale="2"/>
  Transforma um gerador de criaturas em uma máquina que produz os itens deixados da criatura direto em seu próprio armazenamento, sem gerar nenhuma criatura.
</Column>

## <Color id="gold">Confinando um Gerador</Color>

Use uma Matriz de Confinamento de Gerador em um gerador. A jaula ganha uma faixa de runas brilhantes e uma armação de metal, e se torna um Gerador Confinado. Ele conserva tudo do gerador original: a criatura, quantas surgem de uma vez, com que frequência e quaisquer melhorias. Geradores melhorados com Apothic Spawners mantêm sua contagem de geração e seu atraso e funcionam mais rápido por causa delas.

Agache-se e use o Gerador Confinado de mão vazia, ou com uma Matriz, para liberá-lo. A jaula volta a ser um gerador comum com sua criatura e melhorias atuais, e a Matriz volta ao seu inventário. Ele só é liberado quando o armazenamento e o tanque de experiência estão ambos vazios; até lá, uma mensagem pede para esvaziá-los primeiro.

Quebrar um Gerador Confinado com uma picareta deixa cair o próprio Gerador Confinado, com ou sem Toque Suave. Ele conserva a criatura, as configurações e melhorias do gerador e o filtro, então você pode movê-lo e recolocá-lo exatamente como estava. Os itens e a experiência armazenados vão junto, então nada se derrama no chão. Para obter um gerador comum de volta, esvazie-o e libere-o.

## <Color id="gold">Trocando a Criatura</Color>

Faça um <ItemLink id="mob_sampler"/> no Misturador com um Frasco de Vidro, dois Lingotes de Cobre Aquarine, um diamante e 250 mB de Soro Eletrolítico de Algas. Cada receita faz um amostrador.

Use o amostrador em uma criatura viva para coletar uma <ItemLink id="mob_sample"/>. A criatura continua viva e no lugar. O amostrador é consumido, e a dica da amostra informa de que criatura ela veio. Criaturas adicionadas por outros mods também funcionam.

Use a amostra em um Gerador Confinado para trocar sua criatura. A amostra é consumida. Contagem de geração, atraso, melhorias, filtros, itens e experiência armazenados são mantidos; o progresso do próximo ciclo recomeça. Quebrar e recolocar o gerador mantém a nova criatura, assim como liberá-lo de volta a um gerador comum. Amostras não podem ser aplicadas diretamente em geradores comuns.

Jogadores, criaturas mortas e entidades marcadas com a tag de tipo de entidade `c:capturing_not_supported` não podem ser amostradas. A tag é verificada de novo ao aplicar uma amostra, então packs também podem bloquear amostras coletadas antes de suas regras mudarem.

<RecipeFor id="mob_sampler"/>

### <Color id="aqua">Materiais de Guardião</Color>

Guardiões são um bom primeiro alvo de amostragem. Um Gerador Confinado de Guardião fornece Fragmentos de Prismarinho e Cristais de Prismarinho renováveis para o [combustível do Catalisador Aquático](nautec:getting_started/laser_power.md) e para fabricações do NauTec, incluindo o Composto de Cobre Aquarine.

Ele também tem chance de produzir <ItemLink id="ancient_valve"/>, <ItemLink id="burnt_coil"/> e <ItemLink id="guardian_eye"/>. Isso lhe dá um fornecimento automatizado de peças de salvamento e Olhos de Guardião para aprimoramentos e Módulos de Laser de Impulso. Veja [Salvamento](nautec:getting_started/salvage.md) para os itens extras das criaturas e [Caixotes e Gravação](nautec:getting_started/etching.md) para limpar peças de salvamento.

## <Color id="gold">Energia</Color>

Mire um feixe de laser em qualquer face. O gerador armazena até 500 AP e gasta 50 AP por tique enquanto funciona, então um feixe de 50 AP ou mais o mantém funcionando sem parar. Um feixe mais fraco ainda funciona, em rajadas, conforme o buffer se reabastece. Veja [Energia de Laser](nautec:getting_started/laser_power.md) para formas de fornecê-la.

Ele funciona sempre que tem energia e um espaço de armazenamento livre, sem precisar de jogador por perto e sem regras de luz ou espaço. As runas se intensificam e a criatura lá dentro gira mais rápido enquanto ele trabalha.

## <Color id="gold">Itens</Color>

Cada ciclo dura o mesmo tempo que o atraso de geração do próprio gerador. Ao final dele, o gerador faz uma rolagem dos itens da criatura para cada criatura que teria surgido, contada como abate por jogador, então itens largados que exigem abate por jogador são incluídos. Os resultados vão para 54 espaços de armazenamento, o mesmo que um baú duplo.

Quando todos os espaços estão ocupados, o gerador pausa e mantém o buffer cheio até um espaço abrir. Qualquer parte de uma rolagem que não couber é perdida.

Funis e tubos retiram os itens, de qualquer face por padrão ([Configuração de Lados](nautec:getting_started/utilities.md)). Só o gerador coloca itens.

## <Color id="gold">Experiência</Color>

O gerador também guarda a experiência que suas criaturas deixariam, como experiência líquida em um tanque de 16.000 mB. Cada ponto de experiência vira 20 mB, a taxa que a maioria dos mods usa para experiência líquida. Quando o tanque está cheio, nova experiência é perdida; o gerador continua funcionando.

Por padrão, o líquido é Algas de Experiência, um fluido verde brilhante. Se o seu pack tem a experiência líquida de outro mod, liste o id do fluido dela primeiro em `confinedSpawnerXpFluids` em `config/nautec-common.toml` e o gerador produz aquela em vez disso. As Algas de Experiência estão na tag de fluido `c:experience`, então mods que aceitam experiência líquida por tag também a aceitam.

Tire a experiência por tubos em qualquer face (fluidos seguem a [Configuração de Lados](nautec:getting_started/utilities.md) separadamente dos itens), ou clique no gerador com um balde vazio. Tubos só podem drenar o tanque. A terceira barra na aba esquerda da tela mostra o quanto está cheio. Quebrar o gerador mantém a experiência no item derrubado.

## <Color id="gold">A Tela</Color>

Clique com o botão direito no gerador para ver seu armazenamento e retirar itens. A aba à esquerda tem três barras: AP armazenado, progresso do ciclo atual e experiência líquida. Passe o mouse sobre uma barra para ver seus números. O status ao lado do título diz por que ele está parado quando não está funcionando.

## <Color id="gold">Filtrando Itens</Color>

O botão de funil ao lado do título abre o painel de filtro, com 18 espaços de filtro.

* Clique em um espaço segurando um item para filtrá-lo. Você também pode arrastar um item do JEI.
* Clique com o botão direito em um espaço preenchido para percorrer as tags do item, e voltar ao item exato. Um filtro de tag corresponde a todo item daquela tag e mostra um **#** dourado.
* Clique em um espaço de mão vazia para limpá-lo.

O botão no topo alterna entre dois modos:

* **Lista de bloqueio** produz tudo exceto os itens filtrados.
* **Lista de permissões** produz só os itens filtrados.

Itens filtrados nunca são produzidos, então nunca ocupam armazenamento. Uma lista de permissões vazia para o gerador até você adicionar um filtro.

## <Color id="gold">Jade</Color>

Olhar para um Gerador Confinado com o Jade mostra sua criatura, se está funcionando, seu AP armazenado e o que há no armazenamento.

***

### <Color id="aqua">Receita da Matriz de Confinamento de Gerador</Color>

<RecipeFor id="spawner_confinement_matrix"/>
