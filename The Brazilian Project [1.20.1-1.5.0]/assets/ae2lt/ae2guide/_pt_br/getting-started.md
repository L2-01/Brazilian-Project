---
navigation:
  title: Começando
  icon: ae2lt:overload_crystal
  parent: index.md
  position: 10
---

# Começando

Esta página guia você por todo o caminho, do zero até uma primeira linha de produção de Raios funcional.

## Pré-requisitos

Antes de começar, certifique-se de já ter uma rede ME de AE2 funcionando que inclua pelo menos:

* Um <ItemLink id="ae2:controller" />, ou uma pequena rede sem controlador
* Alguns <ItemLink id="ae2:certus_quartz_crystal" />, <ItemLink id="ae2:fluix_crystal" /> e <ItemLink id="ae2:fluix_block" />
* Um <ItemLink id="minecraft:lightning_rod" /> e algumas Drusas de Certus de AE2 de vários níveis

## Passo 1: Obter Cristais de Sobrecarga

<ItemImage id="ae2lt:overload_crystal" scale="2" float="left" />

O **Cristal de Sobrecarga** é o material mais fundamental deste mod — quase toda receita depende dele ou de um de seus derivados.

Você o obtém cultivando blocos de **Drusa de Cristal de Sobrecarga**, que são produzidos a partir de Drusas de Certus de AE2 via um ritual de raios multibloco:

1. Monte uma estrutura 3×3 com a drusa de quartzo no centro. A variante rica usa <ItemLink id="ae2lt:overload_crystal_block" /> nos quatro cantos e <ItemLink id="ae2:fluix_block" /> nos quatro lados cardinais; a variante simples troca os cantos por <ItemLink id="ae2:quartz_block" /> (Bloco de Quartzo Certus) mantendo o fluix nas laterais
2. Coloque um <ItemLink id="minecraft:lightning_rod" /> diretamente acima do centro
3. Espere por uma descarga de raio — raio natural é obrigatório para a variante rica; qualquer raio funciona para a variante simples só de fluix
4. Coloque a **Drusa de Cristal de Sobrecarga** resultante no mundo e espere brotos crescerem na sua superfície

A Drusa de Cristal de Sobrecarga se comporta da mesma forma que a Drusa de Certus:

* Os brotos crescem em ordem: Pequeno → Médio → Grande → **Aglomerado de Cristais de Sobrecarga**
* O <ItemLink id="ae2:growth_accelerator" /> também funciona nos brotos de Cristal de Sobrecarga
* Quebrar um broto **ainda não totalmente crescido** deixa cair **Pó de Cristal de Sobrecarga**
* Quebrar um Aglomerado de Cristais de Sobrecarga **totalmente crescido** deixa cair **Cristais de Sobrecarga**, e Fortuna se aplica
* Blocos de drusa imperfeitos podem decair um nível a cada broto que cresce. Ao minerar, Toque Suave preserva os níveis Imperfeita, Rachada e Danificada; a Perfeita cai como Imperfeita

Veja [Cristal de Sobrecarga](materials/overload-crystal.md) para todos os detalhes.

## Passo 2: Obter Materiais Iniciais via Transmutação por Raio

Muitos materiais iniciais são produzidos por **Transmutação por Raio** — largue itens no chão e deixe um raio atingir os itens para transmutá-los.

<ItemImage id="ae2lt:overload_alloy" scale="2" float="left" />

As saídas típicas de transmutação incluem:

* **Liga de Sobrecarga**, **Placa de Circuito de Sobrecarga**, **Prensa de Inscrição de Sobrecarga** e outros materiais básicos
* **Coletor de Raios**, **Câmara de Simulação de Raios** e a primeira leva de máquinas
* **Cristal Eletrosonoro** e **Célula de Armazenamento de Raios I**, os itens iniciais do sistema de Raios

Há duas formas de disparar a transmutação por raio:

