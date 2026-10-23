---
navigation:
  title: Melhorias do Reator
  icon: nautec:reactor_speed_upgrade
  position: 11
  parent: aquatic_biology/aquatic_biology-index.md
item_ids:
  - nautec:reactor_speed_upgrade
  - nautec:reactor_yield_upgrade
  - nautec:reactor_efficiency_upgrade
  - nautec:reactor_fusion_upgrade
---

# <Color id="light_purple">Melhorias do Reator</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="reactor_speed_upgrade" scale="2"/>
  Melhorias fazem um reator produzir mais ou comer menos, em troca de um consumo de energia maior.
</Column>

O [Biorreator](bio_reactor.md) tem 2 espaços de melhorias e o [Biorreator Industrial](industrial_bio_reactor.md) tem 4. Cada espaço comporta uma melhoria, você pode misturar tipos livremente, e duas do mesmo tipo contam em dobro. Melhorias afetam toda colônia no reator. Funis e tubos também podem inseri-las; elas só entram em espaços de melhorias.

A dica de cada melhoria mostra seu efeito e multiplicador de potência com os valores atuais da configuração.

***

## <Color id="gold">As Melhorias</Color>

<Row>
  <ItemImage id="reactor_speed_upgrade"/>
  ### <Color id="aqua">Melhoria de Velocidade do Reator</Color>
</Row>

Adiciona 50% de velocidade de produção por melhoria: uma dá 1.5 vezes a velocidade, duas dão 2 vezes, quatro dão 3 vezes. Multiplica o consumo de energia por 1.6.

<Row>
  <ItemImage id="reactor_yield_upgrade"/>
  ### <Color id="aqua">Melhoria de Produção do Reator</Color>
</Row>

Adiciona um item a cada ciclo completado: uma melhoria dá 2 itens por ciclo, duas dão 3, quatro dão 5. Multiplica o consumo de energia por 1.8. O espaço de saída da colônia precisa ter lugar para o lote inteiro antes do ciclo poder terminar.

<Row>
  <ItemImage id="reactor_efficiency_upgrade"/>
  ### <Color id="aqua">Melhoria de Eficiência do Reator</Color>
</Row>

Cada colônia gasta 25% a menos de seu [buffer de nutrientes](colony_feeding.md) por tique para cada melhoria, e as reduções se multiplicam: uma deixa 75%, duas 56%, três 42%, quatro 32%. Um nutriente de 1.200 tiques então dura 80 segundos de trabalho com uma melhoria, 107 com duas e 190 com quatro. Nunca desce abaixo do piso de 25% (configurável), que quatro melhorias nos valores padrão não alcançam. Multiplica o consumo de energia por 1.2. Não muda em nada a velocidade com que os itens saem.

Melhorias de Velocidade e de Produção ambas cortam os nutrientes gastos por item, porque nutrientes são gastos por tique de trabalho, não por item. Para produção por AP, uma Melhoria de Produção (o dobro de itens por 1.8 vezes a energia) vence uma Melhoria de Velocidade (1.5 vezes os itens por 1.6 vezes a energia).

<Row>
  <ItemImage id="reactor_fusion_upgrade"/>
  ### <Color id="aqua">Melhoria de Fusão do Reator</Color>
</Row>

Feita de uma de cada uma das outras três. Conta como uma Melhoria de Velocidade, uma de Produção e uma de Eficiência, tudo num único espaço, e se acumula com elas e com outras Melhorias de Fusão. Multiplica o consumo de energia por 2.5, menos que os 3.46 que as três melhorias separadas custariam juntas.

É para um reator cujos espaços já estão cheios. Quatro Melhorias de Fusão num Biorreator Industrial dão 3 vezes a velocidade, 5 itens por ciclo e 32% de uso de nutrientes, por cerca de 39 vezes a potência base.

***

## <Color id="gold">Matemática da Energia</Color>

AP necessários = (base + por colônia x espaços de colônia preenchidos) x 1.6 por Melhoria de Velocidade x 1.8 por Melhoria de Produção x 1.2 por Melhoria de Eficiência x 2.5 por Melhoria de Fusão, arredondado para cima

Cada melhoria multiplica o total inteiro de novo, então o custo sobe rápido. Os valores base e por colônia estão na página [Taxas de Produção](production_rates.md).

Um Biorreator com 3 colônias:

| Melhorias | AP necessários |
|---|---|
| nenhuma | 50 |
| 1 Velocidade | 80 |
| 2 Velocidade | 128 |
| 1 Produção | 90 |
| 2 Produção | 162 |
| 1 Velocidade, 1 Produção | 144 |
| 1 Produção, 1 Eficiência | 108 |
| 2 Eficiência | 72 |
| 1 Fusão | 125 |
| 1 Fusão, 1 Produção | 225 |
| 2 Fusão | 313 |

Um Biorreator Industrial com 9 colônias:

| Melhorias | AP necessários |
|---|---|
| none | 550 |
| 4 Eficiência | 1.141 |
| 2 Produção, 2 Eficiência | 2.567 |
| 4 Velocidade | 3.605 |
| 2 Velocidade, 2 Produção | 4.562 |
| 4 Produção | 5.774 |
| 1 Fusão | 1.375 |
| 2 Fusão | 3.438 |
| 2 Fusão, 2 Produção | 11.138 |
| 4 Fusão | 21.485 |

Todo bônus e multiplicador desta página é configurável.

***

## <Color id="gold">Receitas</Color>

Os ingredientes estão cobertos na página [Materiais Profundos](nautec:deep_engineering/materials.md).

***

## <Color id="gold">Feixes Mais Fortes</Color>

Um feixe mais forte que o necessário acelera um reator sobre suas Melhorias de Velocidade, e os dois se multiplicam. Toda melhoria que aumenta o consumo também aumenta o feixe que o reator precisa antes de acelerar, então a velocidade do feixe é sempre medida contra o reator já melhorado.

Veja [Feixes Mais Fortes](nautec:getting_started/stronger_beams.md) para a regra e cada máquina a que ela se aplica.

<RecipeFor id="reactor_speed_upgrade"/>

<RecipeFor id="reactor_yield_upgrade"/>

<RecipeFor id="reactor_efficiency_upgrade"/>

<RecipeFor id="reactor_fusion_upgrade"/>
