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

### Cultivando a Drusa de Cristal de Sobrecarga

A principal fonte de Cristais de Sobrecarga são os aglomerados que crescem naturalmente na superfície de um bloco de **Drusa de Cristal de Sobrecarga**.

A Drusa de Cristal de Sobrecarga é obtida montando uma estrutura multibloco e disparando uma **descarga de raio** no para-raios que a coroa. Veja a seção "Obtendo a Drusa de Cristal de Sobrecarga" abaixo para detalhes.

### ~~Obtendo na Nave Estelar do Firmamento~~

~~Explorar a seção inicial de uma Nave Estelar do Firmamento rende Certus, Fluix e Cristal de Sobrecarga suficientes.~~

### Níveis de Drusa

Existem quatro níveis de Drusa de Cristal de Sobrecarga:

| Nível | Nome | Decaimento |
|------|------|-------|
| Perfeita | Drusa de Cristal de Sobrecarga Perfeita | Não decai ao crescer |
| Imperfeita | Drusa de Cristal de Sobrecarga Imperfeita | Chance baixa de decair |
| Rachada | Drusa de Cristal de Sobrecarga Rachada | Chance média de decair |
| Danificada | Drusa de Cristal de Sobrecarga Danificada | Chance alta de decair |

Toda vez que um broto cresce num bloco de drusa imperfeito, há uma chance de o bloco de drusa decair um nível. Quando um bloco de drusa Danificado decai mais, ele vira um Bloco de Cristal de Sobrecarga comum.

> Ao minerar, **Toque Suave** preserva blocos de drusa Imperfeitos, Rachados e Danificados. A **Drusa de Cristal de Sobrecarga Perfeita** cai como Imperfeita ao ser minerada.

### Estágios de Crescimento dos Brotos

Os brotos de Cristal de Sobrecarga crescem por quatro estágios:

1. **Broto de Cristal de Sobrecarga Pequeno** → deixa cair Pó de Cristal de Sobrecarga ao quebrar
2. **Broto de Cristal de Sobrecarga Médio** → deixa cair Pó de Cristal de Sobrecarga ao quebrar
3. **Broto de Cristal de Sobrecarga Grande** → deixa cair Pó de Cristal de Sobrecarga ao quebrar
4. **Aglomerado de Cristais de Sobrecarga** (totalmente crescido) → deixa cair **Cristais de Sobrecarga** ao quebrar (Fortuna se aplica)

### Crescimento Acelerado

O <ItemLink id="ae2:growth_accelerator" /> funciona em brotos de Cristal de Sobrecarga. Colocar aceleradores ao redor de um bloco de drusa acelera drasticamente o crescimento dos brotos.

## Obtendo a Drusa de Cristal de Sobrecarga

A Drusa de Cristal de Sobrecarga é produzida construindo um multibloco 3×3 e disparando uma descarga de raio no Para-Raios acima do seu centro. Duas estruturas estão disponíveis: uma variante **rica** e uma variante **simples**.

### Estrutura Rica (Raio Natural, Conversão no Mesmo Nível)

<GameScene zoom="4" background="transparent">
  <ImportStructure src="../assets/assemblies/flawless_budding_overload.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Requisitos da estrutura:

* Coloque o nível correspondente de Drusa de Quartzo Certus de AE2 no centro
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um <ItemLink id="ae2lt:overload_crystal_block" /> em cada um dos quatro cantos
* Coloque um Para-Raios diretamente acima do centro

Uma vez construída, espere um **raio natural** atingir o Para-Raios. O nível de saída corresponde ao da entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:damaged_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawless_budding_overload_crystal" /> |

> A estrutura rica só aceita **raios naturais**. Raios artificiais invocados ao carregar um Cristal de Sobrecarga não a disparam.

### Estrutura Simples (Qualquer Raio, Saída Cai Um Nível)

Se os Blocos de Cristal de Sobrecarga estiverem limitados, a estrutura simples ainda pode produzir os três níveis não-perfeitos:

* Coloque o nível correspondente de Drusa de Quartzo Certus de AE2 no centro
* Coloque um <ItemLink id="ae2:quartz_block" /> (Bloco de Quartzo Certus) em cada um dos quatro cantos
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um Para-Raios diretamente acima do centro

**Qualquer descarga de raio** no Para-Raios a dispara, e a saída cai um nível de AE2 em relação à entrada:

| Entrada (Centro) | Saída |
|----------------|--------|
| <ItemLink id="ae2:chipped_budding_quartz" /> | <ItemLink id="ae2lt:damaged_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawed_budding_quartz" /> | <ItemLink id="ae2lt:cracked_budding_overload_crystal" /> |
| <ItemLink id="ae2:flawless_budding_quartz" /> | <ItemLink id="ae2lt:flawed_budding_overload_crystal" /> |

> O nível Perfeito não pode ser produzido pela estrutura simples — uma Drusa de Cristal de Sobrecarga Perfeita exige a estrutura rica com raio natural.

Quando o raio cai, os oito blocos externos ao redor são consumidos e o bloco central se torna a Drusa de Cristal de Sobrecarga correspondente.

## Derivados

| Item | Uso |
|------|-----|
| Pó de Cristal de Sobrecarga | Consumido pela Bobina de Tesla no modo HV; também usado em várias receitas |
| Bloco de Cristal de Sobrecarga | Bloco de construção / decorativo, e também usado para construir o multibloco da Drusa de Cristal de Sobrecarga Perfeita |
