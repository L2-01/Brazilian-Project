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
---

# <Color id="light_purple">Dínamo de Combustão</Color>

<Column alignItems="center" fullWidth={true}>
  <Row>
    <ItemImage id="combustion_dynamo" scale="2"/>
  </Row>
  Um motor que queima petróleo e água em Forge Energy (FE).
</Column>

O Dínamo de Combustão faz 320 FE/t enquanto tiver petróleo e água, e o empurra para qualquer cabo ou máquina que o toque. O petróleo vem de uma linhagem de bactérias que transforma alga em lipídios, então uma fazenda de algas e um Biorreator o mantêm funcionando para sempre.

***

## <Color id="gold">Operando-o</Color>

* **Petróleo.** Qualquer petróleo na tag `c:oil` funciona, o do próprio NauTec e o de outros mods. Ele queima 1 mB a cada 10 tiques, então um balde dura mais de 8 minutos.
* **Água.** Ele também usa 1 mB de água por tique, 20 mB por segundo.
* **Tanques.** Tem um tanque separado de 8.000 mB para cada um. Tubule os dois fluidos por qualquer lado: petróleo só entra no tanque de petróleo e água só no de água, então um único tubo pode carregar os dois.
* **Aditivo.** Coloque Pó de Redstone no espaço para subir a saída a 480 FE/t. Um pó dura um minuto de queima e faz o motor usar 10% mais petróleo e água enquanto dura. O temporizador só corre enquanto o motor queima.

A tela mostra a saída, o que falta ao motor e quanto de bônus resta. O Jade mostra o mesmo de fora.

***

## <Color id="gold">Fazendo Petróleo</Color>

<Row>
  <ItemImage id="kelp_slurry"/>
  ### <Color id="aqua">Polpa de Algas</Color>
</Row>

Misture 4 Algas com 1.000 mB de Água Salgada no [Misturador](nautec:laser_chemistry/mixer.md) para fazer 2 Polpas de Algas.

<Row>
  <ItemImage id="algal_lipid"/>
  ### <Color id="aqua">Lipófilos e Lipídio de Algas</Color>
</Row>

Lipófilos são uma linhagem de bactérias que produz Lipídio de Algas. Mute-os a partir de Halótrofos no [Mutador](nautec:aquatic_biology/mutator.md) com Polpa de Algas como catalisador (10% por tentativa), depois cultive-os e alimente-os com Polpa de Algas como qualquer outra linhagem. Uma colônia num [Biorreator](nautec:aquatic_biology/bio_reactor.md) produz um fluxo constante de Lipídio de Algas.

### <Color id="aqua">Petróleo</Color>

Misture 1 Lipídio de Algas com 250 mB de Água Salgada no Misturador para fazer 1.000 mB de petróleo.

<RecipeFor id="combustion_dynamo"/>
