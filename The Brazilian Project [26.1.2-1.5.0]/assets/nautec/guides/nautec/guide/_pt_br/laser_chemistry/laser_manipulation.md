---
navigation:
  title: Movendo Energia de Laser
  icon: nautec:laser_junction
  position: 0
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:prismarine_laser_relay
  - nautec:laser_junction
---

# <Color id="light_purple">Movendo Energia de Laser</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="laser_junction" scale="2"/>
  Leve Energia Aquática (AP) de uma fonte às máquinas que funcionam com ela.
</Column>

## <Color id="gold">Como um Feixe Funciona</Color>

Toda máquina do NauTec funciona com Energia Aquática, carregada por um feixe de laser. Um feixe é uma taxa, medida em AP por tique. Nada no caminho a armazena, e as máquinas não a consomem: uma máquina funciona enquanto AP por tique suficiente estiver chegando.

* Um feixe viaja em linha reta, até 16 blocos da maioria dos blocos de laser e 64 de um relé (ambos configuráveis).
* O primeiro bloco com hitbox no caminho o para. Água, vidro e painéis de vidro não, vidro colorido incluído, então você pode fechar um feixe em vidro para manter gente longe dele. Um bloco de laser baixo como o Carregador apanha um feixe vindo de lado, mesmo o feixe passando por cima dele.
* Ele só conecta quando o bloco do outro lado aceita feixe na face atingida. As conexões são reconferidas a cada meio segundo.
* Um feixe energizado queima qualquer mob ou jogador parado nele, duas vezes por segundo. O dano de cada golpe cresce com a raiz quadrada da potência do feixe, a mesma curva pela qual as máquinas aceleram: um feixe de 10 AP causa 3 de dano (um coração e meio), um de 40 AP causa 6, um de 160 AP causa 12 e um de 1.000 AP causa 30. Resistência ao Fogo bloqueia. `laserDamage`, `laserDamageReferencePower`, `laserDamageScaling` e `laserDamageMax` em `config/nautec-common.toml` mudam isso.
* Um item solto num feixe energizado pode ser transformado por [Transformação de Itens](nautec:getting_started/item_transformation.md).

Os feixes também carregam pureza, que algumas receitas exigem. Veja [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) para como o roteamento a altera.

<Color id="gold">Dica</Color>: o <ItemLink id="prism_monocle"/> mostra a potência e a pureza chegando a qualquer bloco de laser que você olhe.

***

## <Color id="gold">Do Que as Máquinas Precisam</Color>

| Máquina | AP por tique de que precisa |
|---|---|
| [Misturador](mixer.md) | 10 ou mais |
| [Dreno do Mar Profundo](drain.md) | mais de 20 |
| [Carregador](charger.md) | qualquer quantia (o item recebe o que o feixe entrega, até seu limite de entrada) |
| [Estação de Pesca](fishing_station.md) | 1 ou mais |
| [Gerador Confinado](confined_spawner.md) | 50 para funcionar sem parar (menos o faz em rajadas) |

Um <ItemLink id="aquatic_catalyst"/> queimando Fragmentos de Prismarinho envia 12 AP por tique, e queimando Fragmentos de Cristal de Prismarinho envia 20. Queimando Cristais de Prismarinho envia 6. As exigências das máquinas acima são configuráveis.

***

<Row>
  <ItemImage id="prismarine_laser_relay"/>
  ### <Color id="aqua">Relé de Laser de Prismarinho</Color>
</Row>

Recebe um feixe por trás e o envia pela frente, até 64 blocos (`relayLaserDistance`). Potência e pureza passam inalteradas, então encadeie relés para cobrir qualquer distância. Relés podem ficar embaixo d'água.

Um relé se alinha sozinho quando você o coloca contra outro bloco de laser. Coloque-o na face emissora de uma fonte (a lente de um catalisador, a frente de outro relé) e ele recebe aquele feixe e o repassa para longe da fonte. Coloque-o numa máquina que aceita feixe e ele aponta para dentro dela. Contra qualquer outra coisa, sua frente aponta para onde você olha. Para mirá-lo, clique direito com a mão vazia. A tela mostra as seis faces, com Frente sendo a face virada para você, então faces coladas a outros blocos continuam fáceis de alcançar. Clique numa face para disparar o feixe por ela, ou clique direito numa face para receber o feixe ali; a face oposta sempre assume o outro papel. Você também pode clicar direito nele com uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar para virá-lo à próxima direção.

