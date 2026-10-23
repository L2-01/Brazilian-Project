---
navigation:
  title: Atributos das Bactérias
  icon: nautec:petri_dish
  position: 5
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Atributos das Bactérias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="petri_dish" scale="2"/>
  Tamanho, Vitalidade e quatro atributos decidem o valor de uma colônia.
</Column>

Cada colônia sorteia seus atributos a partir da faixa inicial de sua linhagem quando é enxertada ou mutada. Depois disso os atributos só mudam quando a colônia muta ou é refinada no [Mutador](mutator.md), e a nova colônia os carrega adiante com um pequeno desvio aleatório. Taxa de Crescimento e Taxa de Produção cada uma se move para cima ou para baixo em no máximo atributo / (10 x (1 + Resistência à Mutação)), então uma colônia com Taxa de Produção 1 e sem resistência termina entre 0.9 e 1.1, e uma resistência maior a mantém mais perto da mãe. Vida Útil se move em até 100 tiques, também menos com resistência maior. A própria Resistência à Mutação nunca cai: cada mutação adiciona um pouco a ela, menos quanto mais perto do teto. Criar uma colônia forte significa uma cadeia de mutações ou refinos. Cultivar, alimentar e trabalhar uma colônia nunca muda seus atributos.

Analise uma placa no [Analisador Bacteriano](bacterial_analyzer.md) para lê-los, depois segure Shift sobre ela.

***

## <Color id="gold">Os Quatro Atributos</Color>

| Atributo | Teto | O que faz |
|---|---|---|
| Taxa de Crescimento | 5 | Multiplica o tamanho que um ciclo da [Incubadora](incubator.md) adiciona. |
| Resistência à Mutação | 1 | Reduz a chance de sucesso do [Mutador](mutator.md) em até metade, e zera o custo de uma tentativa falha no teto. Define a pureza do feixe de uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md). |
| Taxa de Produção | 2 | Multiplica a velocidade com que um [Biorreator](bio_reactor.md) produz itens. Define a potência de uma Célula de Combustível e a velocidade com que ela queima a colônia. |
| Vida Útil | 24.000 | Os tiques que uma colônia pode trabalhar num reator sem nutrientes antes de virar Senescente. |

Os quatro tetos são configuráveis. Um atributo em vermelho na dica está no teto.

Para uma linhagem que produz algo, a dica analisada também mostra o Rendimento de Linhagem. Ele pertence à linhagem, não à colônia, então mutação nunca o altera, e ele escala a velocidade com que a linhagem produz: 1 para pedra, 0.12 para diamantes. [Taxas de Produção](production_rates.md) lista cada linhagem.

Toda linhagem começa baixa: uma Taxa de Crescimento entre 0.4 e 1.2, uma Taxa de Produção entre 0.08 e 0.7, uma Resistência à Mutação de no máximo 0.2, e uma Vida Útil entre 900 e 2.600 tiques, ou seja, de menos de um minuto a pouco mais de dois minutos de trabalho de reator sem alimento. A categoria Biorreator do JEI mostra a faixa inicial de Taxa de Produção de cada linhagem.

***

## <Color id="gold">Tamanho</Color>

Tamanho é quanto de colônia você tem. Uma colônia enxertada ou mutada começa em algum lugar entre 120 e 600 e pode crescer até o teto de tamanho de 40.000 (configurável) na Incubadora, que cresce colônias maiores mais rápido.

* Num reator, uma colônia no teto trabalha duas vezes mais rápido que uma minúscula.
* No Mutador, uma colônia maior tem chance de sucesso levemente menor, até um quarto menor no teto, e o tamanho da nova colônia não depende da antiga.
* Na Célula de Combustível, o tamanho é simplesmente quanto tempo a colônia dura.

***

## <Color id="gold">Vitalidade</Color>

Vitalidade é a parte da Vida Útil que resta à colônia. Ela só cai enquanto a colônia trabalha num reator energizado sem nutrientes, um tique de idade por tique. Uma colônia que o reator está alimentando não envelhece, nem uma pausada porque seu espaço de saída está cheio. Placas, a Incubadora, o Mutador e a Célula de Combustível nunca envelhecem uma colônia. [Alimentação de Colônias](colony_feeding.md) explica como um reator alimenta suas colônias.

A dica a mostra como porcentagem: verde a partir de 50%, amarelo a partir de 20%, vermelho abaixo disso. Em 0% lê-se Senescente. Uma colônia senescente que fica sem nutrientes num reator perde 2% do seu tamanho (no mínimo 1) a cada segundo que trabalha (configurável), então cerca de metade some após 35 segundos. Alimentá-la para a perda, mas a deixa Senescente.

Todo ciclo de [Incubadora](incubator.md) concluído devolve a Vitalidade a 100%. Uma colônia senescente ainda queima com força total numa Célula de Combustível.
