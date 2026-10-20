---
navigation:
  title: Fluidos de Química
  icon: nautec:eas_bucket
  position: 3
  parent: laser_chemistry/laser_chemistry-index.md
item_ids:
  - nautec:eas_bucket
  - nautec:saltwater_bucket
  - nautec:oil_bucket
  - nautec:glass_vial
  - nautec:eas_vial
  - nautec:salt
---

# <Color id="light_purple">Fluidos de Química</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="eas_bucket" scale="2"/>
  Os fluidos que as máquinas do NauTec usam e produzem.
</Column>

A Água Salgada é a base de quase toda receita do [Misturador](mixer.md). O Misturador a transforma em Soro Eletrolítico de Algas (EAS) e Ácido de Gravação.

***

<Row>
  <ItemImage id="saltwater_bucket"/>
  ### <Color id="aqua">Água Salgada</Color>
</Row>

A Água Salgada vem do [Dreno do Mar Profundo](drain.md), que bombeia 500 mB por segundo para seu tanque. Retire-a com um Balde ou um cano.

Você também pode fazê-la no [Misturador](mixer.md): 1.000 mB de Água comum e um Sal dão 1.000 mB de Água Salgada em 5 segundos.

Água do oceano num Balde continua água comum por padrão. Criadores de modpacks podem definir `collectSaltWater` como true em `config/nautec-common.toml` para que encher um Balde de qualquer fonte de água num bioma de oceano dê um Balde de Água Salgada.

***

<Row>
  <ItemImage id="eas_bucket"/>
  ### <Color id="aqua">Soro Eletrolítico de Algas (EAS)</Color>
</Row>

Feito no [Misturador](mixer.md) a partir de Água Salgada. O EAS destrava as habilidades das [ferramentas de Aço Aquarine](tools.md).

Para infundir uma ferramenta, derrame o EAS como um bloco-fonte e jogue a ferramenta nele. Após cerca de 7.5 segundos a ferramenta fica infundida de vez e a fonte de EAS é gasta, então um balde infunde uma ferramenta.

***

<Row>
  <ItemImage id="etching_acid_bucket"/>
  ### <Color id="aqua">Ácido de Gravação</Color>
</Row>

Limpa a ferrugem de caixotes e peças velhas. Faça-o no [Misturador](mixer.md) ou por fabricação. Veja [Gravação de Caixotes e Itens](nautec:getting_started/etching.md).

***

<Row>
  <ItemImage id="oil_bucket"/>
  ### <Color id="aqua">Petróleo</Color>
</Row>

Um fluido espesso encontrado em <ItemLink id="oil_barrel"/>s.

***

## <Color id="gold">Frascos e Sal</Color>

<Row>
  <ItemImage id="glass_vial"/>
  ### <Color id="aqua">Frasco de Vidro</Color>
</Row>

<Recipe id="nautec:glass_vial"/>

<Row>
  <ItemImage id="eas_vial"/>
  ### <Color id="aqua">Frasco de Soro Eletrolítico de Algas (EAS)</Color>
</Row>

Um Balde de EAS e três Frascos de Vidro fabricam três Frascos de EAS, e você recebe o Balde vazio de volta. Frascos de Vidro e um Frasco de EAS entram no <ItemLink id="syringe_robot_arm"/>.

<Recipe id="nautec:eas_vial"/>

<Row>
  <ItemImage id="salt"/>
  ### <Color id="aqua">Sal</Color>
</Row>

Aparece como captura nas zonas de pesca de sorte. Veja [Pesca](nautec:getting_started/fishing.md). Um [Captador Hidrotermal](nautec:getting_started/ocean_generators.md) também deixa um Sal para trás a cada 1.000 mB de Água Salgada que ferve. Sal e Água fazem Água Salgada no [Misturador](mixer.md).