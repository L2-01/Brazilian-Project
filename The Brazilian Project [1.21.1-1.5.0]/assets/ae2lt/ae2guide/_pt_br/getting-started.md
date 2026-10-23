---
navigation:
  title: Começando
  icon: ae2lt:overload_crystal
  parent: index.md
  position: 10
---

# Começando

Esta página conduz você pelo caminho completo do zero até uma primeira linha de produção de Raios funcional.

## Pré-requisitos

Antes de começar, certifique-se de já ter uma rede ME do AE2 funcional que inclua pelo menos:

* Um <ItemLink id="ae2:controller" />, ou uma pequena rede sem controlador
* Alguns <ItemLink id="ae2:certus_quartz_crystal" />, <ItemLink id="ae2:fluix_crystal" /> e <ItemLink id="ae2:fluix_block" />
* Um <ItemLink id="minecraft:lightning_rod" /> e algumas Drusas de Quartzo Certus do AE2 de vários tiers

## Passo 1: Obtenha Cristais de Sobrecarga

<ItemImage id="ae2lt:overload_crystal" scale="2" float="left" />

O **Cristal de Sobrecarga** é o material mais fundamental deste mod — quase todas as receitas dependem dele ou de um de seus derivados.

Você o obtém cultivando blocos de **Drusa de Cristal de Sobrecarga**, produzidos a partir de Drusas de Quartzo Certus do AE2 via um ritual de raios em multibloco:

1. Monte uma estrutura 3×3 com a drusa no centro. A variante rica usa <ItemLink id="ae2lt:overload_crystal_block" /> nos quatro cantos e <ItemLink id="ae2:fluix_block" /> nos quatro lados cardinais; a variante simples troca os cantos por <ItemLink id="ae2:quartz_block" /> (Bloco de Certus) mantendo fluix nos lados
2. Coloque um <ItemLink id="minecraft:lightning_rod" /> diretamente acima do centro
3. Aguarde uma descarga elétrica — raio natural é obrigatório para a variante rica; qualquer raio funciona para a variante simples só de fluix
4. Coloque a **Drusa de Cristal de Sobrecarga** resultante no mundo e aguarde os brotos crescerem em sua superfície

A Drusa de Cristal de Sobrecarga comporta-se da mesma forma que a Drusa de Quartzo Certus:

* Os brotos crescem na ordem: Pequeno → Médio → Grande → **Agregado de Cristal de Sobrecarga**
* O <ItemLink id="ae2:growth_accelerator" /> também funciona nos brotos de Cristal de Sobrecarga
* Quebrar um broto **ainda não maduro** dropa **Pó de Cristal de Sobrecarga**
* Quebrar um Agregado de Cristal de Sobrecarga **totalmente maduro** dropa **Cristais de Sobrecarga**, e Fortuna se aplica
* Drusas imperfeitas podem decair um tier cada vez que um broto cresce. Ao minerar, Toque Suave preserva os tiers Imperfeita, Rachada e Danificada; a Perfeita dropa como Imperfeita

Veja [Cristal de Sobrecarga](materials/overload-crystal.md) para todos os detalhes.

## Passo 2: Obtenha Materiais Iniciais por Transmutação de Raios

Muitos materiais iniciais são produzidos por **Transmutação de Raios** — jogue itens no chão e deixe um raio atingir os drops para transmutá-los.

<ItemImage id="ae2lt:overload_alloy" scale="2" float="left" />

Resultados típicos de transmutação incluem:

* **Liga de Sobrecarga**, **Placa de Circuito de Sobrecarga**, **Prensa de Inscrição de Sobrecarga** e outros materiais básicos
* **Coletor de Raios**, **Câmara de Simulação de Raios** e a primeira leva de máquinas
* **Cristal Eletrosonoro** e **Célula de Armazenamento de Raios I**, os itens iniciais do sistema de Raios

Há duas formas de disparar a transmutação por raios:

* **Tempestade natural**: durante clima de tempestade, drops de itens ao ar livre podem ser atingidos por raios naturais
* **Invocação ativa**: carregue um Cristal de Sobrecarga e fique ao ar livre por cerca de 10 segundos para invocar um raio artificial nas proximidades

> Raios artificiais podem disparar receitas de transmutação, mas **não** podem disparar a conversão multibloco do próximo passo. A conversão multibloco só aceita raios naturais.

## Passo 3: Obtenha uma Drusa de Cristal de Sobrecarga Perfeita

<ItemImage id="ae2lt:flawless_budding_overload_crystal" scale="2" float="left" />

A **Drusa de Cristal de Sobrecarga Perfeita** não decai ao crescer e é a espinha dorsal de qualquer linha de produção em larga escala. Ela só pode ser produzida pela variante de **estrutura rica** com um **raio natural**:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/flawless_budding_overload.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

* Coloque uma **Drusa de Quartzo Certus Perfeita** no centro
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um **Bloco de Cristal de Sobrecarga** em cada um dos quatro cantos
* Coloque um **Para-raios** diretamente acima do centro

Com a estrutura pronta, aguarde um **raio natural** atingir o Para-raios para completar a conversão. Quando o raio cai, os oito blocos ao redor são consumidos e o bloco central torna-se uma Drusa de Cristal de Sobrecarga Perfeita.

> A conversão Perfeita só aceita **raios naturais** durante uma tempestade. Raios artificiais invocados carregando Cristais de Sobrecarga não a disparam. Drusas de tiers inferiores têm uma variante mais barata de "estrutura simples", descrita na página [Cristal de Sobrecarga](materials/overload-crystal.md).

## Passo 4: Monte Sua Primeira Linha de Raios

Com materiais iniciais e máquinas básicas, você pode montar a linha mínima viável: **coletar → armazenar → consumir**.

1. **Coletar**: coloque um **Coletor de Raios** ao ar livre e conecte-o à sua rede ME. Quando um raio cai, o coletor injeta a energia de Raios diretamente na rede
2. **Armazenar**: coloque uma **Célula de Armazenamento de Raios I** num <ItemLink id="ae2:drive" />; os Raios aparecerão no terminal ME junto de itens e fluidos
3. **Consumir**: a **Câmara de Simulação de Raios** e a **Câmara de Montagem de Raios** usam Raios armazenados na rede ME ao completar receitas

Dispositivos de apoio úteis:

* [Bobina de Tesla](lightning/tesla-coil.md) — consome Pó de Cristal de Sobrecarga e FE para produzir de forma estável Raios de Alta / Altíssima Tensão
* [Ionizador Atmosférico](machines/atmospheric-ionizer.md) — consome energia AE e **Condensado Climático** para forçar a mudança do clima do mundo

## Passo 5: Metas de Meio e Fim de Jogo

Com sua linha inicial funcionando, você pode desbloquear o seguinte, em sequência:

* **Câmara de Simulação de Raios** (3 slots de entrada, conversões simples) e **Câmara de Montagem de Raios** (9 slots de entrada, montagem complexa)
* **Fábrica de Processamento de Sobrecarga** (9 slots de entrada, suporta E/S de itens + fluidos e processamento paralelo via Matriz de Colapso de Raios)
* **Catalisador de Cristais** (água + item no slot, com modos Cristal / Pó)
* **Controlador ME de Sobrecarga** — cada controlador adiciona 128 canais à rede
* **Cabo ME de Sobrecarga** — um único cabo não tem limite de canais por cabo
* **Fornecedor de Padrões ME de Sobrecarga** e **Interface ME de Sobrecarga** — 36 slots cada, com despacho sem fio e E/S sem fio

Veja as páginas de categoria na barra lateral esquerda para todos os detalhes.
