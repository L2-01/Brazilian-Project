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
  Um motor que queima petróleo e água virando Forge Energy (FE).
</Column>

O Dínamo de Combustão produz 320 FE/t enquanto tem petróleo e água, e empurra essa energia para qualquer cabo ou máquina encostada nele. O petróleo vem de uma linhagem de bactéria que transforma alga em lipídios, então uma farm de alga e um Biorreator o mantêm rodando para sempre.

***

## <Color id="gold">Operando</Color>

* **Petróleo.** Qualquer petróleo da tag `c:oil` serve, o do próprio NauTec e o de outros mods. Ele queima 1 mB a cada 10 tiques, então um balde dura mais de 8 minutos.
* **Água.** Também usa 1 mB de água por tique, 20 mB por segundo.
* **Tanques.** Tem um tanque separado de 8.000 mB para cada um. Conecte os dois fluidos por qualquer lado: o petróleo só entra no tanque de petróleo e a água só no de água, então um único cano pode carregar os dois.
* **Aditivo.** Coloque Pó de Redstone no slot para subir a produção para 480 FE/t. Um pó dura um minuto de queima e faz o motor usar 10% mais petróleo e água enquanto durar. O temporizador só corre enquanto o motor está queimando.

A tela mostra a produção, o que está faltando ao motor e quanto de bônus resta. O Jade mostra o mesmo por fora.

***

## <Color id="gold">Produzindo Petróleo</Color>

<Row>
  <ItemImage id="kelp_slurry"/>
  ### <Color id="aqua">Polpa de Algas</Color>
</Row>

Misture 4 Algas com 1.000 mB de Água Salgada no [Misturador](nautec:laser_chemistry/mixer.md) para fazer 2 Pastas de Alga.

<Row>
  <ItemImage id="algal_lipid"/>
  ### <Color id="aqua">Lipófilas e Lipídio de Algas</Color>
</Row>

Lipófilas são uma linhagem de bactéria que produz Lipídio de Algas. Mute-os a partir de Halotróficas no [Mutador](nautec:aquatic_biology/mutator.md) com Polpa de Algas como catalisador (10% por tentativa), depois cultive-os e alimente-os com Polpa de Algas como qualquer outra linhagem. Uma colônia num [Biorreator](nautec:aquatic_biology/bio_reactor.md) produz um fluxo constante de Lipídio de Algas.

### <Color id="aqua">Petróleo</Color>

Misture 1 Lipídio de Algas com 250 mB de Água Salgada no Misturador para fazer 1.000 mB de petróleo.

<RecipeFor id="combustion_dynamo"/>