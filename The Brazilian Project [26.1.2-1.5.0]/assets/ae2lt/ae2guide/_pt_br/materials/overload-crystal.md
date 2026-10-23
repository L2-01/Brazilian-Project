---
navigation:
  title: Cristal de Sobrecarga
  icon: ae2lt:overload_crystal
  parent: materials/materials-index.md
item_ids:
  - ae2lt:overload_crystal
  - ae2lt:overload_crystal_dust
  - ae2lt:overload_crystal_block
  - ae2lt:flawless_budding_overload_crystal
  - ae2lt:flawed_budding_overload_crystal
  - ae2lt:cracked_budding_overload_crystal
  - ae2lt:damaged_budding_overload_crystal
  - ae2lt:small_overload_crystal_bud
  - ae2lt:medium_overload_crystal_bud
  - ae2lt:large_overload_crystal_bud
  - ae2lt:overload_crystal_cluster
---

# Cristal de Sobrecarga

<ItemImage id="ae2lt:overload_crystal" scale="2" float="left" />

O **Cristal de Sobrecarga** é o material mais fundamental e mais importante do AE2 Lightning Tech. Quase todas as receitas de meio e fim de jogo precisam dele ou de um de seus derivados.

## Como Obter

### Cultivando Drusa de Cristal de Sobrecarga

A principal fonte de Cristais de Sobrecarga são os aglomerados que crescem naturalmente na superfície de um bloco de **Drusa de Cristal de Sobrecarga**.

A Drusa de Cristal de Sobrecarga é obtida montando uma estrutura multibloco e disparando uma **descarga elétrica** no para-raios que a coroa. Veja a seção "Obtendo Drusa de Cristal de Sobrecarga" abaixo para detalhes.

### Tiers de Drusa

Há quatro tiers de Drusa de Cristal de Sobrecarga:

| Tier | Nome | Decaimento |
|------|------|-------|
| Perfeita | Drusa de Cristal de Sobrecarga Perfeita | Nunca decai |
| Imperfeita | Drusa de Cristal de Sobrecarga Imperfeita | Baixa chance de decaimento |
| Rachada | Drusa de Cristal de Sobrecarga Rachada | Chance média de decaimento |
| Danificada | Drusa de Cristal de Sobrecarga Danificada | Alta chance de decaimento |

Toda vez que um broto cresce numa drusa imperfeita, há uma chance de a drusa decair um tier. Quando uma drusa Danificada decai mais, ela se torna um Bloco de Cristal de Sobrecarga comum.

> **Toque Suave** impede que um bloco em brotamento imperfeito decaia ao ser quebrado. A **Drusa de Cristal de Sobrecarga Perfeita** nunca decai.

### Estágios de Crescimento dos Brotos

Brotos de Cristal de Sobrecarga crescem por quatro estágios:

1. **Cristal de Sobrecarga Pequeno** → dropa Pó de Cristal de Sobrecarga ao quebrar
2. **Cristal de Sobrecarga Médio** → dropa Pó de Cristal de Sobrecarga ao quebrar
3. **Cristal de Sobrecarga Grande** → dropa Pó de Cristal de Sobrecarga ao quebrar
4. **Agregado de Cristal de Sobrecarga** (totalmente maduro) → dropa **Cristais de Sobrecarga** ao quebrar (Fortuna se aplica)

### Crescimento Acelerado

O <ItemLink id="ae2:growth_accelerator" /> funciona em brotos de Cristal de Sobrecarga. Colocar aceleradores ao redor de uma drusa acelera drasticamente o crescimento dos brotos.

## Obtendo Drusa de Cristal de Sobrecarga

A Drusa de Cristal de Sobrecarga é produzida construindo um multibloco 3×3 e disparando uma descarga elétrica no Para-raios acima do centro. Duas estruturas estão disponíveis: uma variante **rica** e uma variante **simples**.

### Estrutura Rica (Raio Natural, Conversão no Mesmo Tier)

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/flawless_budding_overload.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Requisitos da estrutura:

* Coloque o tier correspondente de Drusa de Quartzo Certus do AE2 no centro
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um <ItemLink id="ae2lt:overload_crystal_block" /> em cada um dos quatro cantos
* Coloque um Para-raios diretamente acima do centro

Depois de construída, aguarde um **raio natural** no Para-raios. O tier de saída corresponde ao de entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:damaged_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawless_budding_overload_crystal" /> |

> A estrutura rica só aceita **raios naturais**. Raios artificiais invocados carregando um Cristal de Sobrecarga não a disparam.

### Estrutura Simples (Qualquer Raio, Saída Cai um Tier)

Se Blocos de Cristal de Sobrecarga forem limitados, a estrutura simples ainda pode produzir os três tiers não perfeitos:

* Coloque o tier correspondente de Drusa de Quartzo Certus do AE2 no centro
* Coloque um <ItemLink id="ae2:quartz_block" /> (Bloco de Certus) em cada um dos quatro cantos
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um Para-raios diretamente acima do centro

**Qualquer descarga elétrica** no Para-raios a dispara, e a saída cai um tier do AE2 em relação à entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |

> O tier Perfeita não pode ser produzido pela estrutura simples — uma Drusa de Cristal de Sobrecarga Perfeita exige a estrutura rica com raio natural.

Quando o raio cai, os oito blocos externos ao redor são consumidos e o bloco central torna-se a Drusa de Cristal de Sobrecarga correspondente.

## Derivados

| Item | Uso |
|------|-----|
| Pó de Cristal de Sobrecarga | Consumido pela Bobina de Tesla no modo HV; também usado em várias receitas |
| Bloco de Cristal de Sobrecarga | Bloco de construção / decorativo, e também usado para construir o multibloco da Drusa de Cristal de Sobrecarga Perfeita |
