---
navigation:
  title: Cultivador de Cristais
  icon: nautec:crystal_cultivator
  position: 13
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:crystal_cultivator
---

# Cultivador de Cristais

<ItemImage id="crystal_cultivator" scale="2"/>

Conecte um Cultivador de Cristais a qualquer face de um bloco gemífero e mire um laser na ponta do cristal voltada para fora. Ele acelera o crescimento e colhe aglomerados totalmente crescidos das demais faces, deixando brotos jovens e o bloco de origem no lugar.

Use-o com o Drusa de Prismarinho para automatizar Fragmentos de Cristal de Prismarinho, ou com a Ametista Gemífera vanilla. Blocos gemíferos do GeoOre e o quartzo gemífero do AE2 são suportados quando esses mods estão instalados.

## Energia e pureza

O Cultivador precisa de **20 AP** para colher. A 20 AP, os cristais crescem na velocidade normal; **100 AP dá crescimento 10x**. A energia entre esses pontos escala linearmente. Energia maior continua ajudando, com retorno decrescente: 180 AP dá cerca de 16.24x e 260 AP cerca de 19.89x de crescimento.

A pureza determina o encantamento Fortuna usado na colheita. Cada nível inteiro de pureza dá um nível de Fortuna até a pureza 6: pureza 2,0 dá Fortuna II e 6,0 dá Fortuna VI. Acima de 6, os ganhos diminuem; pureza 9 dá Fortuna VIII e pureza 12 dá Fortuna IX. A tabela de itens largados normal do aglomerado determina seus itens e como a Fortuna os afeta.

## Colhendo a produção

O buffer de saída de nove espaços aceita extração por tubos e funis. Clique com o botão direito de mão vazia para pegar uma pilha, ou agache-se e clique com o botão direito para coletar tudo. Se a colheita completa não couber, o aglomerado maduro fica no lugar até haver espaço. Aglomerados encharcados deixam a água para trás.

Use um Cultivador por bloco gemífero. Conexões adicionais não acumulam seus bônus de crescimento. Um Cultivador sem energia não colhe nem acelera o crescimento, mas o bloco gemífero ainda pode crescer naturalmente.

## Compatibilidade com mods

O Cultivador executa a própria lógica de crescimento do bloco de origem, mantendo as configurações e exigências de crescimento do mod. Ele respeita a velocidade de tiques aleatórios do mundo, inclusive desativando o crescimento acelerado quando essa regra é zero.

O Quartzo Gemífero com Falha, Lascado e Danificado do AE2 mantém sua chance normal de decair após um crescimento bem-sucedido, então o crescimento mais rápido também os desgasta antes. Use o **Quartzo Gemífero Impecável** para uma fazenda duradoura de Quartzo Certus.

Os criadores de packs podem ampliar ou restringir o suporte com as tags de bloco `nautec:cultivator_sources` e `nautec:cultivator_clusters`. Elas incluem as tags comuns `c:budding_blocks` e `c:clusters`. Adicione apenas aglomerados maduros colhíveis à segunda; brotos imaturos devem permanecer intocados.

## Fabricação

<RecipeFor id="crystal_cultivator"/>
