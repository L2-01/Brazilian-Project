---
navigation:
  parent: example-setups/example-setups-index.md
  title: Sub-rede de "Tubulação" de Itens/Fluidos
  icon: storage_bus
---

# Sub-rede de "Tubulação" de Itens/Fluidos

Um método simples de emular um tubo de itens e/ou fluidos com [dispositivos](../ae2-mechanics/devices.md) do AE2, útil para, bem, qualquer coisa para a qual você usaria um tubo de itens ou fluidos.
Isso inclui devolver o resultado de uma fabricação a um <ItemLink id="pattern_provider" />.

Há geralmente dois métodos diferentes de fazer isso:

## Ponto de Importação -> Ponto de Armazenamento

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Ponto de Importação: Pode ser filtrado.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento que você queira como destino)
        deve ser o único armazenamento da rede.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

O <ItemLink id="import_bus" /> (1) no inventário de origem importa os itens ou fluido e tenta armazená-los no [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
Como o único armazenamento da rede é o <ItemLink id="storage_bus" /> (2) (é por isso que é uma sub-rede e não está na sua rede principal), os itens ou fluido
são colocados no inventário de destino, sendo assim transferidos. A energia é fornecida por uma <ItemLink id="quartz_fiber" />.
Tanto o ponto de importação quanto o ponto de armazenamento podem ser filtrados, mas a configuração transferirá tudo a que tiver acesso se nenhum filtro for aplicado.
Esta configuração também funciona com vários pontos de importação e vários pontos de armazenamento.

## Ponto de Armazenamento -> Ponto de Exportação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento que você queira como fonte)
        deve ser o único armazenamento da rede.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Ponto de Exportação: Precisa ser filtrado.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

O <ItemLink id="export_bus" /> no inventário de destino tenta puxar os itens de seu filtro do [armazenamento de rede](../ae2-mechanics/import-export-storage.md).
Como o único armazenamento da rede é o <ItemLink id="storage_bus" /> (é por isso que é uma sub-rede e não está na sua rede principal), os itens ou fluido
são puxados do inventário de origem, sendo assim transferidos. A energia é fornecida por uma <ItemLink id="quartz_fiber" />.
Como os pontos de exportação precisam ser filtrados para funcionar, esta configuração só opera se você filtrar o ponto de exportação.
Esta configuração também funciona com vários pontos de armazenamento e vários pontos de exportação.

## Uma Configuração Que Não Funciona (Ponto de Importação -> Ponto de Exportação)

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_export_pipe.snbt" />

<BoxAnnotation color="#dd3333" min="3.7 0 0" max="4 1 1">
        Ponto de Importação: Como a rede não tem armazenamento, não há para onde importar.
  </BoxAnnotation>

<BoxAnnotation color="#dd3333" min="1 0 0" max="1.3 1 1">
        (2) Ponto de Exportação: Como a rede não tem armazenamento, não há nada para exportar.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#ff0000">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#ff0000">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Uma configuração só com um ponto de importação e um de exportação não funcionará. O ponto de importação tentará puxar do inventário de origem
e armazenar os itens ou fluido no armazenamento de rede. O ponto de exportação tentará puxar do armazenamento de rede e colocar os
itens ou fluido no inventário de destino. Porém, como esta rede **não tem armazenamento**, o ponto de importação não pode importar
e o ponto de exportação não pode exportar, então nada acontece.

## Entrada e Saída por 1 Face

Digamos que você tenha uma máquina que pode receber entrada e ter sua saída puxada por 1 face. (Como um <ItemLink id="charger" />)
Você pode tanto empurrar os ingredientes quanto puxar o resultado, combinando os 2 métodos de sub-rede de tubulação:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="4 1 1" max="5 1.3 2">
        (1) Ponto de Importação: Pode ser filtrado.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (2) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento pelos quais você queira empurrar e puxar itens)
        deve ser o único armazenamento da rede.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (3) Coisa Para a Qual Você Quer Empurrar e De Onde Puxar: Neste caso um Carregador.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 1" max="1 1.3 2">
        (4) Ponto de Exportação: Precisa ser filtrado.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 1.5" color="#00ff00">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 1.5" color="#00ff00">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Interfaces

Acontece que existem [dispositivos](../ae2-mechanics/devices.md) além dos pontos de importação e exportação que empurram itens para dentro
e puxam itens do [armazenamento de rede](../ae2-mechanics/import-export-storage.md)!
O relevante aqui é a <ItemLink id="interface" />. Se um item que a interface não está configurada para estocar for inserido, a interface o
empurrará para o armazenamento de rede, o que podemos explorar de forma parecida com o tubo ponto de importação -> ponto de armazenamento. Configurar uma interface para
estocar algum item o puxará do armazenamento de rede, parecido com o tubo ponto de armazenamento -> ponto de exportação. Interfaces podem ser configuradas para
estocar algumas coisas e não outras, permitindo empurrar e puxar remotamente através de pontos de armazenamento, se você por algum motivo quiser fazer isso.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/interface_pipes.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        Interface
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        Ponto de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3.7 0 2" max="4 1 3">
        Ponto de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 2" max="1 1.3 3">
        Interface
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Um-Para-Muitos e Muitos-Para-Um (e muitos-para-muitos)

Claro, você não precisa usar apenas um <ItemLink id="import_bus" /> ou <ItemLink id="export_bus" /> ou <ItemLink id="storage_bus" />

<GameScene zoom="3" background="transparent">
<ImportStructure src="../assets/assemblies/many_to_many_pipe.snbt" />

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## Provendo Para Vários Lugares

A partir de tudo isso, podemos derivar um método para enviar ingredientes de uma face de <ItemLink id="pattern_provider" /> para vários
lugares diferentes, como um conjunto de máquinas ou várias faces diferentes de uma máquina.

Não queremos um tubo importação -> armazenamento nem armazenamento -> exportação porque o <ItemLink id="pattern_provider" /> nunca
contém de fato os ingredientes. Em vez disso, os provedores *empurram* os ingredientes para inventários adjacentes, então precisamos de algum
inventário adjacente que também possa importar itens.

Isso parece... uma <ItemLink id="interface" />!
Certifique-se de que o provedor esteja no modo direcional ou de subparte plana e/ou a interface esteja no modo de subparte plana, para que os dois não formem uma
conexão de rede.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (precisa ser plana, não de bloco cheio)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer prover padrões (várias máquinas ou várias faces de 1 máquina)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>
