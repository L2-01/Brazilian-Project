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
        Outra sub-rede de tubo de itens, para devolver os itens carregados ao Provedor de Padrões
    </DiamondAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

"Sub-rede" é um termo meio vago, mas pode-se dizer que uma sub-rede é qualquer rede que dá suporte à sua
rede principal ou executa alguma tarefa pequena. Elas são tipicamente pequenas o bastante para não exigir controladores. Seus 2 usos principais tendem a ser:

* Restringir quais [dispositivos](../ae2-mechanics/devices.md) têm acesso a qual armazenamento (você não quer que o ponto de importação numa sub-rede "tubo" tenha acesso ao
    armazenamento da sua rede principal, ou ele colocará os itens nas suas células de armazenamento em vez do inventário de destino).
*   Economizar canais na sua rede principal, como ter um provedor de padrões saindo para uma interface conectada a vários pontos
    de armazenamento em várias máquinas, usando 1 canal, em vez de colocar um provedor de padrões em cada máquina, usando vários canais.

Cabos de cores diferentes não têm nada a ver com fazer uma sub-rede, além de que eles não se conectam entre si.

Elas podem ser

*   um ponto de importação e um ponto de armazenamento configurados para transferir itens ou fluidos de um contêiner para outro, como um cano de itens ou fluidos
*   um plano de aniquilação e um ponto de armazenamento, de modo que o único lugar onde o plano de aniquilação pode colocar o que quebra é o ponto de armazenamento, permitindo filtrar o plano
*   uma interface e um plano de formação, de modo que o que for inserido na interface é empurrado para o plano de formação e colocado/soltado no mundo
*   um esquema para fazer quartzo certus automaticamente, regulado e controlado por um <ItemLink id="level_emitter" /> na rede principal
*   um sistema de armazenamento especializado acessível a partir da rede principal via a interação especial de ponto-de-armazenamento-em-interface, para armazenar a produção de uma farm sem transbordar infinitamente seu armazenamento principal
*   e assim por diante

Muito útil para fazer sub-redes é o <ItemLink id="quartz_fiber" />. Ele transfere energia entre redes sem
conectá-las, permitindo alimentar sub-redes sem precisar colocar aceitadores de energia e cabos de energia por todo lado.
