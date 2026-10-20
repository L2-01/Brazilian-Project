---
navigation:
  title: Solicitador ME
  icon: requester
  position: 100
item_ids:
  - merequester:requester
  - merequester:requester_terminal
---

# Solicitador ME

<Row>
  <ItemImage id="requester" scale="3"/>
  <ItemImage id="requester_terminal" scale="3"/>
</Row>

Um mod adicional que permite manter itens e fluidos do seu [Sistema ME](ae2:getting-started.md#your-very-first-me-system) em estoque.
<br/>

## Começando

Para começar, coloque um <ItemLink id="requester"/> e conecte-o à sua rede. Certifique-se de conectá-lo à mesma rede onde está a sua lógica de
[Autofabricação](ae2:ae2-mechanics/autocrafting.md). Ela deve hospedar suas
[CPUs de Fabricação](ae2:ae2-mechanics/autocrafting.md#the-crafting-cpu) e seus <ItemLink id="ae2:pattern_provider"/>s.

<RecipeFor id="requester"/>

Para que o <ItemLink id="requester"/> funcione, é preciso garantir que os itens ou fluidos que você quer manter em estoque tenham um padrão
e que também possam ser fabricados quando você os solicita como jogador. Ele apenas automatiza a solicitação em si. A fabricação fica por conta do
[Sistema ME](ae2:getting-started.md#your-very-first-me-system).
<br/>

<FloatingImage src="assets/gui.png" align="right"/>

## Configuração

Ao abrir o <ItemLink id="requester"/> pela primeira vez, você verá uma visão geral das configurações de pedidos. O número de espaços que um único
bloco pode hospedar é ajustável na configuração. Cada linha da GUI representa um pedido individual.
<br/>

### Botão de Alternância

A caixa de seleção à esquerda alterna o pedido configurado naquela linha. Quando um pedido está desativado, nenhuma verificação é executada e o estoque do seu
pedido não será mantido.<br/>
Isso pode ser usado para desativar temporariamente um pedido específico ou para impedir que o <ItemLink id="requester"/> emita tarefas de fabricação enquanto
você ainda está alterando uma linha.
<br/>

### O que Manter em Estoque

Na segunda coluna, você especifica o que deseja manter em estoque. Os espaços são espaços-fantasma e não guardam itens de verdade. Ao
arrastar um item para o espaço, você pode usar o botão direito para definir a quantidade como 1 ou o botão esquerdo para usar a quantidade da pilha que você está arrastando.
Ao arrastar um balde com um fluido para o espaço, você pode usar o botão direito para definir o fluido contido ou o botão esquerdo para definir o próprio balde.
Você também pode usar shift+clique nos itens para definir rapidamente o tipo de item. Se você não tiver o item desejado no seu inventário, também pode arrastá-lo e
soltá-lo a partir dos visualizadores de receitas compatíveis com o Applied Energistics.
<br/>

### Quantidade em Estoque

O campo Quantidade em Estoque indica quanto manter em estoque. Especifique primeiro o que manter e depois insira o valor desejado. Para pedidos que não são de itens,
o campo se adapta ao tipo. Por exemplo, exibindo um `B` para indicar baldes de fluido.<br/>
Quando o estoque atual ficar abaixo da quantidade especificada, o <ItemLink id="requester"/> solicitará mais.
<br/>

### Tamanho do Lote

O próximo campo de entrada especifica o tamanho do lote que será solicitado quando o estoque atual ficar abaixo do limite definido no campo
Quantidade em Estoque.<br/>
Isso pode ser usado para sobrecarregar menos as [CPUs de Fabricação](ae2:ae2-mechanics/autocrafting.md#the-crafting-cpu) e as máquinas usadas na fabricação,
já que a quantidade total será solicitada de uma vez, em vez de várias tarefas individuais.
<br/>

### Botão Enviar

Para aplicar as alterações ao pedido, insira os valores desejados nos campos Quantidade em Estoque e Tamanho do Lote e, em seguida, pressione Enter ou clique
no botão de envio à direita da linha atual. Clicar em qualquer outra linha restaura os valores ao estado anterior.
<br/>

### Barra de Situação

A barra abaixo das caixas de entrada e do botão de envio reflete a situação atual do pedido.
<br clear="all" />
<br/>

## Situações

As seguintes situações são exibidas na barra de situação de cada pedido.
<br/>

### Cinza - Vazio

A linha atual está desativada ou nada foi especificado para manter em estoque.
<br/>

### Verde - Ocioso

A quantidade alvo em estoque já foi atingida ou não há padrão para o pedido configurado.
<br/>

### Vermelho - Faltando Ingredientes

Faltam no sistema os ingredientes necessários para emitir a tarefa atual. Ela continuará assim que ingredientes suficientes forem encontrados no
sistema.
<br/>

### Amarelo - Fabricando

O pedido desejado está sendo fabricado no momento. O solicitador está aguardando a tarefa terminar.<br/>
Enquanto essa situação estiver ativa, as configurações do respectivo pedido dentro do <ItemLink id="requester"/> ficam bloqueadas e não podem ser alteradas.
<br/>

### Roxo - Exportando

O <ItemLink id="requester"/> recebeu todos os resultados da tarefa atual e está tentando exportá-los para o sistema de armazenamento.<br/>
Essa situação normalmente não é visível. Se permanecer ativa por muito tempo, significa que não há espaço suficiente no seu sistema de armazenamento.
<br/>

### Aparência do Bloco

Se algum pedido de um <ItemLink id="requester"/> estiver em qualquer situação exceto ocioso ou vazio, ele mudará de aparência.

<Row>
  <Column>
    Inativo
    <BlockImage id="requester" scale="3" p:active="false"/>
  </Column>
  <Column>
    Ativo
    <BlockImage id="requester" scale="3" p:active="true"/>
  </Column>
</Row>
<br/>

## Terminal

O mod também fornece um novo terminal chamado <ItemLink id="requester_terminal"/>. Ele permite acessar todos os <ItemLink id="requester"/>s
da mesma rede a partir de um ponto central.

O terminal tem os mesmos recursos do <ItemLink id="ae2:pattern_access_terminal"/> e permite pesquisar um pedido específico.
Como todos os <ItemLink id="requester"/>s têm o mesmo nome por padrão, todos os pedidos ficam agrupados sob o
mesmo cabeçalho. Se você quiser um grupo separado de <ItemLink id="requester"/>s no <ItemLink id="requester_terminal"/>, pode renomeá-los em
uma bigorna ou com a <ItemLink id="ae2:name_press"/>.
