---
navigation:
  title: Dicionário Arcano
  icon: iska_utils:arcane_dictionary
  parent: hubs/entropy_materials.md
  position: 13
item_ids:
  - iska_utils:arcane_dictionary
categories:
  - Entropy materials
---
# Dicionário Arcano

<ItemImage id="iska_utils:arcane_dictionary" />

## Como obter

- **Entrega Suspeita** — um resultado possível ao abrir um pacote. Veja <ItemImage id="iska_utils:suspicious_delivery" /> **Entrega Suspeita**.
- Reciclável em **três** <ItemImage id="iska_utils:drop_of_entropy" /> **Gotas de Entropia** como outros artefatos de entrega.

## O que faz

O **Dicionário Arcano** é um **Curio arcano** (cinto ou amuleto) que armazena **traços arcanos** aleatórios (até vários traços, cada um com um nível em algarismos romanos). Enquanto **exatamente um** dicionário estiver equipado no Curios e tiver traços, esses traços se aplicam como efeitos passivos.

**Dois ou mais** dicionários equipados no Curios ao mesmo tempo **cancelam todos os efeitos de traços**.

Layout do tooltip: linhas de lore em **cinza**, linhas mecânicas em **lima**, cabeçalho de artefato arcano em **roxo**; os nomes dos traços usam **cores próprias por traço** vindas do datapack. **Segure Shift** para descrições breves dos traços e dicas de rerrolagem com catalisador.

## Cargas de entropia (combustível para traços ativos)

Separado da rerrolagem por XP. Com **exatamente um** dicionário no **Curios**, ele **absorve automaticamente** <ItemImage id="iska_utils:drop_of_entropy" /> **Gotas de Entropia** do seu **inventário** (não dos slots Curios), até um grande buffer interno. Dicionários apenas no inventário não absorvem.

Quando os traços estão **ativos**, a entropia armazenada é **drenada ao longo do tempo** conforme o consumo de entropia de cada traço (datapack `ent_cha`; alguns traços não custam nada). Se o buffer acabar, os efeitos desligam até mais gotas serem absorvidas.

## Rerrolando traços (só XP)

Isso **não** usa cargas de entropia.

1. Segure o dicionário na sua **mão principal**.
2. **Shift + clique direito** — gasta parte da sua experiência. Só uma quantidade limitada de XP é usada por rerrolagem; qualquer experiência além disso fica com você.
3. **Quanto mais XP você oferecer, melhor tende a ser a rolagem** — mais traços, níveis maiores, ou ambos — mas cada rerrolagem continua **aleatória** até você atingir o orçamento máximo de níveis; aí você sempre recebe a contagem máxima de traços e níveis.
4. Ponha um **catalisador** correspondente na sua **mão secundária** (por exemplo lápis-lazúli para **Sortudo**) para **aumentar** a chance de rolar aquele traço — o tooltip de Shift do traço mostra a **nova chance de escolha** com aquele catalisador. Um catalisador é consumido por rerrolagem; ele **não** garante o traço. Cada traço de uma rolagem é **único** quando há entradas suficientes; duplicatas só aparecem se a rolagem pedir mais traços do que existem.

## Sorte e Má Sorte

Quais traços **específicos** aparecem em cada slot é influenciado separadamente da qualidade do XP.

- Após a escolha inicial ponderada, o efeito vanilla **Sorte** pode rerrolar para longe de entradas de `luck` baixa no pool de traços; **Má Sorte** pode rerrolar para longe das de `luck` alta. Efeitos de poção mais fortes contam mais.
- O traço **Sortudo** aplica **Sorte**; o traço **Azarado** aplica **Má Sorte** — então eles também podem influenciar rerrolagens posteriores.
- Catalisadores na mão secundária **aumentam** o peso de escolha dos traços correspondentes (chance de rerrolagem no tooltip); eles não anulam a sorte por completo nem garantem um traço.

Datapacks podem marcar entradas com o quanto são sortudas ou azaradas; autores de pack decidem quais traços ficam em cada lado dessa escala.

## Traços arcanos

Cada rerrolagem sorteia do pool de traços. Os detalhes dos traços (efeitos, níveis, catalisadores) também aparecem nos tooltips ao inspecionar o dicionário com Shift.

Alguns traços só aparecem quando certos mods ou estágios de progressão estão disponíveis. Traços que você não pode obter são pulados na rolagem; um traço já no seu dicionário não faz nada enquanto seus requisitos não forem atendidos.

## Dicas

- Um dicionário **vazio** (sem traços) pode ser empilhado numa **Gaveta Profunda** como outros itens de pilha única sem traços.
- Equipá-lo ainda conta como **artefato arcano** para a <ItemImage id="iska_utils:busted_crown" /> **Coroa Quebrada**, mesmo quando vazio.
