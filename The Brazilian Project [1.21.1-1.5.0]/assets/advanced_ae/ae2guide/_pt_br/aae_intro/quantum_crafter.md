---
navigation:
  parent: aae_intro/aae_intro-index.md
  title: Fabricador Quântico
  icon: advanced_ae:quantum_crafter
categories:
  - advanced devices
item_ids:
  - advanced_ae:quantum_crafter
---

# Fabricador Quântico

<BlockImage id="advanced_ae:quantum_crafter" p:working="true" scale="4"></BlockImage>

O Fabricador Quântico é um autofabricador poderoso e configurável. Com todo o inventário dos sistemas AE ao seu
alcance, fabricar sem parar torna-se uma tarefa trivial. Ele é capaz de executar trabalhos de fabricação num ritmo muito rápido enquanto garante
que você nunca fique sem recursos cruciais. Ele também é capaz de executar fabricações com substituição de fluido, assim como
fabricações recursivas, que têm uma entrada como saída.

## Usando o Fabricador

Para usar o Fabricador Quântico, você precisa colocá-lo na sua rede e conectá-lo com um cabo. Um único canal
é necessário para a operação. Selecione quais receitas você quer que sejam executadas indefinidamente e codifique-as num padrão de fabricação.
Esses padrões podem ser inseridos nos espaços apropriados no fabricador.

![QCGUI](../pic/quantum_crafter_ui.png)

Uma vez inseridos, há dois botões que permitem a configuração de cada padrão. O botão quadrado na parte inferior é
responsável por ativar/desativar um padrão. Padrões desativados nunca serão fabricados, mas padrões ativados ainda seguem
um conjunto de condições. Para definir essas condições, você precisa clicar no botão de engrenagem para abrir a UI de Configuração de Padrão.

![PCGUI](../pic/pattern_configuration_ui.png)

Dentro da UI de configuração de padrão, todos os ingredientes e a saída principal são listados. Você pode usar os campos numéricos para
regular quanto de cada ingrediente você quer manter dentro do sistema ME o tempo todo, assim como definir uma quantidade máxima
do produto final, para evitar fabricar demais itens caros. Depois de digitar o número desejado (que também aceita
expressões matemáticas), você precisa pressionar enter para aplicar a entrada. Uma indicação à direita deixará claro se
os valores foram aplicados ou não. Particularmente ao configurar o limite de saída, se o valor for definido como 0, o limite é
removido e a fabricação continuará até as entradas acabarem.

## Saídas

A saída das fabricações executadas pelo fabricador quântico é altamente configurável. A configuração padrão tentará
empurrar itens diretamente dos espaços de saída para o sistema ME. Clicando com o botão esquerdo no botão de célula na barra de ferramentas esquerda, a
saída pode ser configurada para ser empurrada para inventários adjacentes. Isso é ainda mais configurável clicando no outro
botão que aparece quando essa configuração está ativada, que permite a seleção de quais lados serão considerados
habilitados para autoexportação. A combinação dessas duas configurações deve permitir bastante controle e escolha
criativa sobre como o fabricador é usado.

## Melhorias

Para desbloquear todo o potencial do Fabricador Quântico, cartões de melhoria devem ser instalados. Ele pode receber
<ItemLink id="ae2:speed_card" />s e <ItemLink id="ae2:redstone_card" />s. O primeiro acelera muito a velocidade de
fabricação, alcançando 64 fabricações de cada padrão por tique, enquanto o segundo permite controle por redstone.
