---
navigation:
  title: Interface
  parent: index.md
---

# Interface do Medidor de Energia

Esta página explica todas as configurações que podem ser ajustadas no <ItemLink id="meter" components="rarity=epic"/>. Para acessar as configurações,
coloque o bloco e interaja com ele para abrir sua interface de usuário. A interface é dividida em duas seções. O painel esquerdo é o painel
global e fica sempre visível. O painel direito depende da aba atualmente selecionada na barra de abas do topo.

<br/>

## Painel Global

<FloatingImage src="assets/global_panel.png" align="right"/>

O painel global fica no lado esquerdo da interface. Ele permanece visível mesmo ao trocar de aba. Este painel contém os
valores atuais de medição e o estado. Também inclui a grade de E/S e a opção de zerar a quantidade total de energia medida.

### Medições

As medições incluem a taxa de fluxo atual e a quantidade total de energia medida. O valor total pode ser zerado usando o botão
abaixo da grade de E/S.

Os valores das medições atuais são atualizados uma vez por intervalo configurado. A única exceção é ao atingir a [tolerância](interface.md#tolerance).
Veja essa seção para mais informações.

### Estado

O estado é atualizado sempre que uma configuração ou situação muda e pode afetá-lo. Isso inclui a taxa de fluxo atual, mudanças em blocos
vizinhos e mudanças nas configurações de entrada e saída.

O estado **Desconectado** indica que as configurações exigidas pelo modo atualmente selecionado não foram definidas. Na maioria dos casos,
isso significa que falta uma entrada ou saída. **Ocioso** significa que todas as configurações estão corretas e o Medidor de Energia está esperando
transferir energia. O estado final depende do [modo de transferência](interface.md#transferring) selecionado e indica que o
<ItemLink id="meter" components="rarity=epic"/> está processando requisições e operando corretamente.

### Grade de E/S

Esta seção serve para configurar os lados do bloco. Cada lado pode ser configurado como entrada, saída ou desativado para
requisições de energia. O lado frontal não pode ser configurado porque é reservado para exibir a taxa de fluxo no bloco. Os lados podem ser configurados
com o botão esquerdo ou direito. Também é possível zerar um único lado instantaneamente ou zerar todos os lados de uma vez. Mais detalhes estão
nas dicas de ferramenta dos respectivos botões.

Se um lado pode ser configurado como entrada ou saída depende do [modo de transferência](interface.md#transferring) selecionado.

<br clear="all" />
---

## Painel de Configuração

<FloatingImage src="assets/configuration_tab.png" align="right"/>

O painel de configuração, acessível pela aba **Configuração**, permite ajustar configurações relacionadas a modos e medições.

### Modos

Nesta seção, diferentes modos podem ser selecionados usando botões de opção. Apenas uma opção por seção pode ser selecionada por vez.

#### Transferindo

O modo de transferência determina como as requisições de energia que chegam pelos lados configurados como entradas são repassadas aos lados de saída.
O modo padrão é **Dividir**.

No modo **Dividir**, as requisições que chegam são distribuídas igualmente entre todas as saídas. O sistema primeiro tenta dividir a energia igualmente pelo
número de saídas, de modo que cada saída receba a mesma parte. Se uma das saídas aceitar menos que a parte calculada, a
energia restante é redistribuída para as outras saídas. Isso significa que a divisão não é forçada. Se houver mais saídas do que energia disponível,
o restante é enviado para uma saída escolhida aleatoriamente.

O modo **Transferir** é um modo especial. Ele muda o comportamento da grade de E/S e permite atribuir prioridades às saídas. Saídas
com prioridade mais alta sempre recebem a energia repassada primeiro. A energia é então repassada em ordem decrescente de prioridade. Saídas de
prioridade mais baixa só recebem energia se as de prioridade mais alta não puderem aceitar toda a energia disponível.

O modo **Consumir** serve para testar setups. Em vez de repassar energia, este modo apaga permanentemente toda a energia que chega. Este modo
também muda o comportamento da grade de E/S ao desativar saídas. É tipicamente usado para medir quanta energia pode entrar por todas as
entradas, especialmente quando o fluxo normal é limitado pelas saídas.

#### Medindo

O modo de medição determina como a taxa de fluxo de um intervalo é calculada. O modo padrão é **Instantâneo**.

No modo **Instantâneo**, só são considerados os valores armazenados medidos durante o intervalo atual. Intervalos anteriores são ignorados. Este modo
é útil quando valores exatos são necessários.

O modo **Suavizado** muda o cálculo ao incorporar o intervalo anterior. Em vez de usar apenas as medições do intervalo
atual, a taxa de fluxo é ajustada usando o intervalo anterior. Isso produz um gráfico mais suave e reduz o impacto de picos súbitos na
taxa de fluxo. Este modo é útil para observar o comportamento médio em períodos mais longos.

<br/>

### Ajustes

As opções desta seção são campos de texto que modificam certas configurações do <ItemLink id="meter" components="rarity=epic"/> que afetam
a medição e o fluxo de energia. Essas caixas de texto também têm vários comportamentos especiais.

Por padrão, os campos sempre exibem o valor atual. Enquanto você edita um valor, o valor exibido não é atualizado. Em vez disso, o botão do
lado direito fica ativo. Pressionar esse botão aplica o valor digitado. Como alternativa, o valor modificado pode ser confirmado com a
tecla **Enter**.

As caixas de texto também aceitam vários recursos inteligentes, incluindo validação de entrada. Se uma entrada for inválida, por exemplo por causa de um
número inválido, a caixa fica vermelha e o valor não pode ser aplicado.

Todas as caixas de texto também aceitam expressões matemáticas. As operações aceitas incluem adição, subtração, multiplicação, divisão,
exponenciação e parênteses. Se uma expressão matemática for detectada, a caixa de texto exibe um pequeno popup com o resultado calculado
que pode ser aplicado. Como todos os valores configuráveis são inteiros, os resultados de expressões matemáticas são arredondados automaticamente para o
número inteiro mais próximo. Símbolos inválidos também são bloqueados durante a digitação de expressões matemáticas. Por exemplo, um parêntese de fechamento só pode
ser inserido se existir um parêntese de abertura correspondente.

#### Limite

O limite de transferência define quanta energia o <ItemLink id="meter" components="rarity=epic"/> pode transferir por tique _(1 segundo = 20 tiques)_.
Todas as entradas são somadas e limitadas por esse valor. O limite, portanto, se aplica globalmente e não por entrada. Qualquer energia que exceda o
limite é devolvida ao remetente.

#### Intervalo

O intervalo define o tempo em tiques _(1 segundo = 20 tiques)_ após o qual uma nova medição é feita. Durante um intervalo, todos os
valores relevantes são registrados e armazenados internamente. Quando o intervalo termina, esses valores são usados para calcular a taxa de fluxo atual e atualizar
a energia total medida.

Por padrão, esse valor é **5 tiques (0,25 segundos)**. Esse padrão pode ser alterado na configuração do mod. Por razões de desempenho, o
valor nunca pode ser menor que 5 tiques.

O valor padrão relativamente pequeno permite ao <ItemLink id="meter" components="rarity=epic"/> reagir rapidamente a mudanças. Isso é
especialmente útil quando você quer ver imediatamente quando um fornecimento de energia é interrompido. No entanto, isso pode fazer com que valores oscilantes
produzam uma média variável. Aumentar o intervalo pode suavizar as oscilações, mas resulta em atualizações menos frequentes da taxa de fluxo.

#### Tolerância

A tolerância é uma opção de nicho e raramente é necessária. É uma opção adicional que refina o intervalo e define por quantos tiques
_(1 segundo = 20 tiques)_ a taxa de energia pode permanecer zero antes de o intervalo ser reiniciado.

Durante um intervalo, o fornecimento de energia pode parar temporariamente. Nesse caso, a taxa de fluxo só passa a zero quando o intervalo inteiro
se esgota. Isso dificulta detectar interrupções quando se usam intervalos longos. Por padrão, a tolerância é de **5 tiques (0,25 segundos)**.
Isso significa que é aceitável o fluxo de energia pelo <ItemLink id="meter" components="rarity=epic"/> ficar em zero por até 5 tiques.
Se nenhuma energia for transferida no 6º tique, o intervalo termina antes. Esta opção, portanto, só é útil quando o intervalo é maior
que 5 tiques.

O valor de tolerância é inclusivo. Com um valor de 5, é aceitável que a energia fique ausente por 5 tiques. Somente o 6º tique reinicia
o intervalo.

Esta opção é útil para intervalos muito longos em que você quer detectar cedo uma perda de fluxo de energia. Por exemplo, se o intervalo estiver em
**400 tiques (20 segundos)**, pode ser útil definir a tolerância para **50 tiques (2,5 segundos)**. Isso permitiria detectar uma
interrupção de energia depois de apenas 2,5 segundos em vez de até 20 segundos. Isso é especialmente útil ao usar o
[modo de medição](interface.md#measuring) **Suavizado**, já que a taxa de fluxo demora mais para chegar a zero nesse modo.

<br clear="all" />
---

## Painel de Gráfico

<FloatingImage src="assets/graph_tab.png" align="right"/>

O painel de gráfico é acessado pela aba **Gráfico**. Ele exibe uma representação gráfica dos últimos 10 intervalos.

Os dados são mostrados em um sistema de coordenadas simples. O **eixo x** representa os intervalos mais recentes, enquanto o **eixo y** mostra a
taxa de fluxo média de cada intervalo. O valor máximo do eixo y é sempre **10% maior** que o maior valor de intervalo, para facilitar a
interpretação dos pontos do gráfico.

Se existirem dados de menos de 10 intervalos, apenas os intervalos disponíveis são exibidos. Enquanto o intervalo atual está em execução, só é mostrada uma
linha horizontal. O ponto do gráfico aparece assim que o resultado do intervalo fica disponível.

Para inspecionar os dados mais facilmente, o gráfico pode ser pausado usando o botão no canto superior direito. Pausar apenas interrompe a representação
gráfica do gráfico. Internamente, novos dados continuam sendo processados e o Medidor de Energia segue operando. Um rótulo dentro do gráfico
indica que ele está pausado. Pressione o botão novamente para retomar o gráfico.

<br clear="all" />
---

## Painel de Redstone

O painel de Redstone ainda está em desenvolvimento e ainda não contém nenhuma opção.
