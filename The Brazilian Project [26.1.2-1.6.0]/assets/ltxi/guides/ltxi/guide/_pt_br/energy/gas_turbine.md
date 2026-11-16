---
navigation:
    title: "Turbina a Gás"
    icon: gas_turbine
    parent: energy/index.md
    position: 12
item_ids:
  - gas_turbine
---

# Turbina a Gás

<GameScene zoom={4} interactive={false}>
<Block id="gas_turbine" />
<Block id="mesh_block" x="1" z="1" />
<Block id="mesh_block" x="1" y="1" z="1" />
<Block id="mesh_block" x="-1" y="1" z="2" />

<BoxAnnotation min="1 0 1" max="2 2 2" color="#8bd1f0">
Fluidos e energia podem ser conectados a estas 2 portas. A energia é ejetada automaticamente a cada tique; os fluidos
precisam ser empurrados manualmente para dentro.
</BoxAnnotation>
</GameScene>

Geradores Portáteis e Painéis Solares podem dar o pontapé inicial ao seu posto avançado ou base inicial, mas você
acabará precisando migrar para uma fonte de energia mais permanente e forte. O [Metano](../resources/elements_compound.md#methane)
contém muita energia, mas você vai precisar de tecnologia avançada para convertê-lo devidamente em energia.

A Turbina a Gás é bem mais cara que os geradores menores, precisa ser [Fabricada](../machines/processing/fabricators.md)
e ocupa mais espaço. Mas sua geração de energia e eficiência superam de longe as das soluções menores.
