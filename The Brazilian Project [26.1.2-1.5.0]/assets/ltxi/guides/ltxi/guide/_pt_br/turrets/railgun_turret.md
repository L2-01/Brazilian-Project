---
navigation:
    title: Noctis
    icon: railgun_turret
    parent: turrets/index.md
    position: 2
item_ids:
  - railgun_turret
---

# Torreta A/DS *Noctis*

<GameScene zoom={4} interactive={false}>
<Block id="mesh_block" y="0" />
<Block id="railgun_turret" y="-1" />
<BlockAnnotation x="0" y="-1" z="0" color="#8bd1f0">
Itens e Energia só podem ser conectados a este bloco!
</BlockAnnotation>
</GameScene>

## Atributos
- Raio de busca horizontal: 25.0
- Raio de busca vertical: 25.0
- Intervalo de busca de alvos: 4 s
- Somente alvo único
- Dano do projétil do canhão elétrico: 200,0

## Alvos padrão

Entidades com a tag `#ltxi:targets/high_threat`, ex.: Guardião-Mestre, Dragão de Ender, Wither, Sentinela