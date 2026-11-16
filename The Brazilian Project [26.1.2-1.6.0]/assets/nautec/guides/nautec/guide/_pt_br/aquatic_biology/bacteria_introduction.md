---
navigation:
  title: Introdução às Bactérias
  icon: nautec:petri_dish
  position: 0
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:petri_dish
---

# <Color id="light_purple">Introdução às Bactérias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="petri_dish" scale="2"/>
  Colônias de bactérias transformam energia de laser num suprimento constante de itens ou num feixe próprio.
</Column>

Toda colônia pertence a uma linhagem, tem um tamanho e carrega quatro atributos que decidem quão rápido ela cresce, quão bem produz e por quanto tempo continua trabalhando. Você carrega colônias em Placas de Petri e as move entre as máquinas de biologia.

***

## <Color id="gold">O Ciclo</Color>

* [Enxerte](bacteria_grafting.md) uma primeira colônia numa Placa de Petri vazia com uma Ferramenta de Enxertia.
* [Analise](bacterial_analyzer.md) a placa para ver seu tamanho e atributos.
* [Mute](mutator.md) ela na linhagem que você quer. As linhagens que você enxerta de pedra, areia, podzol e netherrack só existem para serem mutadas.
* [Incube](incubator.md) ela para crescer e restaurar sua Vitalidade.
* Coloque-a para trabalhar no [Biorreator](bio_reactor.md) para itens, com seu nutriente no reator para que não envelheça, ou queime-a na [Célula de Combustível Bacteriana](bacterial_fuel_cell.md) para obter um feixe.

[Atributos das Bactérias](bacteria_stats.md) explica o que cada número faz. [Progressão das Bactérias](bacteria_progression.md) é a rota passo a passo de uma primeira colônia até um reator completo, com a energia que cada etapa precisa, e a [Árvore de Linhagens](strain_tree.md) mostra quais mutações levam aonde.

***

## <Color id="gold">Placa de Petri</Color>

<RecipeFor id="petri_dish"/>

Uma Placa de Petri comporta uma colônia e não empilha. Uma placa vazia mostra "Vazia" como nome de bactéria. Uma colônia não analisada mostra sua linhagem e "???" nos atributos.

Uma colônia numa placa fica em espera: nem cresce nem envelhece ali.

***

## <Color id="gold">Movendo Colônias</Color>

As telas da Incubadora, do Mutador e do Biorreator têm espaços de bactérias. Pegue uma Placa de Petri de modo que ela fique no seu cursor e clique num espaço de bactérias com ela:

* Uma placa vazia tira a colônia inteira do espaço.
* Uma placa com colônia a coloca no espaço se ele estiver vazio.
* Uma placa com uma colônia da mesma linhagem e exatamente os mesmos atributos puxa a colônia do espaço para a placa e funde as duas ali.

Duas colônias só se fundem quando são da mesma linhagem com exatamente os mesmos atributos, o que na prática significa duas metades da mesma colônia. A colônia fundida mantém a mais velha das duas idades. Uma colônia nunca cresce além do teto de tamanho (40.000 por padrão, configurável), e qualquer excesso fica onde estava.

O Analisador Bacteriano recebe a própria placa num espaço de item, e a Célula de Combustível Bacteriana é carregada clicando direito nela com a placa ou tubulando placas para dentro. A Incubadora, o Mutador, o Replicador de Colônias e os dois Biorreatores também têm uma Porta de Placas: placas com colônia entram, e colônias e placas vazias saem por espaços separados.

***

## <Color id="gold">JEI</Color>

O JEI tem uma categoria para cada etapa: Enxertia de Bactérias (onde enxertar cada linhagem), Mutações de Bactérias (catalisador e chance), Descendência de Linhagens (a rota mais rápida até uma linhagem a partir de uma que você pode enxertar), Incubação de Bactérias (nutriente, faixa de crescimento e chance de consumo), Alimentação de Colônias (o nutriente que impede cada linhagem de envelhecer num reator) e Biorreator (o que cada linhagem produz, seu Rendimento de Linhagem, sua faixa inicial de Taxa de Produção e quantos itens por minuto uma colônia nova produz). Consulte lá para detalhes por linhagem.

Linhagens para metais e gemas de outros mods só aparecem quando um mod do pack adiciona aquele material.
