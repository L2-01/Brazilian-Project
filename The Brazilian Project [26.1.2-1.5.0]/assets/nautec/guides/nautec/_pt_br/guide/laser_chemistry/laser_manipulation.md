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
  Leve Energia Aquática (AP) de uma fonte até as máquinas que funcionam com ela.
</Column>

## <Color id="gold">Como um Feixe Funciona</Color>

Toda máquina do NauTec funciona com Energia Aquática, carregada por um feixe de laser. Um feixe é uma taxa, medida em AP por tique. Nada no caminho a armazena, e as máquinas não a consomem: uma máquina roda enquanto AP suficiente por tique estiver chegando.

* Um feixe viaja em linha reta, até 16 blocos a partir da maioria dos blocos de laser e 64 de um relé (ambos configuráveis).
* O primeiro bloco com hitbox no seu caminho o para. Água, vidro e painéis de vidro não, vidro tingido incluído, então você pode encaixotar um feixe em vidro para manter gente fora dele. Um bloco de laser baixo como o Carregador captura um feixe vindo pela lateral, mesmo que o feixe passe por cima dele.
* Só conecta quando o bloco na outra ponta aceita um feixe na face que ele atinge. Conexões são reverificadas a cada meio segundo.
* Um feixe energizado queima qualquer criatura ou jogador parado nele, duas vezes por segundo. O dano de cada golpe cresce com a raiz quadrada da potência do feixe, a mesma curva pela qual as máquinas aceleram: um feixe de 10 AP causa 3 de dano (um coração e meio), um de 40 AP causa 6, um de 160 AP causa 12 e um de 1.000 AP causa 30. Resistência ao Fogo o bloqueia. `laserDamage`, `laserDamageReferencePower`, `laserDamageScaling` e `laserDamageMax` em `config/nautec-common.toml` mudam isso.
* Um item jogado num feixe energizado pode ser transformado por [Transformação de Itens](nautec:getting_started/item_transformation.md).

Feixes também carregam pureza, que algumas receitas precisam. Veja [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) para como o roteamento a muda.

<Color id="gold">Dica</Color>: o <ItemLink id="prism_monocle"/> mostra a potência e a pureza chegando a qualquer bloco de laser que você olhar.

***

## <Color id="gold">O que as Máquinas Precisam</Color>

| Máquina | AP por tique necessário |
|---|---|
| [Misturador](mixer.md) | 10 ou mais |
| [Dreno do Mar Profundo](drain.md) | mais de 20 |
| [Carregador](charger.md) | qualquer quantia (o item pega o que o feixe entrega, até seu limite de entrada) |
| [Estação de Pesca](fishing_station.md) | 1 ou mais |
| [Gerador Confinado](confined_spawner.md) | 50 para rodar sem parar (menos o roda em rajadas) |

Um <ItemLink id="aquatic_catalyst"/> queimando Fragmentos de Prismarinho envia 12 AP por tique, e queimando Fragmentos de Cristal de Prismarinho envia 20. Queimando Cristais de Prismarinho envia 6. Os requisitos das máquinas acima são configuráveis.

***

<Row>
  <ItemImage id="prismarine_laser_relay"/>
  ### <Color id="aqua">Relé de Laser de Prismarinho</Color>
</Row>

Recebe um feixe por trás e o emite pela frente, até 64 blocos (`relayLaserDistance`). Potência e pureza passam inalteradas, então encadeie relés para cobrir qualquer distância. Relés podem ficar submersos.

Um relé se alinha sozinho quando você o coloca contra outro bloco de laser. Coloque-o na face emissora de uma fonte (a lente de um catalisador, a frente de outro relé) e ele recebe aquele feixe e o passa adiante para longe da fonte. Coloque-o numa máquina que aceita feixe e ele aponta para dentro dela. Contra qualquer outra coisa, sua frente aponta para onde você está olhando. Para mirá-lo, clique nele com o botão direito e a mão vazia. A tela mostra as seis faces, com Frontal sendo a face apontada para você, então faces encostadas em outros blocos continuam fáceis de alcançar. Clique numa face para disparar o feixe por ela, ou clique com o botão direito numa face para receber o feixe ali; a face oposta sempre assume o outro papel. Você também pode clicar nele com o botão direito segurando uma <ItemLink id="aquarine_steel_wrench"/> no modo Girar para virá-lo para a próxima direção.

