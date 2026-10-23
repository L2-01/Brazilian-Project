---
navigation:
    title: Ionos
    icon: arc_turret
    parent: turrets/index.md
    position: 0
item_ids:
  - arc_turret
---

# Torreta A/DS *Ionos*

<GameScene zoom={4} interactive={false}>
<Block id="mesh_block" y="0" />
<Block id="arc_turret" y="-1" />
<BlockAnnotation x="0" y="-1" z="0" color="#8bd1f0">
Itens e Energia só podem ser conectados neste bloco!
</BlockAnnotation>
</GameScene>

## Atributos
- Raio de busca horizontal: 30.0
- Raio de busca vertical: 20.0
- Intervalo de busca de alvos: 1.5 seg
- Dano base: 2.0 / tique

## Alvos padrão

Qualquer entidade com hostilidade **Inimigo Neutro** ou maior.

## Sobre

A *Ionos* seleciona até 16 alvos numa operação de **Busca**. Ela escolhe o mais próximo como alvo primário, que ataca
continuamente até o alvo morrer ou sair do alcance. Depois seleciona o próximo alvo válido da fila, ou volta ao modo
**Busca**.
