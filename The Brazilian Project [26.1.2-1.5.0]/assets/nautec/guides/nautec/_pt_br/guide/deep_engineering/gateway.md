---
navigation:
  title: Portal
  icon: nautec:gateway
  position: 2
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:gateway
  - nautec:gateway_ring
---

# <Color id="light_purple">Portal</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="gateway" scale="2"/>
  Um anel em pé de 13 blocos de diâmetro. Tudo que atravessa seu horizonte de eventos sai por outro anel com o mesmo endereço.
</Column>

A abertura tem 9 blocos de largura, então um <ItemLink id="submarine"/> passa com cerca de três blocos de sobra de cada lado.

A base do anel tem dois blocos de espessura, então a abertura começa dois blocos acima do chão sobre o qual o anel se apoia. Debaixo d'água você pode nadar ou pilotar direto para dentro. Em terra, construa um degrau ou rampa até ela.

***

## <Color id="gold">Portais Naturais</Color>

Portais ficam no leito do oceano sobre pequenas plataformas de prismarinho. Cada um é metade de um par com seu próprio endereço, e não precisa de energia.

A primeira vez que algo atravessa um Portal natural, a outra metade do seu par é construída em outro oceano a cerca de 1.500 blocos, e você chega lá. Dali em diante os dois anéis são uma rota fixa. Nada precisa ser explorado ou carregado antes.

Portais naturais de antes dessa mudança, que todos começavam em Ciano, assumem o endereço do próprio par quando seu anel se constrói.

Você pode reafinar um Portal natural como qualquer outro. Dê a ele o endereço de um anel que você construiu e ele se liga lá em vez de à sua metade distante. Dê a ele um endereço que nenhum outro anel tenha e sua próxima viagem constrói uma nova metade distante para esse endereço.

***

## <Color id="gold">Fabricando e movendo um Portal</Color>

Um Portal fabricado vem recolhido, com o anel inteiro dentro dele. Coloque-o e o anel completo se constrói de uma vez, em pé na direção para a qual você está olhando, com a frente voltada para você.

Agache-se e clique com o botão direito em qualquer parte de um anel formado segurando uma chave (a <ItemLink id="aquarine_steel_wrench"/> ou a chave de qualquer outro mod) para recolhê-lo de novo. Você recebe um Portal recolhido de volta, mantendo seu endereço, então pode levar um Portal natural para casa e manter sua rota.

O anel se apoia no bloco do Portal e precisa de um espaço de 13 blocos de largura por 13 de altura. Ele se constrói através de ar, água, alga, erva-marinha, coral e outros blocos sobre os quais você poderia colocar algo. Se algo sólido estiver no caminho, ele espera como um Portal nu e diz onde. Use um <ItemLink id="prism_monocle"/> e olhe para o Portal para ver todos os blocos no caminho destacados em vermelho. Limpe-os e o anel se termina em alguns segundos, ou clique no Portal com o botão direito segurando uma chave para tentar de novo na hora.

Um anel formado não pode ser minerado para nada. Quebrar uma parte leva o mesmo tempo que quebrar obsidiana à mão, não deixa nada cair, e transforma o resto do anel de volta em <ItemLink id="gateway_ring"/> comum. Use uma chave no lugar.

Para consertar um anel quebrado, recoloque segmentos no círculo abaixo e clique no Portal com o botão direito segurando uma chave.

<GameScene zoom="2" background="#333333" interactive={true}>
  <Block id="nautec:gateway_ring" x="4" y="0" z="0"/>
  <Block id="nautec:gateway_ring" x="5" y="0" z="0"/>
  <Block id="nautec:gateway" x="6" y="0" z="0"/>
  <Block id="nautec:gateway_ring" x="7" y="0" z="0"/>
  <Block id="nautec:gateway_ring" x="8" y="0" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="3" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="4" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="5" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="6" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="7" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="8" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="9" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="1" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="3" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="9" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="2" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="3" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="3" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="3" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="3" z="0"/>
  <Block id="nautec:gateway_ring" x="0" y="4" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="4" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="4" z="0"/>
  <Block id="nautec:gateway_ring" x="12" y="4" z="0"/>
  <Block id="nautec:gateway_ring" x="0" y="5" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="5" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="5" z="0"/>
  <Block id="nautec:gateway_ring" x="12" y="5" z="0"/>
  <Block id="nautec:gateway_ring" x="0" y="6" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="6" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="6" z="0"/>
  <Block id="nautec:gateway_ring" x="12" y="6" z="0"/>
  <Block id="nautec:gateway_ring" x="0" y="7" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="7" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="7" z="0"/>
  <Block id="nautec:gateway_ring" x="12" y="7" z="0"/>
  <Block id="nautec:gateway_ring" x="0" y="8" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="8" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="8" z="0"/>
  <Block id="nautec:gateway_ring" x="12" y="8" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="9" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="9" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="9" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="9" z="0"/>
  <Block id="nautec:gateway_ring" x="1" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="3" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="9" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="11" y="10" z="0"/>
  <Block id="nautec:gateway_ring" x="2" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="3" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="4" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="5" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="6" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="7" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="8" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="9" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="10" y="11" z="0"/>
  <Block id="nautec:gateway_ring" x="4" y="12" z="0"/>
  <Block id="nautec:gateway_ring" x="5" y="12" z="0"/>
  <Block id="nautec:gateway_ring" x="6" y="12" z="0"/>
  <Block id="nautec:gateway_ring" x="7" y="12" z="0"/>
  <Block id="nautec:gateway_ring" x="8" y="12" z="0"/>
