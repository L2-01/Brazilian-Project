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

O painel global fica do lado esquerdo da interface. Ele permanece visível mesmo ao trocar de aba. Este painel contém
os valores de medição atuais e o status. Também inclui a grade de E/S e a opção de zerar a quantidade total de energia medida.

### Medições

As medições incluem a taxa de fluxo atual e a quantidade total de energia medida. O valor total pode ser zerado usando o botão
abaixo da grade de E/S.

Os valores das medições atuais são atualizados uma vez por intervalo configurado. A única exceção é atingir a [tolerância](interface.md#tolerance).
Consulte essa seção para mais informações.

### Status

O status é atualizado sempre que uma configuração ou estado que possa afetá-lo muda. Isso inclui a taxa de fluxo atual, mudanças nos
blocos vizinhos e mudanças nas configurações de entrada e saída.

O status **Desconectado** indica que as configurações exigidas pelo modo atualmente selecionado não foram definidas. Na maioria dos casos,
isso significa que falta uma entrada ou saída. **Ocioso** significa que todas as configurações estão corretas e o Medidor de Energia está esperando
transferir energia. O status final depende do [modo de transferência](interface.md#transferring) selecionado e indica que o
<ItemLink id="meter" components="rarity=epic"/> está processando requisições e operando corretamente. **Bloqueado** significa que a função de redstone [Controle](interface.md#function) está bloqueando a transferência atualmente.

### Grade de E/S

Esta seção serve para configurar os lados do bloco. Cada lado pode ser configurado como entrada, saída ou desativado para
requisições de energia. A frente não pode ser configurada porque é reservada para exibir a taxa de fluxo no bloco. Os lados podem ser configurados
com clique esquerdo ou direito. Também é possível zerar um único lado instantaneamente ou zerar todos os lados de uma vez. Mais detalhes podem ser
encontrados nas dicas dos respectivos botões.

Se um lado pode ser configurado como entrada ou saída depende do [modo de transferência](interface.md#transferring) selecionado.

<br clear="all" />
---

## Painel de Configuração

<FloatingImage src="assets/configuration_tab.png" align="right"/>

O painel de configuração, acessado pela aba **Configuração**, permite ajustar configurações relacionadas a modos e medições.

### Modos

Nesta seção, diferentes modos podem ser selecionados usando botões de opção. Apenas uma opção por seção pode ser selecionada por vez.

#### Transferência

O modo de transferência determina como as requisições de energia que chegam nos lados configurados como entradas são repassadas aos lados de saída.
O modo padrão é **Dividir**.

No modo **Dividir**, as requisições recebidas são distribuídas igualmente entre todas as saídas. O sistema primeiro tenta dividir a energia igualmente pelo
número de saídas para que cada saída receba a mesma parcela. Se uma das saídas aceitar menos que sua parcela calculada, a
energia restante é redistribuída para as outras saídas. Isso significa que a divisão não é forçada. Se houver mais saídas do que energia disponível,
o restante é enviado a uma saída escolhida aleatoriamente.

O modo **Transferir** é um modo especial. Ele muda o comportamento da grade de E/S e permite atribuir prioridades às saídas. Saídas
com prioridade maior sempre recebem a energia repassada primeiro. A energia é então repassada em ordem decrescente de prioridade. Saídas de
prioridade menor só recebem energia se as de prioridade maior não puderem aceitar toda a energia disponível.

O modo **Consumir** serve para testar configurações. Em vez de repassar energia, este modo apaga permanentemente toda a energia recebida. Este modo
também muda o comportamento da grade de E/S ao não permitir saídas. É tipicamente usado para medir quanta energia pode entrar por todas as
entradas, especialmente quando o fluxo normal é limitado pelas saídas.

#### Medição

O modo de medição determina como a taxa de fluxo de um intervalo é calculada. O modo padrão é **Instantâneo**.

No modo **Instantâneo**, apenas os valores armazenados medidos durante o intervalo atual são considerados. Intervalos anteriores são ignorados. Este modo
é útil quando valores exatos são necessários.

O modo **Suavizado** muda o cálculo ao incorporar o intervalo anterior. Em vez de usar apenas as medições do intervalo
atual, a taxa de fluxo é ajustada usando o intervalo anterior. Isso produz um gráfico mais suave e reduz o impacto de picos repentinos na
taxa de fluxo. Este modo é útil para observar o comportamento médio em períodos mais longos.

<br/>

### Configurações

As opções desta seção são campos de texto que modificam certas configurações do <ItemLink id="meter" components="rarity=epic"/> que afetam a
medição e o fluxo de energia. Essas caixas de texto também têm vários comportamentos especiais.

Por padrão, os campos sempre exibem o valor atual. Ao editar um valor, o valor exibido não é atualizado. Em vez disso, o botão do
lado direito fica ativo. Pressionar este botão aplica o valor digitado. Alternativamente, o valor modificado pode ser confirmado usando
a tecla **Enter**.

As caixas de texto também aceitam vários recursos inteligentes, incluindo validação de entrada. Se uma entrada for inválida, por exemplo devido a um
número inválido, a caixa fica vermelha e o valor não pode ser aplicado.

Todas as caixas de texto também aceitam expressões matemáticas. As operações aceitas incluem adição, subtração, multiplicação, divisão,
exponenciação e parênteses. Se uma expressão matemática for detectada, a caixa de texto exibe um pequeno popup com o resultado calculado
que pode ser aplicado. Como todos os valores configuráveis são inteiros, os resultados de expressões matemáticas são automaticamente arredondados para o
número inteiro mais próximo. Símbolos inválidos também são impedidos ao digitar expressões matemáticas. Por exemplo, parênteses de fechamento só
podem ser inseridos se houver um parêntese de abertura correspondente.

Números podem ser encurtados com sufixos de unidade: `k` (mil), `M` (milhão), `G` (bilhão), `T`, `P` e `E`, cada um um fator de 1.000
maior que o anterior. O sufixo não diferencia maiúsculas de minúsculas e deve seguir diretamente um número, por exemplo `100k`, `1.5M` ou `2k * 3`.
Valores grandes como o limite de transferência também são exibidos nessa forma curta quando possível.

#### Limite

O limite de transferência define quanta energia o <ItemLink id="meter" components="rarity=epic"/> pode transferir por tique _(1 segundo = 20 tiques)_.
Todas as entradas são acumuladas e limitadas por este valor. O limite, portanto, aplica-se globalmente e não por entrada. Qualquer energia excedente ao
limite é devolvida ao remetente.

#### Intervalo

O intervalo define o tempo em tiques _(1 segundo = 20 tiques)_ após o qual uma nova medição é realizada. Durante um intervalo, todos os valores
relevantes são registrados e armazenados internamente. Quando o intervalo termina, esses valores são usados para calcular a taxa de fluxo atual e atualizar a
energia total medida.

Por padrão, este valor é **5 tiques (0,25 segundos)**. Este padrão pode ser alterado na configuração do mod. Por motivos de desempenho, o
valor nunca pode ser menor que 5 tiques.

O valor padrão relativamente pequeno permite que o <ItemLink id="meter" components="rarity=epic"/> reaja rapidamente a mudanças. Isso é
especialmente útil quando você quer ver imediatamente quando um suprimento de energia é interrompido. No entanto, isso pode fazer com que valores flutuantes
produzam uma média variável. Aumentar o intervalo pode suavizar as flutuações, mas resulta em atualizações menos frequentes da taxa de fluxo.

#### Tolerância

A tolerância é uma opção de nicho e raramente é necessária. É uma opção adicional que refina o intervalo e define por quantos tiques
_(1 segundo = 20 tiques)_ a taxa de energia pode permanecer em zero antes de o intervalo ser reiniciado.

Durante um intervalo, o suprimento de energia pode parar temporariamente. Nesse caso, a taxa de fluxo só é zerada quando todo o intervalo tiver
decorrido. Isso dificulta detectar interrupções quando intervalos longos são usados. Por padrão, a tolerância é **5 tiques (0,25 segundos)**.
Isso significa que é aceitável que o fluxo de energia pelo <ItemLink id="meter" components="rarity=epic"/> seja zero por até 5 tiques.
Se nenhuma energia for transferida no 6º tique, o intervalo termina mais cedo. Esta opção, portanto, só é útil quando o intervalo é maior
que 5 tiques.

O valor de tolerância é inclusivo. Com um valor de 5, é aceitável que a energia fique ausente por 5 tiques. Somente o 6º tique reinicia
o intervalo.

Esta opção é útil para intervalos muito longos em que você quer detectar cedo uma perda de fluxo de energia. Por exemplo, se o intervalo estiver em
**400 tiques (20 segundos)**, pode ser útil definir a tolerância em **50 tiques (2,5 segundos)**. Isso permitiria detectar uma
interrupção de energia após apenas 2,5 segundos em vez de até 20 segundos. É particularmente útil ao usar o [modo de medição](interface.md#measuring) **Suavizado**, já que a taxa de fluxo demora mais para chegar a zero nesse modo.

<br clear="all" />
---

## Painel do Gráfico

<FloatingImage src="assets/graph_tab.png" align="right"/>

O painel do gráfico pode ser acessado selecionando a aba **Gráfico**. Ele exibe uma representação gráfica dos últimos 10 intervalos.

Os dados são mostrados num sistema de coordenadas simples. O **eixo x** representa os intervalos mais recentes, enquanto o **eixo y** mostra a
taxa de fluxo média de cada intervalo. O valor máximo do eixo y é sempre **10% maior** que o maior valor de intervalo para deixar os
pontos do gráfico mais fáceis de interpretar.

Se existirem dados de menos de 10 intervalos, apenas os intervalos disponíveis são exibidos. Enquanto o intervalo atual está em execução, apenas uma
linha horizontal é mostrada. O ponto do gráfico aparece quando o resultado do intervalo fica disponível.

Para as [funções de redstone](interface.md#function) **Analógica** e **Limite**, os limites mínimo e máximo são mostrados como linhas tracejadas, para que você
veja onde a taxa de fluxo se situa em relação a eles. O limite máximo é desenhado em verde e o mínimo em cinza. Um limite acima da faixa visível
aparece como um marcador com seu valor na borda superior.

Para inspecionar os dados mais facilmente, o gráfico pode ser pausado usando o botão no canto superior direito. Pausar só interrompe a representação
gráfica do gráfico. Internamente, novos dados continuam sendo processados e o Medidor de Energia segue operando. Um rótulo dentro do gráfico
indica que ele está pausado. Pressione o botão novamente para retomar o gráfico.

<br clear="all" />
---

## Painel de Redstone

<FloatingImage src="assets/redstone_tab.png" align="right"/>

O painel de redstone pode ser acessado selecionando a aba **Redstone**. Ele permite que o <ItemLink id="meter" components="rarity=epic"/>
emita um sinal de redstone com base na taxa de fluxo atual, ou seja ligado e desligado por um sinal de redstone.

A redstone fica desativada por padrão. Escolha uma função diferente de **Desligada** para ativá-la. Enquanto ativa, o pó de redstone se conecta a todos os lados
do <ItemLink id="meter" components="rarity=epic"/> exceto a frente com o mostrador. O sinal é energia fraca, então ele não passa
por blocos sólidos ao lado do <ItemLink id="meter" components="rarity=epic"/>. O sinal é atualizado uma vez por
[intervalo](interface.md#interval).

### Função

A função define como a taxa de fluxo é convertida em sinal. Apenas uma função pode estar ativa por vez.

- **Desligada** não emite sinal e o pó de redstone não se conecta.
- **Analógica** mapeia a taxa de fluxo entre o limite mínimo e o máximo para uma força de sinal entre 0 e 15. Uma taxa de fluxo igual ou abaixo do
  limite mínimo emite 0; uma taxa de fluxo igual ou acima do limite máximo emite 15.
- **Limite** emite um sinal completo quando a taxa de fluxo atinge o limite máximo **(Liga em)** e o mantém até a taxa de fluxo cair abaixo do
  limite mínimo **(Desliga abaixo)**. A distância entre os dois limites evita que o sinal pisque quando a taxa de fluxo flutua em torno de um
  único valor. Se os dois limites forem iguais, o sinal alterna nesse valor.
- **Controle** lê um sinal de redstone de todos os lados exceto a frente e bloqueia toda a transferência de energia enquanto energizado. Alavancas, botões,
  pó de redstone, blocos de redstone e blocos fortemente energizados ao lado do <ItemLink id="meter" components="rarity=epic"/> contam. Essa
  função não emite sinal próprio, então o pó de redstone levando ao <ItemLink id="meter" components="rarity=epic"/> não pode mantê-lo
  energizado. Enquanto bloqueado, o [estado](interface.md#status) mostra **Bloqueado** e a taxa de fluxo cai a zero no próximo intervalo.
  O [comportamento](interface.md#behavior) define se o sinal apenas bloqueia a transferência ou a escala gradualmente.

### Escala

A escala só se aplica à função **Analógica**:

- **Linear**: cada nível de sinal cobre a mesma faixa de taxas de fluxo. Para obter um nível de sinal por passo, defina o limite mínimo como `0` e o
  limite máximo como `15 x step`. Por exemplo, um limite mínimo de `0` e um limite máximo de `150k` adiciona um nível de sinal a cada 10k FE/t.
- **Logarítmica**: cada nível de sinal multiplica a taxa de fluxo pelo mesmo fator. Isso é útil para cobrir uma grande faixa de taxas de fluxo.
  Por exemplo, um limite mínimo de `1` e um limite máximo de `1000T` _(10^15)_ adiciona um nível de sinal por fator de 10. Um limite mínimo de `0` é
  tratado como `1`.
### Comportamento

Para a função **Controle**, a seção de escala é substituída pela seção de comportamento:

- **Interruptor**: qualquer sinal bloqueia a transferência.
- **Regulador**: a força do sinal reduz o [limite de transferência](interface.md#limit) em 15 passos, de modo que um circuito de redstone pode regular
  quanta energia flui. Um sinal de 15 bloqueia a transferência. O Regulador também aplica o limite de transferência no modo **Consumir**.

Com um limite de transferência de 15k FE/t, o limite efetivo fica assim:

| Sinal  | Normal  | Invertido |
|--------|---------|-----------|
| 0      | 15k     | 0         |
| 5      | 10k     | 5k        |
| 15     | 0       | 15k       |

O Regulador precisa de um limite de transferência como base. Sem um, o sinal só pode bloquear a transferência com força total _(ou com força zero quando
invertido)_ e a transferência fica ilimitada caso contrário.

Por exemplo, um comparador lendo um armazenamento de energia atrás do <ItemLink id="meter" components="rarity=epic"/> desacelera a transferência à medida que
o armazenamento enche e a interrompe quando o armazenamento está cheio.

### Configurações

Os limites **mínimo** e **máximo** são taxas de fluxo em FE/t. Ambos são compartilhados entre as funções, então trocar de função mantém os
valores. Se o limite mínimo não estiver abaixo do limite máximo, a função **Analógica** atua como um limite no limite máximo.

Os limites não se aplicam à função **Controle**.

**Inverter** inverte o sinal. Um sinal **Analógico** invertido emite 15 no limite mínimo e 0 no limite máximo. Um sinal de **Limite**
invertido fica ligado enquanto a taxa de fluxo está baixa. Uma função **Controle** invertida, por sua vez, bloqueia a transferência quando desenergizada. Com o **Regulador**,
um sinal invertido concede o limite de transferência em vez de reduzi-lo. Como um <ItemLink id="meter" components="rarity=epic"/> sem nenhum fluxo tem taxa de fluxo zero,
inverter o sinal pode ser usado como alarme quando o fornecimento de energia para.

### Saída

A seção de saída mostra a força do sinal emitido atualmente e, para a função **Analógica**, quanto a taxa de fluxo precisa
mudar para que o sinal mude um nível. Para a função **Controle**, ela é substituída pela seção de entrada, que mostra o sinal
mais forte recebido e se a transferência está atualmente permitida ou bloqueada. Com o **Regulador**, ela mostra o limite de transferência efetivo
em vez disso. Ela aparece em vermelho se nenhum limite de transferência estiver definido.

<br clear="all" />
