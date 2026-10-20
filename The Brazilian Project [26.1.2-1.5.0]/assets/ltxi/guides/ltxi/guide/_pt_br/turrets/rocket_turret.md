---
navigation:
    title: Atmos
    icon: rocket_turret
    parent: turrets/index.md
    position: 1
item_ids:
  - rocket_turret
---

# Torreta A/DS *Atmos*

<GameScene zoom={4} interactive={false}>
<Block id="mesh_block" y="0" />
<Block id="rocket_turret" y="-1" />
<BlockAnnotation x="0" y="-1" z="0" color="#8bd1f0">
Itens e Energia só podem ser conectados a este bloco!
</BlockAnnotation>
</GameScene>

## Atributos
- Raio de busca horizontal: 50,0
- Raio de busca vertical: 75,0
- Intervalo de busca de alvos: 5 s
- Máx. de alvos por saraivada: 4
- Dano do foguete: 40,0

## Alvos padrão

Entidades com a tag `#ltxi:targets/flying`, ex.: Espectro, Ghast, Blaze, Vórtice, Dragão de Ender, Obsessor, Wither