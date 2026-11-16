---
navigation:
  title: Cartão de Frequência de Sobrecarga
  icon: ae2lt:overloaded_frequency_card
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_frequency_card
---

# Cartão de Frequência de Sobrecarga

<ItemGrid>
  <ItemIcon id="ae2lt:overloaded_frequency_card" />
  <ItemIcon id="ae2lt:advanced_wireless_overloaded_controller" />
</ItemGrid>

O **Cartão de Frequência de Sobrecarga** conecta dispositivos ou partes ME diretamente a uma frequência sem fio sem colocar um Receptor Sem Fio. Também suporta conexões automáticas ao colocar dispositivos e energia FE sem fio.

O cartão apenas vincula alvos. A frequência em si ainda deve ser transmitida por um **Controlador Sobrecarregado Sem Fio Avançado**. Frequências transmitidas por Controladores Sobrecarregados Sem Fio normais não podem ser usadas para vínculos de cartão de frequência.

## Vinculação

1. Coloque um **Controlador Sobrecarregado Sem Fio Avançado** na frequência alvo
2. Segure um Cartão de Frequência de Sobrecarga e dê **Shift + clique com o botão direito** naquele controlador
3. Após vincular, o cartão mostra o nome da frequência e registra o jogador vinculado

Um cartão vinculado só pode ser usado pelo jogador que o vinculou. **Shift + clique com o botão direito no ar** limpa a vinculação, mantendo o ajuste de conexão automática.

