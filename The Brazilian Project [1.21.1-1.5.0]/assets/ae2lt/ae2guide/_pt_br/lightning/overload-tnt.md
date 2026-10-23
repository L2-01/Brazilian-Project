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

A **TNT de Sobrecarga** é um explosivo de alto risco construído em torno de uma Singularidade de Sobrecarga. Em vez de produzir uma explosão comum, ela chama repetidas descargas elétricas ao redor do ponto de detonação e queima o terreno numa área ampla.

É usada principalmente para escavação de terreno, remoção de rocha dura ou testes destrutivos controlados.

## Fabricação

<RecipeFor id="ae2lt:overload_tnt" />

A **Singularidade de Sobrecarga** é o componente ativo; a pólvora fornece o gatilho explosivo.

## Comportamento da Detonação

Após a ignição ou ativação, a TNT de Sobrecarga tem um pavio de cerca de **4 segundos**. Na detonação, os efeitos ocorrem na seguinte sequência:

1. Um **raio inicial** cai diretamente acima do centro da explosão, seguido por múltiplos raios que caem para fora em anéis em camadas, **chamuscando o terreno** — este é o efeito destrutivo principal, e seu alcance é grande.
2. Na detonação, **todos os mobs numa área ampla ao redor do centro da explosão sofrem dano pesado de raios**. O dano decai com a distância, mas o raio interno é letal.
3. Após a primeira onda, um período de **abalo secundário** continua por vários segundos, derrubando descargas aleatórias adicionais pela área.
4. Uma curta rajada de **clima de tempestade** é forçada na área ao redor do centro da explosão, revertendo após cerca de 8 segundos.

A TNT de Sobrecarga respeita salvaguardas de limpeza: **bedrock, blocos de barreira, molduras de portal do End e blocos de comando** não são quebrados, e zonas protegidas por área são respeitadas.

> Uma vez detonada, a TNT de Sobrecarga não pode ser recuperada. Trate-a como um evento de raios de alto risco.

## Configuração e Desativação

`overloadTnt.enableTerrainDamage` no `ae2lt-common.toml` controla a explosão comum e fica
**habilitado** por padrão. Quando desabilitado, sua chuva de raios, chamuscamento de terreno, tempestade e dano a
mobs são ignorados.

## Dicas de Uso

* Coloque-a sobre um **bloco sólido**, mantenha uma grande distância de segurança e prefira terreno aberto. O raio da explosão é grande o bastante para atingir jogadores que permaneçam perto da área de detonação.
* Se você quiser dano ao terreno sem matar mobs próximos, mova primeiro para fora da área de explosão tudo o que quiser preservar.

## Registro de Campo: Uma Explosão Anômala

> **Ensaio 7.** As condições eram iguais às dos seis anteriores; porém, a curva observada divergiu. Uma [Matriz de Colapso de Raios](../materials/lightning-collapse-matrix.md) estava no chão perto do ponto de impacto. Após a explosão, a imensa energia dentro da TNT de Sobrecarga havia sumido; restaram no centro apenas alguns raios e uma célula não encontrada nos registros.

> A primeira tentativa de reprodução falhou. Uma amostra maior com cada variável controlada aponta para uma condição: **a matriz precisa estar jogada no mundo.**
