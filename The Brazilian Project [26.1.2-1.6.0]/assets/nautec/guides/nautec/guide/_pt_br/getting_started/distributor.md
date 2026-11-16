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
  Coleta saídas de máquinas por toda a sua base e as mantém abastecidas, sem tubos.
</Column>

O Distribuidor se vincula a blocos a até 256 blocos de distância na mesma dimensão. A cada poucos tiques ele coleta suas saídas e as coloca nos baús e tanques vizinhos, e mantém suas entradas abastecidas com o que pedem. Ele move o quanto couber de cada vez, sem limite de taxa. Funciona com itens e fluidos, e com máquinas de qualquer mod.

***

## <Color id="gold">Vinculando</Color>

1. Agache e clique direito no Distribuidor com a mão vazia.
2. Agache e clique direito em cada bloco que quiser vincular, também com a mão vazia. A face que você clica é a face que o Distribuidor usa, igual ao lado em que um tubo se conecta.
3. Agache e clique direito no Distribuidor de novo quando terminar.

Agachar e clicar direito num bloco vinculado o desvincula. O vínculo termina sozinho após um minuto sem novo vínculo. Você também pode desvincular blocos pela tela do Distribuidor. Um Distribuidor comporta até 64 vínculos.

Para máquinas de outros mods a face importa: escolha a face que entrega resultados, como a parte de baixo de uma fornalha. Máquinas do NauTec seguem sua [Configuração de Lados](utilities.md), então só suas saídas são coletadas.

***

## <Color id="gold">Coletando Saídas</Color>

O Distribuidor pega tudo que consegue puxar pela face de cada vínculo e coloca nos inventários e tanques de seus seis lados. Ele só pega o que consegue depositar, então um baú cheio o faz esperar em vez de perder qualquer coisa. Blocos vinculados nunca são tratados como vizinhos dele.

***

## <Color id="gold">Abastecendo Entradas</Color>

Há duas formas de pedir entradas.

Numa máquina do NauTec, abra sua tela, segure Agachar e clique num espaço de entrada vazio com um item, ou arraste o item sobre o espaço a partir do JEI. O espaço passa a mostrar aquele item esmaecido: é uma entrada fantasma. O Distribuidor mantém aquele espaço o mais cheio que puder, e o espaço só aceita aquele item. Uma entrada fantasma ou pedido corresponde ao item exato, encantamentos e demais dados incluídos. Placas de Petri são combinadas pelo que contêm: um fantasma de placa vazia só aceita placas vazias, e um fantasma de placa com colônia aceita qualquer colônia daquela linhagem, qualquer que seja seu tamanho ou atributos. Os Analisadores Bacterianos são a exceção: um fantasma de placa vazia ali aceita qualquer colônia que ainda precise de análise. Agache e clique nele com a mão vazia para limpá-lo. Passe o mouse sobre um espaço de entrada para um lembrete.

Para qualquer bloco vinculado, do NauTec ou não, selecione-o na tela do Distribuidor e defina pedidos à direita: até nove itens e três fluidos, cada um com uma quantidade a manter no bloco. Clique num espaço de pedido com um item ou um balde cheio, ou arraste um a partir do JEI. Role sobre um pedido para mudar sua quantidade (segure Shift para mudar itens em 16 e fluidos em 10.000 mB) e clique direito nele para limpá-lo. É assim também que você abastece máquinas do NauTec sem tela, como Ácido de Gravação para a Forja de Pressão Abissal.

As entradas vêm primeiro das saídas de outras máquinas vinculadas, depois dos baús e tanques vizinhos ao Distribuidor, depois de uma rede de armazenamento vizinha (veja abaixo). Assim, o produto de uma máquina pode alimentar a próxima diretamente, e só o que sobra é exportado. Nada que um vínculo pede é coletado de volta dele.

***

## <Color id="gold">Redes de Armazenamento</Color>

Coloque uma Interface ME do Applied Energistics 2 ou uma Interface do Refined Storage encostada no Distribuidor, e ele puxa as entradas fantasma e os pedidos que seus vínculos pedem direto daquela rede inteira, itens e fluidos da mesma forma. Uma parte Interface ME num cabo também funciona, desde que esteja virada para o Distribuidor. A interface precisa de canal e energia, como para qualquer outra coisa.

Ele só pega o que a máquina comporta, e só depois de conferir que a máquina aceitará, então nada se perde ou se duplica se a máquina encher. Uma máquina que ainda aguarda um item confere com menos frequência, até a cada 5 segundos, então uma rede que não o possui custa quase nada.

As saídas que o Distribuidor coleta ainda entram na interface como em qualquer outro vizinho, o que as coloca na rede. `distributorStorageNetworks` em `config/nautec-common.toml` desliga a retirada da rede.

***

## <Color id="gold">Configurações</Color>

O alcance, o número de vínculos e a frequência com que ele se move (a cada 4 tiques) estão em `config/nautec-common.toml`.

<RecipeFor id="nautechnical_distributor"/>
