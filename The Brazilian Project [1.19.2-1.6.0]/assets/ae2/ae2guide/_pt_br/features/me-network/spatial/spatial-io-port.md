---
categories:
  - ME Network/Spatial
item_ids:
  - ae2:spatial_io_port
navigation:
  title: Porto de Entrada/Saída Espacial
---

![Uma imagem de um Porto de Entrada/Saída
Espacial](../../../assets/large/spatial_io_port.png)O <ItemLink
id="spatial_io_port"/> é usado para capturar e
implantar regiões do espaço definidas por <ItemLink
id="spatial_pylon"/>.

Para Capturar/Implantar uma região do espaço, você precisa primeiro construir uma [Estrutura
de Contenção Espacial](spatial-containment-structure.md); uma vez
construída e pronta, seu <ItemLink
id="spatial_io_port"/> mostrará a energia
necessária e a energia atual. O próximo passo é ajustar o
design da sua [SCS](spatial-containment-structure.md) ou construir e
alimentar as <ItemLink id="energy_cell"/>
ou <ItemLink id="dense_energy_cell"/> necessárias para atender
às exigências do <ItemLink
id="spatial_io_port"/>.

Com energia disponível e sua [SCS](spatial-containment-structure.md) válida, você precisa inserir uma <ItemLink
id="spatial_storage_cell_2"/>, <ItemLink
id="spatial_storage_cell_16"/> ou

<ItemLink id="spatial_storage_cell_128" />,
dependendo do tamanho necessário — pode ser uma célula maior ou menor.

Quando tudo estiver pronto e a célula de armazenamento estiver dentro do <ItemLink
id="spatial_io_port"/>, aplicar um sinal de redstone
ao <ItemLink id="spatial_io_port"/>
dispara a captura/implantação da célula na [SCS](spatial-containment-structure.md).

Exige um [canal](../channels.md) para funcionar.

<RecipeFor id="spatial_io_port" />