* **Tempestade natural**: durante clima de tempestade, itens largados a céu aberto podem ser atingidos por raios naturais
* **Invocação ativa**: carregue um Cristal de Sobrecarga e fique a céu aberto por cerca de 10 segundos para invocar um raio artificial por perto

> Raios artificiais podem disparar receitas de transmutação, mas **não podem** disparar a conversão multibloco do próximo passo. A conversão multibloco só aceita raios naturais.

## Passo 3: Obter uma Drusa de Cristal de Sobrecarga Perfeita

<ItemImage id="ae2lt:flawless_budding_overload_crystal" scale="2" float="left" />

A **Drusa de Cristal de Sobrecarga Perfeita** não decai ao crescer e é a espinha dorsal de qualquer linha de produção em larga escala. Ela só pode ser produzida pela variante de **estrutura rica** com um **raio natural**:

<GameScene zoom="4" background="transparent">
  <ImportStructure src="assets/assemblies/flawless_budding_overload.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

* Coloque uma **Drusa de Quartzo Perfeita** no centro
* Coloque um <ItemLink id="ae2:fluix_block" /> em cada um dos quatro lados cardinais (L / O / N / S) na mesma altura
* Coloque um **Bloco de Cristal de Sobrecarga** em cada um dos quatro cantos
* Coloque um **Para-Raios** diretamente acima do centro

Uma vez construída a estrutura, espere um **raio natural** atingir o Para-Raios para completar a conversão. Quando o raio cai, os oito blocos ao redor são consumidos e o bloco central se torna uma Drusa de Cristal de Sobrecarga Perfeita.

> A conversão para Perfeita só aceita **raios naturais** durante uma tempestade. Raios artificiais invocados ao carregar Cristais de Sobrecarga não a disparam. Drusas de nível inferior têm uma variante de "estrutura simples" mais barata, descrita na página do [Cristal de Sobrecarga](materials/overload-crystal.md).

## Passo 4: Montar sua Primeira Linha de Raios

Com os materiais iniciais e as máquinas básicas, você pode montar a linha mínima viável: **coletar → armazenar → consumir**.

1. **Coletar**: coloque um **Coletor de Raios** a céu aberto e conecte-o à sua rede ME. Quando um raio cai, o coletor injeta energia de Raios diretamente na rede
2. **Armazenar**: coloque uma **Célula de Armazenamento de Raios I** num <ItemLink id="ae2:drive" />; os Raios aparecerão no terminal ME junto com itens e fluidos
3. **Consumir**: a **Câmara de Simulação de Raios** e a **Câmara de Montagem de Raios** usam Raios armazenados na rede ME ao completar receitas

Dispositivos de suporte úteis:

* [Bobina de Tesla](lightning/tesla-coil.md) — consome Pó de Cristal de Sobrecarga e FE para produzir continuamente Raios de Alta / Altíssima Tensão
* [Ionizador Atmosférico](machines/atmospheric-ionizer.md) — consome energia AE e **Condensado de Tempo** para forçar a mudança do clima do mundo

## Passo 5: Objetivos de Meio e Fim de Jogo

Com a linha inicial rodando, você pode desbloquear o seguinte, em ordem:

* **Câmara de Simulação de Raios** (3 espaços de entrada, conversões simples) e **Câmara de Montagem de Raios** (9 espaços de entrada, montagem complexa)
* **Fábrica de Processamento de Sobrecarga** (9 espaços de entrada, suporta E/S de itens + fluidos e processamento paralelo via a Matriz de Colapso de Raios)
* **Catalisador de Cristais** (água + item no espaço, com modos Cristal / Pó)
* **Controlador ME de Sobrecarga** — cada controlador adiciona 128 canais à rede
* **Cabo de Sobrecarga** — um único cabo não tem limite de canais por cabo
* **Fornecedor de Padrões ME de Sobrecarga** e **Interface ME de Sobrecarga** — 36 espaços cada, com despacho sem fio e E/S sem fio

Veja as páginas de categoria na barra lateral esquerda para todos os detalhes.