<RecipeFor id="prismarine_laser_relay"/>

***

<Row>
  <ItemImage id="laser_junction"/>
  ### <Color id="aqua">Junção de Laser</Color>
</Row>

Funde feixes e os envia para onde você escolher. Cada uma das suas seis faces pode ser uma entrada, uma saída ou fechada, e todas começam fechadas.

* Clique nela com o botão direito e a mão vazia para abrir uma tela com as seis faces, com Frontal sendo a face apontada para você. Clique numa face para alterná-la entre Desligado, Entrada e Saída, ou clique com o botão direito para voltar. Isso alcança faces encostadas em outros blocos.
* Clique com o botão direito numa face segurando uma <ItemLink id="aquarine_steel_wrench"/> para torná-la uma entrada. Faça de novo para fechá-la.
* Shift + botão direito numa face para torná-la uma saída. Faça de novo para fechá-la.

A potência de toda entrada é somada e dividida igualmente entre as saídas conectadas, arredondando para baixo. Duas saídas de uma entrada de 25 AP recebem 12 AP cada. A pureza fica perto da entrada mais pura, perdendo um quarto da diferença até a média de todas as entradas conectadas. Uma fonte que ficou ociosa conta como zero, então uma entrada vazia ainda puxa a pureza um pouco para baixo.

Cada saída também pode ser limitada. Na tela de faces, role sobre uma saída para definir o máximo de AP que ela envia por tique; segure Shift para andar de 1 em 1 ou Ctrl para andar de 10 em 10, e role para baixo passando de 1 para remover o limite. O que uma saída limitada não pega é dividido entre as outras saídas em vez de repartido igualmente. Isso deixa um feixe rodar uma fileira de máquinas: dê a cada máquina uma junção cuja saída para a máquina está limitada ao que ela precisa e cuja outra saída segue para a próxima junção. Um feixe de 100 AP então roda quatro máquinas de 20 AP, com 80, 60 e 40 AP passando pela fileira, em vez de dividir pela metade a cada junção. O Cartão de Configuração copia os limites junto das faces.

Use uma para somar duas fontes fracas, por exemplo dois catalisadores num [Dreno do Mar Profundo](drain.md). Ela também vira um feixe numa esquina (uma entrada, uma saída noutra face) e divide um feixe igualmente entre até cinco máquinas, sem perda de pureza nos dois casos.

<RecipeFor id="laser_junction"/>

***

## <Color id="gold">Rotas Mais Longas e Dobradas</Color>

Encadeie relés para distância, e use uma Junção de Laser onde o feixe tiver que virar ou dividir. [Óptica de Feixes](nautec:deep_engineering/beam_optics.md) cobre a Lente de Focalização, que eleva a pureza. Para energia que precise cruzar o mapa ou alcançar outra dimensão, veja o [Satélite Prismático](nautec:deep_engineering/prism_satellite.md).

***

## <Color id="gold">Túnel P2P de Laser</Color>

Com o Applied Energistics 2 instalado, um feixe também pode viajar por uma rede ME. Clique com o botão direito num Túnel P2P ME segurando um Relé de Laser de Prismarinho ou uma Junção de Laser para transformá-lo num Túnel P2P de Laser, então vincule os túneis com um Cartão de Memória como qualquer outro Túnel P2P.

* Dispare um feixe na face do túnel de entrada, a partir de qualquer bloco de laser ao alcance. O feixe conecta a ele da mesma forma que conecta a uma máquina.
* Cada túnel de saída energiza o bloco de laser contra o qual sua face está encostada, como se um feixe chegasse por aquele lado. O bloco precisa aceitar feixe naquela face.
* A potência é dividida igualmente entre as saídas que têm um bloco para energizar, e a pureza passa inalterada. Duas saídas de um feixe de 100 AP recebem 50 AP cada.
* Os túneis precisam de canal e energia da rede ME como qualquer Túnel P2P. Sem eles o feixe ainda chega à entrada, mas nada sai.

Um túnel de saída nunca realimenta um feixe para um bloco que já está a montante dele, então um laço por um túnel não consegue multiplicar energia.