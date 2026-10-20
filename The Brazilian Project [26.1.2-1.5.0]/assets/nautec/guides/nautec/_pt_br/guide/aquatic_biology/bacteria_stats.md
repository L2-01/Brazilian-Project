---
navigation:
  title: Stats de Bactérias
  icon: nautec:petri_dish
  position: 5
  parent: aquatic_biology/aquatic_biology-index.md
---

# <Color id="light_purple">Stats de Bactérias</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="petri_dish" scale="2"/>
  Tamanho, Vitalidade e quatro stats decidem quanto vale uma colônia.
</Column>

Cada colônia rola seus stats a partir da faixa inicial da sua linhagem quando é enxertada ou mutada. Depois disso os stats só mudam quando a colônia muta ou é apurada no [Mutador](mutator.md), e a nova colônia os carrega adiante com um pequeno deslocamento aleatório. Taxa de Crescimento e Taxa de Produção cada uma sobem ou descem no máximo stat / (10 x (1 + Resistência à Mutação)), então uma colônia com Taxa de Produção 1 e sem resistência acaba entre 0.9 e 1.1, e resistência maior a mantém mais perto da mãe. Longevidade se move em até 100 tiques, também menos com resistência maior. A própria Resistência à Mutação nunca cai: cada mutação a aumenta um pouco, menos quanto mais perto do teto. Apurar uma colônia forte significa uma cadeia de mutações ou apuramentos. Cultivar, alimentar e trabalhar uma colônia nunca muda seus stats.

Analise uma placa no [Analisador Bacteriano](bacterial_analyzer.md) para lê-los, depois segure Shift sobre ela.

***

## <Color id="gold">Os Quatro Stats</Color>

| Stat | Teto | O que faz |
|---|---|---|
| Taxa de Crescimento | 5 | Multiplica o tamanho que um ciclo de [Incubadora](incubator.md) adiciona. |
| Resistência à Mutação | 1 | Reduz a chance de sucesso do [Mutador](mutator.md) em até metade, e corta o custo de uma tentativa falha até nada no teto. Define a pureza do feixe de uma [Célula de Combustível Bacteriana](bacterial_fuel_cell.md). |
| Taxa de Produção | 2 | Multiplica a velocidade com que um [Biorreator](bio_reactor.md) produz itens. Define a potência de uma Célula de Combustível e a velocidade com que queima a colônia. |
| Longevidade | 24.000 | Os tiques que uma colônia pode trabalhar num reator sem nutrientes antes de ficar Senescente. |

Os quatro tetos são configuráveis. Um stat mostrado em vermelho no tooltip está no seu teto.

Para uma linhagem que produz algo, o tooltip analisado também mostra o Rendimento de Linhagem. Ele pertence à linhagem e não à colônia, então mutação nunca o muda, e ele escala a velocidade com que a linhagem produz: 1 para pedra, 0.12 para diamantes. [Taxas de Produção](production_rates.md) lista toda linhagem.

Toda linhagem começa baixa: uma Taxa de Crescimento entre 0.4 e 1.2, uma Taxa de Produção entre 0.08 e 0.7, uma Resistência à Mutação de no máximo 0.2, e uma Longevidade entre 900 e 2.600 tiques — de menos de um minuto a pouco mais de dois minutos de trabalho de reator sem alimento. A categoria Biorreator do JEI mostra a faixa inicial de Taxa de Produção de cada linhagem.

***

## <Color id="gold">Tamanho</Color>

Tamanho é quanta colônia você tem. Uma colônia enxertada ou mutada começa entre 120 e 600 e pode crescer até o limite de tamanho de 40.000 (configurável) na Incubadora, que cultiva colônias maiores mais rápido.

* Num reator, uma colônia no teto trabalha duas vezes mais rápido que uma mínima.
* No Mutador, uma colônia maior tem uma chance de sucesso levemente menor, até um quarto menor no teto, e o tamanho da nova colônia não depende do tamanho da antiga.
* Na Célula de Combustível, tamanho é simplesmente quanto tempo a colônia dura.

***

## <Color id="gold">Vitalidade</Color>

Vitalidade é a parte da Longevidade que a colônia ainda tem. Ela só cai enquanto a colônia trabalha num reator energizado sem nutrientes, um tique de idade por tique. Uma colônia que o reator está alimentando não envelhece, nem uma pausada porque seu slot de saída está cheio. Placas, a Incubadora, o Mutador e a Célula de Combustível nunca envelhecem uma colônia. [Alimentação de Colônias](colony_feeding.md) explica como um reator alimenta suas colônias.

O tooltip a mostra como porcentagem: verde a partir de 50%, amarelo a partir de 20%, vermelho abaixo disso. A 0% lê-se Senescente. Uma colônia senescente que fica sem nutrientes num reator perde 2% do seu tamanho (no mínimo 1) por segundo trabalhado (configurável), então cerca de metade dela se foi após 35 segundos. Alimentá-la para a perda mas a deixa Senescente.

Todo ciclo de [Incubadora](incubator.md) completado volta a Vitalidade para 100%. Uma colônia senescente ainda queima em força total numa Célula de Combustível.