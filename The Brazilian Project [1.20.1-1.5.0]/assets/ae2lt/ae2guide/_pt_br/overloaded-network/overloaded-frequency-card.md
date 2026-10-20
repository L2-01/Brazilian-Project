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

O **Cartão de Frequência de Sobrecarga** conecta dispositivos ou partes ME diretamente a uma frequência sem fio sem precisar colocar um Receptor Sem Fio. É útil para máquinas remotas temporárias, partes de rede colocadas rapidamente, ou terminais sem fio que devem estender uma rede ME de Sobrecarga enquanto carregados.

O cartão apenas vincula alvos. A frequência em si ainda precisa ser transmitida por um **Controlador Sobrecarregado Sem Fio Avançado**. Frequências transmitidas por Controladores Sobrecarregados Sem Fio normais não podem ser usadas para vínculos de cartão de frequência.

## Vinculação

1. Coloque um **Controlador Sobrecarregado Sem Fio Avançado** na frequência alvo
2. Segure um Cartão de Frequência de Sobrecarga não vinculado e use **Shift + botão direito** naquele controlador
3. Após vincular, o cartão mostra o nome da frequência e registra o jogador vinculado

Um cartão vinculado só pode ser usado pelo jogador que o vinculou. **Shift + botão direito no ar** limpa o vínculo, mantendo a configuração de conexão automática.

## Vinculação Manual

Segure um cartão de frequência vinculado e clique com o botão direito num dispositivo de rede ME suportado, parte selecionável ou corpo de cabo para alternar o agregado físico ME inteiro.

Os vínculos são gerenciados por agregado fisicamente conectado, e não por bloco de entrada. Dispositivos adicionados a um agregado vinculado compartilham sua frequência automaticamente. Um vínculo de agregado gerenciado pode criar várias entradas sem fio transitórias conforme a demanda de canais cresce; essas entradas não são vínculos separados na UI de frequências. Juntar fisicamente agregados na mesma frequência funde seus registros de gerenciamento, e o agregado fundido adiciona mais entradas em tempo de execução se sua demanda de canais exigir. Se remover um cabo do meio dividir um agregado vinculado, cada componente sobrevivente herda a frequência: quando `A-B-C` vinculado perde `B`, tanto `A` quanto `C` permanecem vinculados. Clique com o botão direito em qualquer dispositivo, parte ou cabo do agregado para desconectá-lo.

Controladores e blocos sem um nó de grade disponível ainda não podem ser selecionados. Um agregado físico só pode usar uma frequência por vez. Se agregados com frequências diferentes forem unidos fisicamente, todas as entradas de frequência são suspensas sem apagar silenciosamente seus registros de vínculo. Dividir o agregado físico restaura o vínculo próprio de cada componente. Alternativamente, clique com o botão direito com qualquer um dos cartões correspondentes para remover apenas a frequência daquele cartão e deixar a frequência restante se recuperar.

Se o cartão reportar que a frequência está temporariamente indisponível, normalmente o transmissor não está carregado. O vínculo se recuperará quando o Controlador Sobrecarregado Sem Fio Avançado for carregado novamente.

## Conexão Automática

Quando a conexão automática está ativada, colocar blocos ou partes de AE2 tentará vincular o novo alvo com um cartão de frequência carregado disponível.

Formas de alternar a conexão automática:

* Segure o cartão, depois segure **Shift** e gire a roda do mouse
* Use o atalho "Alternar Conexão Auto. do Cartão de Frequência"
* Instale o cartão num terminal sem fio suportado e use o botão de conexão automática da tela do terminal

Se você carregar vários cartões de conexão automática ao mesmo tempo, o sistema pode não saber qual usar. Nesse caso, segure o cartão desejado ou desative a conexão automática nos outros.

## Espaço de Curios

Quando o Curios está instalado, o Cartão de Frequência de Sobrecarga pode ser colocado no seu espaço dedicado de Curios. Um cartão nesse espaço participa da conexão automática e da alternância por atalho; carregar outros cartões ainda pode causar o aviso de múltiplos candidatos.

A vinculação manual por botão direito ainda exige segurar o cartão, ou segurar um terminal sem fio com um cartão vinculado instalado.

## Terminais Sem Fio

Quando o AE2WTLib está instalado, o Cartão de Frequência de Sobrecarga pode ser instalado no espaço de melhoria de um terminal sem fio. A tela do terminal adiciona botões de cartão de frequência para selecionar uma frequência, limpar o vínculo ou alternar a conexão automática.

Segurar um terminal sem fio com um cartão vinculado instalado pode vincular alvos clicando neles com o botão direito, igual ao comportamento do cartão em mãos. Cartões instalados em terminais também podem participar da conexão automática.
