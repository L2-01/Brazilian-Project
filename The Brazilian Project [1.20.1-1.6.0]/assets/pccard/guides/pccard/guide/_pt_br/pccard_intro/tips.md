---
navigation:
  parent: index.md
  title: Dicas
  icon: minecraft:writable_book
  position: 20
---

# Dicas

## Receitas de Fabricação com Itens e Fluidos num Multibloco

Você pode usar uma sub-rede para lidar com essas receitas de fabricação com mais eficiência.  
Este mod também altera o número de circuito das máquinas dentro da sub-rede.  
Observe o diagrama a seguir.

<GameScene zoom="4" background="transparent" interactive={true}>
<ImportStructure src="../structure/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 0" max="3 1 1">
        Interface
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 2 1">
        Ponto de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 2 1">
        Ponto e Escotilha
  </BoxAnnotation>

<IsometricCamera yaw="200" pitch="30" />
</GameScene>

Defina "Report inaccessible items" como "Yes" em todos os pontos de armazenamento.  
Se deixar desativado, o modo de bloqueio pode não funcionar corretamente.  
![](../pic/storage_bus_setting.png)

Os números de circuito do Ponto e da Escotilha de Estoque ME na sub-rede também serão alterados.
