---
navigation:
    title: Laser
    icon: 'dimresources:laser'
    parent: index.md
    position: 5
item_ids:
    - 'dimresources:laser'
---

# Laser

## Configuração do Laser

O Laser Interdimensional é usado para minerar blocos de outros planetas. O laser deve ser colocado sobre uma estrutura feita de Pedra Dimensional e Ladrilhos de Pedra Dimensional. Exemplo mostrado abaixo

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/laser.nbt" />
</GameScene>

O Laser requer um Localizador de Planetas dentro da GUI para saber de qual planeta minerar

Alguns Planetas exigem um nível mais alto do multibloco de Laser. Os níveis de planeta variam entre 1 e 12. Para cada nível, o multibloco precisa ser um bloco mais alto

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/lasermax.nbt" />
</GameScene>
