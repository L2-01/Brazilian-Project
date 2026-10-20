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

O **Cristal de Sobrecarga** é o material mais fundamental e mais importante do AE2 Lightning Tech. Quase toda receita de meio e fim de jogo precisa dele ou de um de seus derivados.

## Como Obter

### Cultivando Drusa de Cristal de Sobrecarga

A principal fonte de Cristais de Sobrecarga são os aglomerados que crescem naturalmente na superfície de um bloco de **Drusa de Cristal de Sobrecarga**.

A Drusa de Cristal de Sobrecarga é obtida montando uma estrutura multibloco e disparando uma **descarga de raio** no para-raios que a coroa. Veja a seção "Obtendo a Drusa de Cristal de Sobrecarga" abaixo para detalhes.

### Categorias de Drusa

Há quatro categorias de Drusa de Cristal de Sobrecarga:

| Categoria | Nome | Decadência |
|------|------|-------|
| Perfeita | Drusa de Cristal de Sobrecarga Perfeita | Nunca decai |
| Imperfeita | Drusa de Cristal de Sobrecarga Imperfeita | Chance de decadência baixa |
| Rachada | Drusa de Cristal de Sobrecarga Rachada | Chance de decadência média |
| Danificada | Drusa de Cristal de Sobrecarga Danificada | Chance de decadência alta |

Toda vez que um broto cresce num bloco de drusa imperfeito, há uma chance de o bloco de drusa decair uma categoria. Quando um bloco de drusa Danificado decai mais, ele se torna um Bloco de Cristal de Sobrecarga comum.

> **Toque Suave** impede que um bloco de drusa imperfeito decaia ao ser quebrado. A **Drusa de Cristal de Sobrecarga Perfeita** nunca decai.

### Estágios de Crescimento dos Brotos

Os brotos de Cristal de Sobrecarga crescem por quatro estágios:

1. **Broto de Cristal de Sobrecarga Pequeno** → larga Pó de Cristal de Sobrecarga quando quebrado
2. **Broto de Cristal de Sobrecarga Médio** → larga Pó de Cristal de Sobrecarga quando quebrado
3. **Broto de Cristal de Sobrecarga Grande** → larga Pó de Cristal de Sobrecarga quando quebrado
4. **Aglomerado de Cristais de Sobrecarga** (crescido por completo) → larga **Cristais de Sobrecarga** quando quebrado (Fortuna se aplica)

### Crescimento Acelerado

O <ItemLink id="ae2:growth_accelerator" /> funciona nos brotos de Cristal de Sobrecarga. Colocar aceleradores ao redor de um bloco de drusa acelera dramaticamente o crescimento dos brotos.

## Obtendo a Drusa de Cristal de Sobrecarga

A Drusa de Cristal de Sobrecarga é produzida construindo um multibloco 3×3 e disparando uma descarga de raio no Para-Raios acima do seu centro. Duas estruturas estão disponíveis: uma variante **rica** e uma variante **simples**.

### Estrutura Rica (Raio Natural, Conversão na Mesma Categoria)

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/flawless_budding_overload.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Requisitos da estrutura:

* Coloque a categoria correspondente de Drusa de Quartzo Certus do AE2 no centro
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardeais (L / O / N / S) na mesma altura
* Coloque um <ItemLink id="ae2lt:overload_crystal_block" /> em cada um dos quatro cantos
* Coloque um Para-Raios diretamente acima do centro

Uma vez construída, espere uma **descarga de raio natural** no Para-Raios. A categoria da saída corresponde à da entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:damaged_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawless_budding_overload_crystal" /> |

> A estrutura rica só aceita **raios naturais**. Raios artificiais invocados carregando um Cristal de Sobrecarga não a disparam.

### Estrutura Simples (Qualquer Raio, Saída Cai Uma Categoria)

Se você está sem Blocos de Cristal de Sobrecarga, a estrutura simples ainda produz as três categorias não perfeitas:

* Coloque a categoria correspondente de Drusa de Quartzo Certus do AE2 no centro
* Coloque um <ItemLink id="ae2:quartz_block" /> (Bloco de Quartzo Certus) em cada um dos quatro cantos
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardeais (L / O / N / S) na mesma altura
* Coloque um Para-Raios diretamente acima do centro

**Qualquer descarga de raio** no Para-Raios a dispara, e a saída cai uma categoria do AE2 em relação à entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |

> A categoria Perfeita não pode ser produzida pela estrutura simples — uma Drusa de Cristal de Sobrecarga Perfeita exige a estrutura rica com raio natural.

Quando o raio cai, os oito blocos externos ao redor são consumidos, e o bloco central se torna a Drusa de Cristal de Sobrecarga correspondente.

## Derivados

| Item | Uso |
|------|-----|
| Pó de Cristal de Sobrecarga | Consumido pela Bobina de Tesla no modo AT; também usado em várias receitas |
| Bloco de Cristal de Sobrecarga | Bloco de construção / decorativo, e também usado para construir o multibloco da Drusa de Cristal de Sobrecarga Perfeita |
