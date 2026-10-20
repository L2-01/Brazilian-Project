---
navigation:
  parent: example-setups/example-setups-index.md
  title: Um Exemplo de "Rede Principal"
  icon: controller
---

# Um Exemplo de "Rede Principal"

Muitos outros esquemas fazem referência a uma "Rede Principal". Você também pode se perguntar como todos esses [dispositivos](../ae2-mechanics/devices.md) se
juntam num sistema funcional. Aqui está um exemplo:

<GameScene zoom="2.5" interactive={true}>
  <ImportStructure src="../assets/assemblies/treelike_network_structure.snbt" />

    <BoxAnnotation color="#dddddd" min="3.9 0 1.9" max="9.1 5 7.1" thickness="0.05">
        Um grande conjunto de provedores de padrões e montadores dá muito espaço para padrões de fabricação, corte de pedra e ferraria.
        O padrão xadrez permite aos provedores utilizar vários montadores em paralelo mantendo tudo compacto.
        Grupos de 8 tornam impossível que os canais sejam roteados incorretamente.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="3.9 0 9.9" max="5.1 3 12.1" thickness="0.05">
        Algumas máquinas, com uma sub-rede de canos para empurrar suas saídas para os provedores.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="-0.1 0 8.9" max="1.1 3 13.1" thickness="0.05">
      Alguns terminais e bugigangas utilitárias variadas. (você provavelmente quer só um terminal de fabricação, não um terminal comum _e_ um terminal de fabricação)
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="-0.1 0 -0.1" max="2.1 3 8.1" thickness="0.05">
      Um conjunto de CPUs de fabricação. Algumas com quantidades maiores de armazenamento e mais algumas com quantidades menores.
      Você provavelmente vai querer mais co-processadores num esquema real, mas isso ficaria grande demais para esta cena.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="5.9 0 13.9" max="7.1 1 15.1" thickness="0.05">
      Seu controlador deve ficar no meio da sua base, e provavelmente um pouco maior que isso. Um formato de bastão é bem bom.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="11.9 0 7.9" max="13.1 4 13.1" thickness="0.05">
        Vários métodos de armazenamento, com gabinetes ou pontos de armazenamento. Note que todos estão em grupos de 8.
    </BoxAnnotation>

    <BoxAnnotation color="#dddddd" min="10.9 0 0.9" max="13.1 2 7.1" thickness="0.05">
        Vários métodos de armazenamento, com gabinetes ou pontos de armazenamento. Note que todos estão em grupos de 8.
    </BoxAnnotation>

  <IsometricCamera yaw="315" pitch="30" />
</GameScene>
