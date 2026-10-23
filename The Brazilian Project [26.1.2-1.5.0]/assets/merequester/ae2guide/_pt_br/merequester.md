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

Um mod add-on que permite manter itens e fluidos em estoque no seu [Sistema ME](ae2:getting-started.md#your-very-first-me-system).
<br/>

## Primeiros Passos

Para começar, coloque um <ItemLink id="requester"/> e conecte-o à sua rede. Certifique-se de conectá-lo à mesma rede onde está a sua
lógica de [Autofabricação](ae2:ae2-mechanics/autocrafting.md). Ela deve hospedar suas
[CPU de Fabricação](ae2:ae2-mechanics/autocrafting.md#the-crafting-cpu)s e <ItemLink id="ae2:pattern_provider"/>s.

<RecipeFor id="requester"/>

Para que o <ItemLink id="requester"/> funcione, você precisa garantir que os itens ou fluidos que quer manter em estoque tenham um padrão
e também possam ser fabricados quando você os solicita como jogador. Ele só automatiza a solicitação em si. A fabricação é feita pelo
[Sistema ME](ae2:getting-started.md#your-very-first-me-system).
<br/>

<FloatingImage src="assets/gui.png" align="right"/>

## Configuração

Ao abrir o <ItemLink id="requester"/> pela primeira vez, você verá uma visão geral das configurações de solicitação. O número de espaços que um único
bloco pode hospedar é ajustável na configuração. Cada linha da GUI representa uma solicitação individual.
<br/>

### Interruptor

A caixa de seleção à esquerda ativa ou desativa a solicitação configurada naquela linha. Quando uma solicitação está desativada, nenhuma verificação é executada e o estoque da sua
solicitação não será mantido.<br/>
Isso pode ser usado para desativar temporariamente uma solicitação específica ou para impedir que o <ItemLink id="requester"/> emita trabalhos de fabricação enquanto
você ainda está fazendo alterações numa linha.
<br/>

### O que Manter em Estoque

Na segunda coluna, você pode especificar o que deseja manter em estoque. Os espaços são espaços fantasmas e não guardam itens reais. Ao
arrastar um item para o espaço, você pode usar o botão direito para definir a quantidade como 1 ou o botão esquerdo para usar a quantidade da pilha que está arrastando.
Ao arrastar um balde com um fluido para o espaço, você pode usar o botão direito para definir o fluido contido ou o botão esquerdo para definir o próprio balde.
Você também pode usar Shift+clique nos itens para definir rapidamente o tipo de item. Se você não tiver o item desejado no inventário, também pode arrastar e
soltá-lo de visualizadores de receitas suportados pelo Applied Energistics.
<br/>

### Quantidade em Estoque

O campo Quantidade em Estoque indica quanto manter. Especifique primeiro o que manter e depois insira o valor desejado. Para solicitações que não são de itens,
o campo se adapta ao tipo. Por exemplo, mostrando um `B` para indicar baldes de fluido.<br/>
Quando o estoque atual ficar abaixo da quantidade especificada, o <ItemLink id="requester"/> solicitará mais.
<br/>

### Tamanho do Lote

O próximo campo de entrada especifica o tamanho do lote que será solicitado quando o estoque atual ficar abaixo do limiar especificado no
campo Quantidade em Estoque.<br/>
Isso pode ser usado para reduzir a carga nas [CPU de Fabricação](ae2:ae2-mechanics/autocrafting.md#the-crafting-cpu)s e nas máquinas usadas na fabricação,
já que a quantidade total será solicitada de uma vez, em vez de muitos trabalhos individuais.
<br/>

### Botão Enviar

Para aplicar alterações à solicitação, insira os valores desejados nos campos Quantidade em Estoque e Tamanho do Lote e depois pressione Enter ou clique
no botão enviar à direita na linha atual. Clicar em qualquer outra linha restaurará os valores ao estado anterior.
<br/>

### Barra de Status

A barra abaixo das caixas de entrada e do botão enviar reflete o status atual da solicitação.
<br clear="all" />
<br/>

## Status

Os seguintes status são exibidos na barra de status de cada solicitação.
<br/>

### Cinza - Vazio

A linha atual está desativada ou nada foi especificado para manter em estoque.
<br/>

### Verde - Ocioso

A quantidade alvo de estoque já foi atingida ou não há padrão para a solicitação configurada.
<br/>

### Vermelho - Ingredientes Faltando

O sistema não tem os ingredientes necessários para emitir o trabalho atual. Ele continuará assim que ingredientes suficientes forem encontrados no
sistema.
<br/>

### Amarelo - Fabricando

A solicitação desejada está sendo fabricada no momento. O solicitador está esperando o trabalho terminar.<br/>
Enquanto este status estiver ativo, as configurações da respectiva solicitação dentro do <ItemLink id="requester"/> ficam bloqueadas e não podem ser alteradas.
<br/>

### Roxo - Exportando

O <ItemLink id="requester"/> recebeu todos os resultados do trabalho atual e está tentando exportá-los para o sistema de armazenamento.<br/>
Este status normalmente não é visível. Se ficar ativo por muito tempo, significa que não há espaço suficiente no seu sistema de armazenamento.
<br/>

### Aparência do Bloco

Se qualquer solicitação num <ItemLink id="requester"/> tiver qualquer status exceto ocioso ou vazio, ele mudará de aparência.

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

O terminal tem os mesmos recursos do <ItemLink id="ae2:pattern_access_terminal"/> e permite buscar uma solicitação específica.
Como todos os <ItemLink id="requester"/>s têm o mesmo nome por padrão, todas as solicitações serão agrupadas sob o
mesmo cabeçalho. Se você quiser um grupo separado de <ItemLink id="requester"/>s no <ItemLink id="requester_terminal"/>, pode renomeá-los numa
bigorna ou com a <ItemLink id="ae2:name_press"/>.
