---
navigation:
  title: Distribuidor Nautécnico
  icon: nautec:nautechnical_distributor
  position: 8
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:nautechnical_distributor
---

# <Color id="light_purple">Distribuidor Nautécnico</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="nautechnical_distributor" scale="2"/>
  Coleta produtos das máquinas por toda a sua base e as mantém abastecidas, sem canos.
</Column>

O Distribuidor se vincula a blocos a até 256 blocos de distância na mesma dimensão. A cada poucos tiques ele coleta os produtos deles e os coloca nos baús e tanques ao seu lado, e mantém as entradas deles abastecidas com o que pedem. Ele move o quanto couber a cada vez, sem limite de taxa. Funciona com itens e fluidos, e com máquinas de qualquer mod.

***

## <Color id="gold">Vinculando</Color>

1. Agache e clique com o botão direito no Distribuidor com a mão vazia.
2. Agache e clique com o botão direito em cada bloco que quiser vincular, também com a mão vazia. A face em que você clica é a face que o Distribuidor usa, como o lado em que um cano se conecta.
3. Agache e clique com o botão direito no Distribuidor de novo quando terminar.

Agachar e clicar com o botão direito num bloco já vinculado o desvincula. A vinculação termina sozinha após um minuto sem novo vínculo. Você também pode desvincular blocos pela tela do Distribuidor. Um Distribuidor comporta até 64 vínculos.

Para máquinas de outros mods a face importa: escolha a face que entrega resultados, como a base de uma fornalha. Máquinas do NauTec seguem sua [Configuração de Lados](utilities.md), então só seus produtos são coletados.

***

## <Color id="gold">Coletando Produtos</Color>

O Distribuidor pega tudo que consegue puxar pela face de cada vínculo e coloca nos inventários e tanques dos seus próprios seis lados. Ele só pega o que consegue colocar, então um baú cheio o faz esperar em vez de perder qualquer coisa. Blocos vinculados nunca são tratados como seus vizinhos.

***

## <Color id="gold">Abastecendo Entradas</Color>

Há duas formas de pedir entradas.

Numa máquina do NauTec, abra a tela dela, segure Agachar e clique num slot de entrada vazio segurando um item, ou arraste o item para o slot a partir do JEI. O slot passa a mostrar o item esmaecido: é uma entrada fantasma. O Distribuidor mantém aquele slot o mais cheio que conseguir, e o slot só aceita aquele item. Uma entrada fantasma ou um pedido corresponde ao item exato, encantamentos e demais dados incluídos. Placas de Petri são correspondidas pelo que contêm: um fantasma de placa vazia só aceita placas vazias, e um fantasma de placa contendo uma colônia aceita qualquer colônia daquela linhagem, qualquer que seja o tamanho ou os stats. Os Analisadores Bacterianos são a exceção: um fantasma de placa vazia ali aceita qualquer colônia que ainda precise de análise. Agache e clique nele com a mão vazia para limpar. Paire sobre um slot de entrada para um lembrete.

Para qualquer bloco vinculado, do NauTec ou não, selecione-o na tela do Distribuidor e defina pedidos à direita: até nove itens e três fluidos, cada um com uma quantidade a manter no bloco. Clique num slot de pedido com um item ou um balde cheio, ou arraste um do JEI. Role sobre um pedido para mudar a quantidade (segure Shift para mudar itens de 16 em 16 e fluidos de 10.000 mB) e clique com o botão direito para limpar. É assim também que você abastece máquinas do NauTec sem tela, como o Ácido de Gravação da Forja de Pressão Abissal.

As entradas vêm primeiro dos produtos de outras máquinas vinculadas, depois dos baús e tanques ao lado do Distribuidor, e então de uma rede de armazenamento ao lado dele (veja abaixo). Assim o produto de uma máquina pode alimentar a próxima diretamente, e só o que sobra é exportado. Nada que um vínculo pede é coletado de volta dele.

***

## <Color id="gold">Redes de Armazenamento</Color>

Coloque uma Interface ME do Applied Energistics 2 ou uma Interface do Refined Storage encostada no Distribuidor, e ele puxa as entradas fantasma e os pedidos que seus vínculos pedem direto daquela rede inteira, itens e fluidos igualmente. Uma parte de Interface ME num cabo também funciona, desde que fique voltada para o Distribuidor. A interface precisa de canal e energia, como para qualquer outra coisa.

Ele só pega o que a máquina tem espaço para receber, e só depois de verificar que a máquina vai aceitar, então nada se perde ou duplica se a máquina encher. Uma máquina ainda esperando um item verifica com menos frequência, até a cada 5 segundos, então uma rede que não o tem custa quase nada.

Os produtos que o Distribuidor coleta ainda vão para a interface como para qualquer outro vizinho, o que os coloca na rede. `distributorStorageNetworks` em `config/nautec-common.toml` desliga a coleta da rede.

***

## <Color id="gold">Configurações</Color>

O alcance, o número de vínculos e a frequência de movimentação (a cada 4 tiques) estão em `config/nautec-common.toml`.

<RecipeFor id="nautechnical_distributor"/>