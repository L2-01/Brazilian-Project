---
item_ids:
  - logisticsnetworks:dimensional_upgrade
  - logisticsnetworks:mekanism_chemical_upgrade
  - logisticsnetworks:ars_source_upgrade
navigation:
  title: Melhorias Especiais
  parent: nodes/index.md
  icon: logisticsnetworks:dimensional_upgrade
  position: 5
---

# Melhorias Especiais

Três melhorias que desbloqueiam tipos de transferência e alcance que o nó base não tem. Cada uma cobre um caso de uso específico; solte-as na grade de Melhorias como qualquer outra melhoria.

## Melhoria Dimensional

![Item Melhoria Dimensional](images/dimensional-upgrade.png)

**O que faz:** permite que os canais deste nó vejam e interajam com Receptores e Emissores em **outras dimensões** e blocos **não carregados** da mesma rede.

Sem esta melhoria, os canais de um nó só podem alcançar outros nós na mesma dimensão — e apenas se os blocos entre eles estiverem carregados (dentro dos limites de carregamento de chunks). Com ela instalada, o nó pode transferir recursos entre dimensões ou para áreas de blocos não carregados.

Caso de uso típico: um Emissor no Overworld entregando a um Receptor em outra dimensão (End, Nether, dimensões de mod), ou a um Receptor numa base distante que você não tem forçado carregamento de chunk. Quando não houver certeza se a outra ponta está carregada, instale a melhoria nos dois lados.

## Melhoria Química do Mekanism

![Item Melhoria Química do Mekanism](images/mekanism-chemical-upgrade.png)

**O que faz:** adiciona o tipo **Químico** ao seletor de Tipo de cada canal. Químico refere-se ao sistema de capacidades do Mekanism para gases, pastas, pigmentos e similares — qualquer tipo químico que o bloco anexo exponha.

Sem esta melhoria, a alternância de Tipo pula Químico completamente. Com ela, você pode canalizar produtos químicos do Mekanism (cloro, lítio, sulfeto de hidrogênio, etc.) através da rede como faria com fluidos.

**Requisito:** Mekanism instalado no modpack. O item é oculto do livro e as receitas só aparecem quando o mod está presente.

## Melhoria de Fonte de Ars

![Item Melhoria de Fonte de Ars](images/ars-source-upgrade.png)

**O que faz:** adiciona o tipo **Fonte** ao seletor de Tipo de cada canal. Fonte é a mana/energia mágica do Ars Nouveau — o mesmo recurso que os Jarros de Fonte e Relés do Ars Nouveau usam.

Com ela instalada, o canal pode extrair Fonte de um Jarro de Fonte ou similar e entregá-la a outro bloco via a rede, como faria com energia comum.

**Requisito:** Ars Nouveau instalado no modpack. O item é oculto do livro e as receitas só aparecem quando o mod está presente.

## Receitas de Fabricação

<RecipeFor id="logisticsnetworks:dimensional_upgrade" />

<RecipeFor id="logisticsnetworks:mekanism_chemical_upgrade" />

<RecipeFor id="logisticsnetworks:ars_source_upgrade" />