</GameScene>

***

## <Color id="gold">Energia</Color>

Um Portal natural que nunca foi movido não precisa de energia. Qualquer Portal que tenha sido fabricado ou movido precisa de AP: aponte um laser para o bloco do Portal na base do anel (veja [Energia de Laser](nautec:getting_started/laser_power.md)). Ele armazena 5.000 AP e usa 100 AP por tique enquanto está aberto. Abre ao acumular 2.000 AP e fica aberto até o buffer secar, então um laser fornecendo pelo menos 100 AP/t o mantém aberto enquanto alguém estiver por perto. Com um laser mais fraco ele abre por alguns segundos de cada vez, depois fecha enquanto recarrega até 2.000.

***

## <Color id="gold">Abrindo</Color>

Um anel com correspondência abre quando um jogador ou um submarino chega a cerca de 12 blocos, então você pode pilotar direto para dentro. Ele disca primeiro: a faixa de glifos gira, os chevrons do endereço acendem nas suas cores, e o horizonte de eventos irrompe aberto. Ele fecha de novo alguns segundos depois que todos saíram.

Um sinal de redstone no bloco do Portal mantém o anel fechado.

***

## <Color id="gold">Endereços</Color>

Quatro dos nove chevrons guardam o endereço: superior esquerdo, superior direito, inferior esquerdo e inferior direito, vistos de frente. Cada um pode ter uma de oito cores, dando 4.096 endereços:

Branco, Azul Claro, Ciano, Azul, Roxo, Magenta, Verde-Limão e Preto.

Mudar o endereço é gratuito. Há duas formas de fazê-lo:

* Clique com o botão direito no anel perto de um chevron de endereço segurando um desses corantes. O chevron mais próximo assume aquela cor, e o corante não é gasto.
* Clique com o botão direito no anel de mão vazia para abrir a tela de endereço. As linhas 1 a 4 são os chevrons superior esquerdo, superior direito, inferior esquerdo e inferior direito. Escolha uma cor para cada e pressione Definir.

Olhe para qualquer parte do anel com um <ItemLink id="prism_monocle"/> para ler seu endereço, se está aberto e sua energia armazenada.

***

## <Color id="gold">Viajando</Color>

Atravesse o horizonte por qualquer lado e você sai pela frente do anel correspondente, ainda se movendo na mesma velocidade e no mesmo ponto da abertura, de costas para ele. Qualquer coisa que você esteja montando vai junto, junto com quem mais estiver nela, então um submarino chega com sua tripulação a bordo. Criaturas e itens jogados também viajam.

* Se a frente do anel distante estiver bloqueada, você sai pela traseira dele. Se os dois lados estiverem bloqueados, nada acontece e você atravessa como se o anel estivesse fechado.
* Após uma viagem, nada pode atravessar um Portal de novo por 5 segundos (`gatewayCooldown` em `config/nautec-common.toml`, 100 tiques), então você não ricocheteia direto de volta.
* O anel distante pode estar num chunk descarregado. O Portal o carrega quando você viaja.
* Você sempre chega ao anel correspondente mais próximo. Se vários anéis dividirem um endereço, dê a cada par seu próprio endereço para chegar onde pretendia.

Um anel sem correspondência fica apagado e deixa tudo atravessar direto.

***

### <Color id="aqua">Receitas</Color>

<Recipe id="nautec:gateway"/>

<Recipe id="nautec:gateway_ring"/>