<RecipeFor id="prismarine_laser_relay"/>

***

<Row>
  <ItemImage id="laser_junction"/>
  ### <Color id="aqua">Junção de Laser</Color>
</Row>

Funde feixes e os envia para onde você escolher. Cada uma de suas seis faces pode ser entrada, saída ou fechada, e todas começam fechadas.

* Clique direito com a mão vazia para abrir uma tela com as seis faces, com Frente sendo a face virada para você. Clique numa face para alterná-la entre Desligado, Entrada e Saída, ou clique direito para voltar. Isso alcança faces coladas a outros blocos.
* Clique direito numa face com uma <ItemLink id="aquarine_steel_wrench"/> para torná-la entrada. Repita para fechá-la.
* Shift+clique direito numa face para torná-la saída. Repita para fechá-la.

A potência de todas as entradas é somada e dividida igualmente entre as saídas conectadas, arredondada para baixo. Duas saídas de uma entrada de 25 AP recebem 12 AP cada. A pureza fica próxima da entrada mais pura, perdendo um quarto da diferença até a média de todas as entradas conectadas. Uma fonte que ficou ociosa conta como zero, então uma entrada vazia ainda derruba um pouco a pureza.

Cada saída também pode ser limitada. Na tela de faces, role sobre uma saída para definir o máximo de AP que ela envia por tique; segure Shift para avançar de 1 em 1 ou Ctrl de 10 em 10, e role abaixo de 1 para remover o limite. O que uma saída limitada não usa é dividido entre as demais em vez de repartido igualmente. Isso permite que um feixe opere uma fileira de máquinas: dê a cada máquina uma junção cuja saída para a máquina está limitada ao que ela precisa e cuja outra saída segue para a próxima junção. Um feixe de 100 AP então opera quatro máquinas de 20 AP, com 80, 60 e 40 AP passando pela fileira, em vez de dividir pela metade em cada junção. O Cartão de Configuração copia os limites junto das faces.

Use uma para somar duas fontes fracas, por exemplo dois catalisadores num [Dreno do Mar Profundo](drain.md). Ela também dobra um feixe num canto (uma entrada, uma saída noutra face) e divide um feixe igualmente entre até cinco máquinas, sem perda de pureza em nenhum dos casos.

<RecipeFor id="laser_junction"/>

***

## <Color id="gold">Rotas Longas e Dobradas</Color>

Encadeie relés para distância, e use uma Junção de Laser onde o feixe precisar virar ou dividir. [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) cobre a Lente de Focalização, que aumenta a pureza. Para energia que precise cruzar o mapa ou alcançar outra dimensão, veja o [Satélite Prismático](nautec:deep_engineering/prism_satellite.md).

***

## <Color id="gold">Túnel P2P de Laser</Color>

Com o Applied Energistics 2 instalado, um feixe também pode viajar por uma rede ME. Clique direito num Túnel P2P ME com um Relé de Laser de Prismarinho ou uma Junção de Laser para transformá-lo num Túnel P2P de Laser, depois vincule os túneis com um Cartão de Memória como qualquer outro Túnel P2P.

* Dispare um feixe na face do túnel de entrada, de qualquer bloco de laser no alcance. O feixe conecta nele do mesmo jeito que conecta numa máquina.
* Cada túnel de saída energiza o bloco de laser contra o qual sua face está, como se um feixe chegasse por aquele lado. O bloco precisa aceitar feixe naquela face.
* A potência é dividida igualmente entre as saídas que têm um bloco para energizar, e a pureza passa inalterada. Duas saídas de um feixe de 100 AP recebem 50 AP cada.
* Os túneis precisam de canal e energia da rede ME como qualquer Túnel P2P. Sem eles o feixe ainda chega à entrada, mas nada sai.

Um túnel de saída nunca realimenta um feixe num bloco que já esteja a montante dele, então um loop por um túnel não consegue multiplicar energia.
