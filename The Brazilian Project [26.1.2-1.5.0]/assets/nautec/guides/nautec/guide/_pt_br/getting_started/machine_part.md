---
navigation:
  title: Peças de Máquina Antigas
  icon: nautec:ancient_valve
  position: 5
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:burnt_coil
  - nautec:rusty_gear
  - nautec:gear
  - nautec:ancient_valve
  - nautec:valve
  - nautec:damaged_aquatic_chip
  - nautec:aquatic_chip
---

# <Color id="light_purple">Peças de Máquina Antigas</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="ancient_valve" scale="2"/>
  Peças quebradas do fundo do mar que você repara antes de uma receita aceitá-las.
</Column>

Engrenagens, válvulas, bobinas, chips e batedores vêm do fundo do mar já danificados, e cada tipo é reparado de um jeito. [Sucata](salvage.md) lista onde aparecem. Assim que você alcançar um Geodo de Cristal também pode fazer cada um deles por conta própria, sem depender de achados por sorte: veja "Fazendo-os Você Mesmo" no fim desta página.

| Achado | Reparado | Como |
|---|---|---|
| <ItemLink id="rusty_gear"/> | <ItemLink id="gear"/> | [Gravação](etching.md) |
| <ItemLink id="ancient_valve"/> | <ItemLink id="valve"/> | [Gravação](etching.md) |
| <ItemLink id="burnt_coil"/> | Bobina de Canalização de Laser | [Transformação de Itens](item_transformation.md) em pureza 1.5 |
| <ItemLink id="damaged_aquatic_chip"/> | <ItemLink id="aquatic_chip"/> | fabricação |
| Batedor Quebrado | Batedor | fabricação |

***

<Row>
  <ItemImage id="gear"/>
  ### <Color id="aqua">Engrenagem</Color>
</Row>

Jogue Engrenagens Enferrujadas em Ácido de Gravação. Engrenagens entram na picareta, no machado e na pá de Aço Aquarine, no Misturador, na Estação de Pesca, no Dreno do Mar Profundo e em dois implantes.

***

<Row>
  <ItemImage id="valve"/>
  ### <Color id="aqua">Válvula</Color>
</Row>

Jogue Válvulas Antigas em Ácido de Gravação. Válvulas entram no peitoral e nas calças de Aço Aquarine, no Dreno do Mar Profundo, no Captador Hidrotermal, no Difusor de Oxigênio, na Escotilha de Pressão, no Módulo de Porão de Carga e na Porta de Fusão.

***

<Row>
  <ItemImage id="burnt_coil"/>
  ### <Color id="aqua">Bobina de Canalização de Laser</Color>
</Row>

Segure uma Bobina Queimada num feixe de pureza 1.5 por 10 segundos. Alcance essa pureza com um Cristal de Prismarinho, uma Célula de Combustível Bacteriana ou uma Lente de Focalização, como explica [Transformação de Itens](item_transformation.md). A bobina entra nas ferramentas de Aço Aquarine, no Carregador, na Bateria Prismática e em muitas máquinas.

***

<Row>
  <ItemImage id="aquatic_chip"/>
  ### <Color id="aqua">Chip Aquático</Color>
</Row>

Fabrique um Chip Aquático Danificado com Fragmentos de Prismarinho. Chips Aquáticos entram na Incubadora, no Biorreator e na Célula de Combustível Bacteriana, na Forja de Pressão, na Câmara de Ressonância, na maioria dos módulos do Explorador Marinho e na maioria dos implantes fabricados. O tesouro de zona de sorte do Bosque bioluminescente às vezes dá um pronto.

<Recipe id="nautec:aquatic_chip"/>

***

## <Color id="gold">Batedor</Color>

Fabrique um Batedor Quebrado com Pepitas de Ferro Fundido. O Batedor é necessário para o [Misturador](nautec:laser_chemistry/mixer.md). Batedores Quebrados vêm de Afogados, baús de ruínas oceânicas e tesouros de zona de sorte.

<Recipe id="nautec:whisk"/>

***

## <Color id="gold">Fazendo-os Você Mesmo</Color>

Cada peça tem uma rota garantida que se abre conforme você progride. Cada uma leva à próxima:

1. **Engrenagens**: segure um Bloco de Ferro Fundido num feixe de pureza 2.5 ou maior por 8 segundos e ele vira quatro Engrenagens. Só um <ItemLink id="prismarine_crystal"/> ou uma <ItemLink id="bacterial_fuel_cell"/> alcançam 2.5; veja [Transformação de Itens](item_transformation.md).
2. **Válvulas e Batedores**: fabrique-os de Ferro Fundido, uma Engrenagem ou Aço Aquarine, e um Fragmento de Cristal de Prismarinho.
3. Com uma Válvula e um Batedor você pode construir o [Dreno do Mar Profundo](nautec:laser_chemistry/drain.md) e o [Misturador](nautec:laser_chemistry/mixer.md).
4. **Bobinas Queimadas**: no Misturador, 4 Lingotes de Cobre, 2 Redstone, um Lingote de Aço Aquarine e um Fragmento de Cristal de Prismarinho com 1.000 mB de Água Salgada fazem uma Bobina Queimada. Repare-a num feixe de pureza 1.5 como acima.
5. **Chips Aquáticos**: no Misturador, 2 Lingotes de Ouro, 4 Redstone, 2 Fragmentos de Cristal de Prismarinho e uma Bobina de Canalização de Laser com 1.000 mB de Água Salgada fazem dois Chips Aquáticos prontos.

O JEI mostra as receitas do Misturador e de feixe.

<Recipe id="nautec:valve_from_cast_iron"/>

<Recipe id="nautec:whisk_from_cast_iron"/>
