---
navigation:
  parent: example-setups/example-setups-index.md
  title: Armazenamento Local Especializado
  icon: drive
---

# Armazenamento Local Especializado

Utilizando um dos [comportamentos especiais da Interface](../items-blocks-machines/interface.md#special-interactions), uma
[sub-rede](../ae2-mechanics/subnetworks.md) pode apresentar o conteúdo de seu armazenamento à rede principal, sem conseguir
ver o armazenamento da rede principal e ocupando apenas 1 [canal](../ae2-mechanics/channels.md).

Isso é útil para armazenamento local em alguma farm, para que os itens não transbordem para o seu armazenamento principal.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="../assets/assemblies/local_storage.snbt" />

<BoxAnnotation color="#dddddd" min="4 0 0" max="5 2 1">
        (1) Algum método de importar itens (neste caso uma interface)
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 0 0" max="4 1 1">
        (2) Gabinete: Tem algumas células nele. As células devem ser filtradas para o que a farm produz.
        As células podem ter Cartões de Distribuição Igualitária e Cartões de Destruição de Sobras.
        <Row><ItemImage id="item_storage_cell_4k" scale="2" /> <ItemImage id="equal_distribution_card" scale="2" /> <ItemImage id="void_card" scale="2" /></Row>
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="3 1 0" max="4 2 0.3">
        (3) Terminal de Fabricação: Este consegue ver o conteúdo do Gabinete na sub-rede, mas não o conteúdo do armazenamento da sua rede principal.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="2 0 0" max="2.3 1 1">
        (4) Interface #2: Em sua configuração padrão.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1.7 0 0" max="2 1 1">
        (5) Ponto de Armazenamento: Tem prioridade definida acima do armazenamento principal, pode ser filtrado para o que a farm produz.
  </BoxAnnotation>

<BoxAnnotation color="#dddddd" min="1 1 0" max="2 2 0.3">
        Terminal de Fabricação: Este consegue ver tanto o conteúdo do armazenamento da rede principal *quanto* o da sub-rede.
  </BoxAnnotation>

<DiamondAnnotation pos="0 0.5 0.5" color="#00ff00">
        Para a Rede Principal
    </DiamondAnnotation>

  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

## Configurações

* A primeira <ItemLink id="interface" /> (1) simplesmente aceita itens de qualquer farm que você tenha e os empurra para a sub-rede.
* O <ItemLink id="drive" /> (2) tem algumas [células](../items-blocks-machines/storage_cells.md) nele. As células devem ser
  [particionadas](../items-blocks-machines/cell_workbench.md) para o que a farm produz.
  As células podem ter <ItemLink id="equal_distribution_card" />s e <ItemLink id="void_card" />s.
* A segunda <ItemLink id="interface" /> (4) está em sua configuração padrão.
* O <ItemLink id="storage_bus" /> tem sua [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) definida
  acima do armazenamento principal. Ele pode ser filtrado para o que a farm produz.

## Como Funciona

* A <ItemLink id="interface" /> na sub-rede mostra ao <ItemLink id="storage_bus" /> na rede principal o conteúdo do
<ItemLink id="drive" />. Isso significa que o ponto de armazenamento pode puxar itens diretamente das células no gabinete e empurrar itens para elas.
* O ponto de armazenamento está configurado com alta [prioridade](../ae2-mechanics/import-export-storage.md#storage-priority) para que os itens sejam preferencialmente
  devolvidos à sub-rede em vez de irem para o seu armazenamento principal.
* Importante: se as células da sub-rede encherem, os itens não transbordarão para a rede principal. Se a farm for do tipo
que quebra ao entupir, <ItemLink id="void_card" />s podem ser usados para deletar os itens excedentes. 
* Se a farm produzir vários itens, <ItemLink id="equal_distribution_card" />s podem impedir que um item encha todas as células
e não deixe os outros itens serem armazenados.