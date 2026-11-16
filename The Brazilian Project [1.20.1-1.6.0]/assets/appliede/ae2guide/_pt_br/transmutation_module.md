---
navigation:
  parent: appliede-index.md
  title: Módulo de Transmutação
  icon: emc_module
  position: 0
categories:
  - appliede
item_ids:
  - appliede:emc_module
---

# Módulo de Transmutação

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assemblies/transmutation_module.snbt" />
</GameScene>

O **Módulo de Transmutação ME** é o primeiro passo para a manipulação de EMC e operações alquímicas dentro da sua rede
ME. Quando conectado *em qualquer ponto* de uma rede ME, o módulo aproveita o conhecimento e a energia do alquimista
que o colocou e fornece à rede o EMC do alquimista como um recurso distinto, desbloqueando a capacidade da rede ME de
manipular diretamente esse EMC para a transmutação de itens na autofabricação e outras operações relacionadas.
Esses itens também são fornecidos à rede como padrões de fabricação gerados automaticamente pelo módulo, com
o valor equivalente de EMC usado como ingrediente de fabricação de cada item.

![Armazenamento de EMC](diagrams/emc_storage.png)

Vários módulos podem ser colocados numa rede por qualquer número de jogadores diferentes, mas apenas um módulo por
alquimista contribuirá para o valor de EMC armazenado e para os itens conhecidos "fabricáveis" disponíveis. Quando
vários módulos estão presentes numa rede, o EMC fornecido por cada módulo é reunido num único armazenamento unificado
montado na rede por apenas um módulo por vez, e qualquer EMC inserido ou extraído será distribuído igualmente (na
medida do possível) entre todos os jogadores provedores de EMC.

O módulo também inclui proteções adicionais para evitar problemas de estouro nas redes ME, adicionando um sistema de
*níveis* ao EMC armazenado numa rede, baseado em potências sucessivas de um número arbitrariamente grande (10^12) de
unidades de EMC. Cada nível é representado por uma cor diferente da unidade base de EMC e pode ser "fabricado para
baixo" em níveis inferiores conforme necessário para qualquer trabalho de transmutação mais exigente em execução.

![Níveis de EMC](diagrams/emc_tiers.png)

Esteja ciente, porém, de que com o poder que este módulo oferece vem um alto custo de energia padrão de 25 AE/tique,
talvez mais, talvez menos, dependendo da configuração.

## Receita

<RecipeFor id="appliede:emc_module" />
