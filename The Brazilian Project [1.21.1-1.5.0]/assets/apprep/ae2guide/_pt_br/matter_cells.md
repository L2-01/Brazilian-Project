---
navigation:
    title: Célula de Armazenamento de Matéria ME
    icon: matter_cell_256k
    parent: index.md
item_ids:
    - matter_cell_housing
    - matter_cell_1k
    - matter_cell_4k
    - matter_cell_16k
    - matter_cell_64k
    - matter_cell_256k
    - mega_matter_cell_housing
    - matter_cell_1m
    - matter_cell_4m
    - matter_cell_16m
    - matter_cell_64m
    - matter_cell_256m
---

# Applied Replicatics: Célula de Armazenamento de Matéria ME

<Row>
  <ItemImage id="matter_cell_housing" scale="4"/>
  <ItemImage id="matter_cell_1k" scale="4"/>
  <ItemImage id="matter_cell_4k" scale="4"/>
  <ItemImage id="matter_cell_16k" scale="4"/>
  <ItemImage id="matter_cell_64k" scale="4"/>
  <ItemImage id="matter_cell_256k" scale="4"/>
</Row>

[Células de Armazenamento](ae2:items-blocks-machines/storage_cells.md) que podem armazenar matéria do Replication.

<GameScene zoom="6" interactive={true}>
  <ImportStructure src="structures/matter_cells.snbt" />
  <IsometricCamera yaw="195" pitch="30" />

  <BoxAnnotation color="#dddddd" min="0 0 0" max="1 1 0.3">
    Para fazê-la aparecer, use um Tanque de Matéria cheio duas vezes.
  </BoxAnnotation>
</GameScene>


As especificações básicas são as mesmas das [Células de Armazenamento](ae2:items-blocks-machines/storage_cells.md), mas ela consome 1 byte a cada 256 de matéria.

Como parte da integração com o MEGA Cells, Células de Armazenamento MEGA também estão disponíveis.

---

## Observação

Para trocar matéria com uma rede de Replicação, você precisa do <ItemLink id="replication_connector" />.
Note que ele não é compatível com blocos de outros mods que exercem funções semelhantes.
