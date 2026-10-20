---
navigation:
  title: TNT de Sobrecarga
  icon: ae2lt:overload_tnt
  parent: lightning/lightning-index.md
  position: 90
item_ids:
  - ae2lt:overload_tnt
---

# TNT de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overload_tnt" scale="4" />
</Row>

A **TNT de Sobrecarga** é um foguete com uma Singularidade de Sobrecarga enfiada dentro. Ela não é um consumível rotineiro de linha de produção — acendê-la parece mais um **desastre natural controlado**: raios despencam do céu e varrem a área ao redor da explosão, em vez de produzir uma única explosão barulhenta.

Na maioria das vezes você a usa para minerar terreno específico, limpar trechos de rocha dura, ou demonstrar a visitantes exatamente por que pesquisadores por aqui precisam de corrimãos.

## Fabricação

<RecipeFor id="ae2lt:overload_tnt" />

A **Singularidade de Sobrecarga** no centro é o que realmente faz o trabalho; a pólvora nos cantos está ali só para dar a ela uma desculpa para explodir.

## Comportamento da Detonação

Após a ignição ou ativação, a TNT de Sobrecarga tem uma mecha de cerca de **4 segundos**. Na detonação, os efeitos ocorrem na seguinte sequência:

1. Um **raio de abertura** atinge diretamente acima do centro da explosão, seguido de vários raios que caem para fora em anéis em camadas, **chamuscando o terreno** — este é o efeito destrutivo principal, e seu alcance é grande.
2. Na detonação, **todas as criaturas numa área ampla ao redor do centro da explosão sofrem dano pesado de raio**. O dano cai com a distância, mas o raio interno é letal.
3. Após a primeira onda, um período de **réplicas** continua por vários segundos, derrubando descargas aleatórias adicionais pela área.
4. Uma curta rajada de **tempo de tempestade** é forçada na área ao redor do centro da explosão, revertendo depois de cerca de 8 segundos.

A TNT de Sobrecarga tem boas maneiras na hora da limpeza: **rocha-mãe, blocos de barreira, molduras de portal do end e blocos de comando** não são quebrados, e zonas protegidas de área são respeitadas.

> Uma vez detonada, a TNT de Sobrecarga não pode ser recolhida. Trate-a do jeito que você trataria uma tempestade.

## Configuração e Desativação

A opção de configuração `overloadTnt.enableTerrainDamage` em `ae2lt-common.toml` (padrão **ligada**) controla todo o comportamento de detonação:

* **Ligada**: o "Comportamento da Detonação" acima se desenrola por inteiro — chuva de raios, terreno chamuscado, tempestade e dano a criaturas incluídos.
* **Desligada**: a TNT de Sobrecarga **não faz nada** quando acionada — sem raios, sem destruição, sem dano. Efetivamente um fiasco.

## Dicas de Uso

* Coloque-a em cima de um **bloco sólido**, dê a si mesmo bastante distância, e prefira usá-la em terreno aberto. O raio de explosão é grande o suficiente para você ainda ser pego estando no mesmo mapa.
* Se você só quer que ela quebre terreno e não extermine as criaturas próximas, afaste primeiro tudo que quiser manter.

## Registro de Campo: Uma Queda Anômala

> **Teste 7.** Condições iguais às seis anteriores; a curva observada divergiu. Na detonação, uma [Matriz de Colapso de Raios](../materials/lightning-collapse-matrix.md) estava jogada no chão perto do ponto de impacto — sem cratera chamuscada, só alguns raios e uma célula que não estava no manifesto.

> A reprodução falhou. Controlar cada variável aponta para a mesma conclusão: **a matriz precisa estar a céu aberto.**
