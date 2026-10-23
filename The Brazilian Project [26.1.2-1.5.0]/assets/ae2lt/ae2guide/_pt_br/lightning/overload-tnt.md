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

A **TNT de Sobrecarga** é um foguete com uma Singularidade de Sobrecarga espremida dentro. Ela não é um consumível de rotina numa linha de produção — detoná-la parece mais um **desastre natural controlado**: raios caem do céu e varrem a área ao redor da explosão, em vez de produzir uma única explosão barulhenta.

Na maioria das vezes você a usa para minerar terrenos específicos, limpar trechos de rocha dura ou demonstrar aos visitantes exatamente por que os pesquisadores daqui precisam de corrimãos.

## Fabricação

<RecipeFor id="ae2lt:overload_tnt" />

A **Singularidade de Sobrecarga** no centro é quem realmente faz o trabalho; a pólvora nos cantos só está lá para dar a ela uma desculpa para explodir.

## Comportamento da Detonação

Após a ignição ou ativação, a TNT de Sobrecarga tem um pavio de cerca de **4 segundos**. Na detonação, os efeitos ocorrem na seguinte sequência:

1. Um **raio inicial** cai diretamente acima do centro da explosão, seguido por múltiplos raios que caem para fora em anéis em camadas, **chamuscando o terreno** — este é o efeito destrutivo principal, e seu alcance é grande.
2. Na detonação, **todos os mobs numa área ampla ao redor do centro da explosão sofrem dano pesado de raios**. O dano decai com a distância, mas o raio interno é letal.
3. Após a primeira onda, um período de **abalo secundário** continua por vários segundos, derrubando descargas aleatórias adicionais pela área.
4. Uma curta rajada de **clima de tempestade** é forçada na área ao redor do centro da explosão, revertendo após cerca de 8 segundos.

A TNT de Sobrecarga respeita salvaguardas de limpeza: **bedrock, blocos de barreira, molduras de portal do End e blocos de comando** não são quebrados, e zonas protegidas por área são respeitadas.

> Uma vez detonada, a TNT de Sobrecarga não pode ser desfeita. Trate-a como trataria uma tempestade.

## Configuração e Desativação

A opção de configuração `overloadTnt.enableTerrainDamage` no `ae2lt-common.toml` (padrão **ativada**) controla todo o comportamento de detonação:

* **Ativada**: o "Comportamento de Detonação" acima acontece por completo — chuva de raios, terreno queimado, tempestade e dano a mobs incluídos.
* **Desativada**: a TNT de Sobrecarga **não faz nada** quando acionada — sem raios, sem destruição, sem dano. Efetivamente um fracasso.

## Dicas de Uso

* Coloque-a em cima de um **bloco sólido**, mantenha bastante distância e prefira usá-la em terreno aberto. O raio da explosão é grande o bastante para pegar até quem estiver parado no mesmo mapa.
* Se você só quer que ela quebre o terreno sem exterminar os mobs próximos, afaste primeiro tudo o que quiser manter.

## Registro de Campo: Uma Explosão Anômala

> **Ensaio 7.** As condições eram iguais às dos seis anteriores; a curva observada divergiu. Na detonação, uma [Matriz de Colapso de Raios](../materials/lightning-collapse-matrix.md) estava no chão perto do ponto de impacto — sem cratera queimada, só alguns raios e uma célula que não constava no manifesto.

> A reprodução falhou. Controlando todas as variáveis, a conclusão é a mesma: **a matriz precisa estar ao ar livre.**
