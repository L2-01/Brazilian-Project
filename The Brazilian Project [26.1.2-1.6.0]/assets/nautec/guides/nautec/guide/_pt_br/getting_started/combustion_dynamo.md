---
navigation:
  title: Dínamo de Combustão
  icon: nautec:combustion_dynamo
  position: 16
  parent: getting_started/getting_started-index.md
item_ids:
  - nautec:combustion_dynamo
  - nautec:kelp_slurry
  - nautec:algal_lipid
  - nautec:fiery_crystal
  - nautec:crystalline_combustion_booster
  - nautec:stellar_combustion_booster
---

# <Color id="light_purple">Dínamo de Combustão</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="combustion_dynamo" scale="2"/>
  </Row>
  Um motor que queima petróleo e água em Forge Energy (FE).
</Column>

O Dínamo de Combustão produz 320 FE/t enquanto tiver petróleo e água, e a envia para qualquer cabo ou máquina que o toque. O petróleo vem de uma linhagem de bactérias que transforma algas em lipídios, então uma fazenda de algas e um Biorreator o mantêm funcionando para sempre.

***

## <Color id="gold">Funcionando</Color>

* **Petróleo.** Qualquer petróleo na tag `c:oil` funciona, o próprio do NauTec e o de outros mods. Ele queima 1 mB a cada 10 tiques, então um balde dura mais de 8 minutos.
* **Água.** Ele também usa 1 mB de água por tique, 20 mB por segundo.
* **Tanques.** Ele tem um tanque separado de 8.000 mB para cada um. Envie ambos os fluidos por qualquer lado: o petróleo só entra no tanque de petróleo e a água só no tanque de água, então um único tubo pode transportar os dois.
* **Aditivo.** Coloque um impulsionador no espaço de item para aumentar a saída. O cronômetro dele só avança enquanto o motor queima; ficar sem petróleo, água ou espaço de saída o pausa.

| Impulsionador | FE/t | Uso de petróleo e água | Tempo ativo |
|---|---|---|---|
| Pó de Redstone | 480 | 1,1 vezes a base | 1 minuto |
| Pó de Blaze | 640 | 1,5 vezes a base | 2 minutos |
| Cristal Ardente | 960 | 2 vezes a base | 5 minutos |
| Impulsionador de Combustão Cristalino | 1.600 | 3 vezes a base | 10 minutos |
| Impulsionador de Combustão Estelar | 3.200 | 5 vezes a base | 1 hora |

Fabrique um Cristal Ardente a partir de um Fragmento de Cristal de Prismarinho e quatro Pós de Blaze. Combine dois Cristais Ardentes, dois Fragmentos Ressonantes e um Cristal de Prismarinho Impecável para o nível cristalino. O nível estelar combina quatro impulsionadores cristalinos, quatro peças de Revestimento de Aço Profundo e uma Estrela do Nether. O JEI mostra cada impulso e sua receita de fabricação.

<RecipeFor id="fiery_crystal"/>
<RecipeFor id="crystalline_combustion_booster"/>
<RecipeFor id="stellar_combustion_booster"/>

A tela mostra a saída, o que falta ao motor e quanto impulso resta. O Jade mostra o mesmo do lado de fora.

***

## <Color id="gold">Produzindo Petróleo</Color>

<Row>
  <ItemImage id="kelp_slurry"/>
  ### <Color id="aqua">Polpa de Algas</Color>
</Row>

Misture 4 Algas com 1.000 mB de Água Salgada no [Misturador](nautec:laser_chemistry/mixer.md) para fazer 2 Polpas de Algas.

<Row>
  <ItemImage id="algal_lipid"/>
  ### <Color id="aqua">Lipófilas e Lipídio de Algas</Color>
</Row>

Lipófilas são uma linhagem de bactérias que produz Lipídio de Algas. Mute-as a partir de Halotróficas no [Mutador](nautec:aquatic_biology/mutator.md) com a Polpa de Algas como catalisador (10% por tentativa), depois cresça e alimente-as com Polpa de Algas como qualquer outra linhagem. Uma colônia em um [Biorreator](nautec:aquatic_biology/bio_reactor.md) produz um fluxo constante de Lipídio de Algas.

### <Color id="aqua">Petróleo</Color>

Misture 1 Lipídio de Algas com 250 mB de Água Salgada no Misturador para fazer 1.000 mB de petróleo.

<RecipeFor id="combustion_dynamo"/>
