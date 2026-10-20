---
navigation:
  parent: example-setups/example-setups-index.md
  title: Sub-rede de "Canos" de Itens/Fluidos
  icon: storage_bus
---

# Sub-rede de "Canos" de Itens/Fluidos

Um método simples de emular um cano de itens e/ou fluidos com [dispositivos](../ae2-mechanics/devices.md) do AE2, útil para, bem, qualquer coisa para que você usaria um cano de itens ou fluidos.
Isso inclui devolver o resultado de uma fabricação a um <ItemLink id="pattern_provider" />.

Há geralmente dois métodos diferentes de conseguir isso:

## Ponto de Importação -> Ponto de Armazenamento

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Ponto de Importação: Pode ser filtrado.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento que você queira que sejam um destino)
        devem ser o único armazenamento da rede.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

O <ItemLink id="import_bus" /> (1) no inventário de origem importa os itens ou fluido, e tenta armazená-los no [armazenamento da rede](../ae2-mechanics/import-export-storage.md).
Como o único armazenamento na rede é o <ItemLink id="storage_bus" /> (2) (é por isso que isto é uma sub-rede e não está na sua rede principal), os itens ou fluido
são colocados no inventário de destino, sendo assim transferidos. Energia é fornecida através de uma <ItemLink id="quartz_fiber" />.
Tanto o ponto de importação quanto o de armazenamento podem ser filtrados, mas o esquema transferirá tudo a que tiver acesso se nenhum filtro for aplicado.
Este esquema também funciona com múltiplos pontos de importação e múltiplos pontos de armazenamento.

## Ponto de Armazenamento -> Ponto de Exportação

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="3.7 0 0" max="4 1 1">
        (1) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento que você queira que sejam uma origem)
        devem ser o único armazenamento da rede.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 1">
        (2) Ponto de Exportação: Deve ser filtrado.
  </BoxAnnotation>

<DiamondAnnotation pos="4.5 0.5 0.5" color="#00ff00">
        Origem
    </DiamondAnnotation>

<DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
        Destino
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

O <ItemLink id="export_bus" /> no inventário de destino tenta puxar itens do seu filtro a partir do [armazenamento da rede](../ae2-mechanics/import-export-storage.md).
Como o único armazenamento na rede é o <ItemLink id="storage_bus" /> (é por isso que isto é uma sub-rede e não está na sua rede principal), os itens ou fluido
são puxados do inventário de origem, sendo assim transferidos. Energia é fornecida através de uma <ItemLink id="quartz_fiber" />.
Como pontos de exportação precisam ser filtrados para funcionar, este esquema só opera se você filtrar o ponto de exportação.
Este esquema também funciona com múltiplos pontos de armazenamento e múltiplos pontos de exportação.

## Um Esquema Que Não Funciona (Ponto de Importação -> Ponto de Exportação)

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

Um esquema com apenas um ponto de importação e um de exportação não funcionará. O ponto de importação tentará puxar do inventário de origem
e armazenar os itens ou fluido no armazenamento da rede. O ponto de exportação tentará puxar do armazenamento da rede e colocar os
itens ou fluido no inventário de destino. No entanto, como esta rede **não tem armazenamento**, o ponto de importação não consegue importar
e o ponto de exportação não consegue exportar, então nada acontece.

## Inserindo e Extraindo Por 1 Face

Digamos que você tenha uma máquina que pode receber entrada e ter sua saída puxada por 1 face. (Como um <ItemLink id="charger" />)
Você pode tanto empurrar os ingredientes quanto puxar o resultado, combinando os 2 métodos de sub-rede de canos:

<GameScene zoom="6" background="transparent">
  <ImportStructure src="../assets/assemblies/import_storage_export_pipe.snbt" />

<BoxAnnotation color="#dddddd" min="4 1 1" max="5 1.3 2">
        (1) Ponto de Importação: Pode ser filtrado.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 1 1" max="3 1.3 2">
        (2) Ponto de Armazenamento: Pode ser filtrado. Este (e outros pontos de armazenamento que você queira que empurrem e puxem itens)
        devem ser o único armazenamento da rede.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 1" max="3 1 2">
        (3) Coisa Para a Qual Você Quer Empurrar e De Onde Quer Puxar: Neste caso um Carregador.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 1 1" max="1 1.3 2">
        (4) Ponto de Exportação: Deve ser filtrado.
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

Acontece que há [dispositivos](../ae2-mechanics/devices.md) além de pontos de importação e de exportação que empurram itens para dentro
e puxam itens do [armazenamento da rede](../ae2-mechanics/import-export-storage.md)!
O relevante aqui é a <ItemLink id="interface" />. Se um item for inserido que a interface não está configurada para estocar, a interface
o empurrará para o armazenamento da rede, o que podemos explorar de forma semelhante ao cano ponto de importação -> ponto de armazenamento. Configurar uma interface para
estocar algum item o puxará do armazenamento da rede, semelhante ao cano ponto de armazenamento -> ponto de exportação. Interfaces podem ser configuradas para
estocar algumas coisas e não estocar outras, permitindo empurrar e puxar remotamente através de pontos de armazenamento, se você por algum motivo quiser fazer isso.

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
        Ponto de Armazenamento
  </BoxAnnotation>

<IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Um-Para-Muitos e Muitos-Para-Um (e muitos-para-muitos)

Claro, você não precisa usar apenas um <ItemLink id="import_bus" /> ou <ItemLink id="export_bus" /> ou <ItemLink id="storage_bus" />

<GameScene zoom="3" background="transparent">
<ImportStructure src="../assets/assemblies/many_to_many_pipe.snbt" />

<IsometricCamera yaw="185" pitch="30" />
</GameScene>

## Fornecendo a Múltiplos Lugares

De tudo isso, podemos derivar um método para enviar ingredientes de uma face de <ItemLink id="pattern_provider" /> para muitos
lugares diferentes, como uma fileira de máquinas, ou várias faces diferentes de uma máquina.

Não queremos um cano importação -> armazenamento nem um cano armazenamento -> exportação, porque o <ItemLink id="pattern_provider" /> nunca
contém de fato os ingredientes. Em vez disso, provedores *empurram* os ingredientes para inventários adjacentes, então precisamos de algum
inventário adjacente que também possa importar itens.

Isso soa como... uma <ItemLink id="interface" />!
Certifique-se de que o provedor esteja no modo direcional ou subparte plana e/ou a interface esteja no modo subparte plana, para que os dois não formem uma conexão
de rede.

<GameScene zoom="6" background="transparent">
<ImportStructure src="../assets/assemblies/provider_interface_storage.snbt" />

<BoxAnnotation color="#dddddd" min="2.7 0 1" max="3 1 2">
        Interface (deve ser plana, não bloco inteiro)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 0 0" max="1.3 1 4">
        Pontos de Armazenamento
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 4">
        Lugares para os quais você quer fornecer padrões (múltiplas máquinas, ou múltiplas faces de 1 máquina)
  </BoxAnnotation>

<IsometricCamera yaw="185" pitch="30" />
</GameScene>
