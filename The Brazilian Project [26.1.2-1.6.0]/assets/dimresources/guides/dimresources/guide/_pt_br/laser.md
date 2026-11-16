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

O Laser Interdimensional é usado para minerar blocos de outros planetas. O laser precisa ser colocado sobre uma estrutura feita de Pedra Dimensional e Ladrilhos de Pedra Dimensional. Exemplo abaixo.

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/laser.nbt" />
</GameScene>

O Laser precisa de um Localizador de Planetas dentro da interface para saber de qual planeta minerar.

Alguns planetas exigem um nível mais alto do multibloco do Laser. Os níveis dos planetas variam entre 1 e 12. Para cada nível, o multibloco precisa ser um bloco mais alto.

<GameScene zoom="1" interactive={true}>
  <ImportStructure src="assets/structures/lasermax.nbt" />
</GameScene>