Segure o cartão em qualquer mão e **clique com o botão direito no ar** para abrir sua tela de frequência. A navegação superior oferece Início, Frequência, Membros, Gerenciamento de rede e Configurações de frequência; veja [Rede Sem Fio](wireless-network.md#frequency-screen) para detalhes. A página de Frequência pode buscar e vincular frequências existentes ou criar uma nova. Cartões não podem transmitir por conta própria; frequências recém-criadas ainda requerem um Controlador Sobrecarregado Sem Fio Avançado para carregar canais ME.

Uma vez vinculado a um transmissor avançado disponível, o cartão fornece gerenciamento de rede para inspecionar dispositivos, energia e conexões de frequência, localizar alvos e abrir telas nativas de dispositivos suportadas. Configurações de membros e de frequência permanecem sujeitas a permissões.

As configurações na tela se aplicam ao cartão usado para abri-la; reabra a tela se o item segurado for trocado.

## Vinculação Manual

Segure um cartão de frequência vinculado e clique com o botão direito num dispositivo de rede ME suportado, parte selecionável ou corpo de cabo para alternar todo o cluster ME físico.

Um cluster ME físico é um grupo de dispositivos conectados diretamente por cabos ou nós de grade adjacentes. Novos dispositivos adicionados ao grupo compartilham sua frequência, e o acesso sem fio se expande com a demanda de canais. Grupos na mesma frequência se fundem num único grupo gerenciado quando conectados fisicamente. Se remover cabos os separar, cada grupo sobrevivente retém a frequência. Clique com o botão direito em qualquer dispositivo, parte ou cabo do grupo para desconectar o grupo inteiro.

Controladores e blocos sem um nó de grade disponível não podem ser selecionados. Um cluster físico só pode usar uma frequência por vez. Se clusters com frequências diferentes forem unidos fisicamente, as conexões sem fio são suspensas enquanto os vínculos de frequência existentes são mantidos. Dividir o cluster físico restaura o vínculo próprio de cada componente. Alternativamente, clique com o botão direito com qualquer cartão correspondente para remover apenas a frequência daquele cartão e deixar a frequência restante se recuperar.

Se o cartão reportar que a frequência está temporariamente indisponível, o transmissor geralmente não está carregado. O vínculo se recuperará assim que o Controlador Sobrecarregado Sem Fio Avançado for carregado novamente.

Configure **Alternar Vínculo do Cartão de Frequência** nos controles do jogo (não atribuído por padrão) para alternar um alvo ao alcance sem clicar nele com o botão direito. O atalho usa um cartão elegível de qualquer mão, do Curios, da hotbar ou do inventário principal. Se vários cartões compartilharem a prioridade mais alta, segure o cartão pretendido para desambiguar.

## Energia FE sem Fio

Com o Applied Flux instalado, um Controlador Sobrecarregado Sem Fio Avançado também pode enviar FE armazenado em sua rede ME para dispositivos que aceitam FE. Clique com o botão direito num dispositivo com o cartão vinculado para alternar a energia. A face clicada é verificada primeiro, seguida pelas outras cinco faces, parando na primeira entrada. Para um dispositivo que suporta ME e FE, um clique direito comum gerencia ambas as conexões. Interfaces e Provedores de Padrões, incluindo suas versões de painel, não podem receber FE sem fio por este recurso; seus vínculos ME permanecem disponíveis.

Segure **Ctrl + clique com o botão direito** para alternar um grupo de dispositivos. O grupo segue blocos adjacentes à face do **mesmo tipo de bloco**, incluindo orientações diferentes. Se o dispositivo clicado é alimentado por esta frequência, o grupo é desconectado; caso contrário, o grupo é conectado. Cada dispositivo seleciona sua própria face de entrada de FE. Dispositivos em outra frequência ou sem permissão são ignorados, e o resultado reporta as contagens. Esta ação altera apenas FE e preserva os vínculos ME. Também funciona segurando um terminal sem fio com o cartão instalado.

Operações em massa são enfileiradas e processadas em lotes no servidor. A conclusão reporta contagens de alterados, inalterados e ignorados com motivos de pulo. Aguarde uma tarefa em massa existente terminar antes de iniciar outra. Apenas chunks carregados são percorridos. Se mais de 8.192 blocos correspondentes contíguos forem descobertos, a operação é cancelada durante a fase de descoberta sem alterar nenhuma conexão. Se uma tarefa em lote ativa for abortada no meio, as alterações já aplicadas são mantidas.

## Conexão Automática

A visão geral do cartão tem dois interruptores independentes:

* **ME** (conexão automática de frequência) conecta blocos compatíveis ou partes AE2 a canais ME sem fio ao serem colocados.
* **FE** (conexão automática de FE) verifica a entrada de FE de uma máquina colocada antes de conectar a energia sem fio.

Desligar um interruptor apenas impede conexões automáticas futuras. Os vínculos existentes permanecem conectados. Selecione e desvincule alvos de energia sem fio existentes em **Gerenciamento de rede → Energia FE** no controlador ou no cartão.

Abra o cartão segurado ou use o botão único de cartão de frequência na barra de ferramentas de um terminal sem fio suportado. Ambos os interruptores estão na página inicial do cartão. Sem o Applied Flux, o interruptor de FE fica desativado e preferências de FE salvas não disparam conexões automáticas; a preferência é mantida para quando o Applied Flux for instalado novamente. **Shift + rolar** e o atalho **Alternar Conexão Automática do Cartão de Frequência** alteram apenas a conexão automática de frequência, deixando FE inalterada.

A colocação em massa com **Construction Sticks** também aplica as configurações ME e FE do cartão selecionado independentemente. Quando uma máquina é colocada, uma pequena sonda de energia é enviada para observar seu armazenamento interno após uma atualização. Uma máquina totalmente carregada pode conectar usando sua energia armazenada existente sem sonda; máquinas ociosas também podem conectar. Uma vez conectadas, as máquinas mantêm a conexão enquanto totalmente carregadas ou ociosas e recebem energia automaticamente quando necessário novamente. Se nenhum FE restar armazenado ou o armazenamento não puder ser verificado confiavelmente durante a admissão inicial, o vínculo automático é ignorado; a vinculação manual permanece disponível.

Cada tipo de conexão automática considera apenas cartões com seu interruptor correspondente habilitado. Se vários cartões se qualificarem, segure o cartão pretendido ou desligue a configuração correspondente nos outros.

## Slot do Curios

Quando o Curios está instalado, o Cartão de Frequência de Sobrecarga pode ser colocado no seu slot dedicado do Curios. Um cartão nesse slot participa da conexão automática e da alternância por atalho; carregar outros cartões ainda pode causar o aviso de múltiplos candidatos.

A vinculação manual por clique direito ainda exige segurar o cartão, ou segurar um terminal sem fio com um cartão vinculado instalado.

## Terminais sem Fio

Quando o AE2WTLib está instalado, o Cartão de Frequência de Sobrecarga pode ser instalado no slot de melhoria de um terminal sem fio. A tela do terminal adiciona botões de cartão de frequência para selecionar uma frequência, limpar a vinculação ou alternar a conexão automática.

Segurar um terminal sem fio com um cartão vinculado instalado pode vincular alvos clicando neles com o botão direito, igual ao comportamento do cartão na mão. Cartões instalados em terminais também podem participar da conexão automática.
