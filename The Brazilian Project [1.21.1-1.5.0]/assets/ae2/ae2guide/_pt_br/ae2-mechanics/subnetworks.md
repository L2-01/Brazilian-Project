---
navigation:
  parent: ae2-mechanics/ae2-mechanics-index.md
  title: Sub-redes
---

# Sub-redes

<GameScene zoom="4" interactive={true}>
<ImportStructure src="../assets/assemblies/subnet_demonstration.snbt" />

<DiamondAnnotation pos="6.5 2.5 0.5" color="#00ff00">
        Sub-rede de tubo de itens
    </DiamondAnnotation>

<DiamondAnnotation pos="5.5 2.5 0.5" color="#00ff00">
        Sub-rede de tubo de fluidos
    </DiamondAnnotation>

<DiamondAnnotation pos="4.5 2.5 0.5" color="#00ff00">
        Plano de Aniquilação filtrado
    </DiamondAnnotation>

<DiamondAnnotation pos="3.5 2.5 0.5" color="#00ff00">
        Sub-rede de Plano de Formação
    </DiamondAnnotation>

<DiamondAnnotation pos="2.5 2.5 0.5" color="#00ff00">
        Sub-rede usando a interação Interface-Ponto de Armazenamento para agir como um sub-armazenamento local que a rede
principal pode acessar
    </DiamondAnnotation>

<DiamondAnnotation pos="1.5 1.5 0.5" color="#00ff00">
        Outra sub-rede de canos de itens, para devolver os itens carregados ao Provedor de Padrões
    </DiamondAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

"Sub-rede" é um termo meio vago, mas pode-se dizer que uma sub-rede é qualquer [rede](../ae2-mechanics/me-network-connections.md) que dá suporte à sua
rede principal ou executa alguma tarefa pequena. Elas são tipicamente pequenas o bastante para não exigir controladores. Seus 2 usos principais tendem a ser:

* Restringir quais [dispositivos](../ae2-mechanics/devices.md) têm acesso a qual armazenamento (você não quer que o ponto de importação numa sub-rede de canos tenha acesso ao
    armazenamento da sua rede principal, ou ele colocará os itens nas suas células de armazenamento em vez do inventário de destino).
* Economizar canais na sua rede principal, como ter um provedor de padrões saindo para uma interface conectada a vários pontos
    de armazenamento em várias máquinas, usando 1 canal, em vez de colocar um provedor de padrões em cada máquina, usando vários canais.

Muito importante ao fazer uma sub-rede é acompanhar as [conexões de rede](../ae2-mechanics/me-network-connections.md).
Muitas vezes, as pessoas juntam uma mistureba de interfaces e pontos e coisas e esperam que seja uma sub-rede, enquanto
todos os dispositivos ainda estão conectados à rede principal por vários dispositivos de bloco inteiro.

Cabos de cores diferentes não têm nada a ver com fazer uma sub-rede, além de que eles não se conectam entre si.

Alguns exemplos:

* Uma configuração para substituir sua Lixeira/Melhoria de Vácuo por uma rede AE2 inteira que decide como melhor utilizar seu lixo. Direcionar
  itens inteligentemente para uma fileira de composteiras ou algum reciclador de mod dependendo da disponibilidade e demanda.
* Construir abstrações. Gerenciar todos os detalhes de uma operação de fabricação complexa a partir da sua sub-rede, de modo que, na perspectiva
  da sua rede principal, a fábrica inteira "parece" uma máquina só.
* Paralelismo. Substituir uma máquina lenta por 10 cópias da máquina lenta. Na perspectiva da sua rede principal,
  nada mudou, e você nem está usando mais canais.
* Um ponto de importação e um ponto de armazenamento configurados para transferir itens ou fluidos de um contêiner a outro como um tubo de itens ou fluidos.
* Um plano de aniquilação e um ponto de armazenamento, de modo que o único lugar onde o plano de aniquilação pode colocar o que quebra é o ponto de armazenamento, permitindo filtrar o plano.
* Uma interface e um plano de formação, de modo que o que for inserido na interface é empurrado para o plano de formação e colocado/derrubado no mundo.
* Uma configuração para fabricar quartzo certus automaticamente, regulada e controlada por um <ItemLink id="level_emitter" /> na rede principal.
* Um sistema de armazenamento especializado acessível pela rede principal via a interação especial ponto-de-armazenamento-em-interface, para armazenar a saída de uma fazenda sem transbordar infinitamente seu armazenamento principal.
* E por aí vai

Muito útil para fazer sub-redes é o <ItemLink id="quartz_fiber" />. Ele transfere energia entre redes sem
conectá-las, permitindo alimentar sub-redes sem precisar colocar aceitadores de energia e cabos de energia por todo lado.
