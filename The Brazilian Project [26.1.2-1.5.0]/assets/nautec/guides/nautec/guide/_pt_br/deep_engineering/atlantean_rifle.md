---
navigation:
  title: Rifle Atlante
  icon: nautec:atlantean_rifle
  position: 5
  parent: deep_engineering/deep_engineering-index.md
item_ids:
  - nautec:atlantean_rifle
---

# <Color id="light_purple">Rifle Atlante</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="atlantean_rifle" scale="2"/>
  Uma arma energizada que dispara um feixe de partículas contínuo enquanto você segura o uso.
</Column>

Segure usar para aquecer o rifle por meio segundo, depois ele dispara um feixe no que você estiver mirando. O feixe acerta a cada 2 tiques enquanto você segurar, e fica mais forte quanto mais tempo você mantiver o disparo. Ele funciona com AP armazenado e não faz nada quando vazio.

***

## <Color id="gold">Dano e Energia</Color>

Nos primeiros 10 segundos de fogo contínuo, o dano e o consumo de energia sobem dos valores iniciais ao máximo. Soltar zera os dois.

| | No início | Após 10 segundos |
|---|---|---|
| Dano por acerto | 4 | 20 |
| Dano por segundo | 40 | 200 |
| AP por acerto | 125 | 625 |
| AP por segundo | 1.250 | 6.250 |

* Cada acerto ignora o tempo de recarga de dano do alvo, então todo acerto conta.
* O feixe alcança 128 blocos. Ele atravessa água, para no primeiro bloco sólido e acerta a primeira criatura em sua linha.
* Um rifle cheio dura cerca de 164 segundos (2 minutos e 45) de fogo contínuo. Rajadas curtas ficam na parte barata da rampa e duram mais no total.
* Se o rifle não tiver AP suficiente para o primeiro acerto, ele mostra "O Rifle Atlante está sem carga" e não dispara. Ele para de atirar quando acaba.

Todo valor desta tabela, o tempo de aquecimento e o alcance estão em `config/nautec-common.toml` (`rifleBaseDamage`, `rifleMaxDamage`, `rifleBaseDrain`, `rifleMaxDrain`, `rifleRampTicks`, `rifleChargeTicks`, `rifleRange`).

***

## <Color id="gold">Carregando</Color>

O rifle comporta 1.000.000 de AP (`riflePowerCapacity`) e sai da mesa de trabalho vazio. A barra embaixo dele mostra sua carga, e a dica mostra a quantia exata.

* Um <ItemLink id="charger"/> o carrega com a energia que seu feixe entrega a cada tique, até 20.000 AP por tique (`rifleMaxInput`). Um feixe mais forte no Carregador o enche mais rápido.
* Uma <ItemLink id="prismatic_battery"/> usada em seu espaço Curios com a habilidade ligada o alimenta do estoque da própria bateria, até 100 AP por tique.

***

## <Color id="gold">Encantamentos</Color>

O rifle aceita Infinidade e maldições, nada mais. Infinidade corta o consumo pela metade, então um rifle cheio dura cerca de 324 segundos (cinco minutos e meio) de fogo contínuo. Sua encantabilidade é muito baixa, então use um livro numa bigorna em vez de uma mesa de encantamentos.

Com o Apotheosis instalado, o rifle conta como arco para afixos e gemas, e os atributos de arco se aplicam ao feixe:

* Velocidade de puxada encurta a carga antes do feixe disparar. +50% de velocidade de puxada o carrega em dois terços do tempo.
* Velocidade de flecha e dano de flecha multiplicam o dano do feixe. +50% de velocidade de flecha é 1.5 vezes o dano.
* Perfuração e rasgo de proteção ignoram parte da Proteção do alvo, e perfuração e rasgo de armadura ignoram parte de sua armadura, escalando com a gema.
* Chance e dano de acerto crítico se aplicam ao feixe como a qualquer ataque.

***

## <Color id="gold">Obtendo um</Color>

A receita usa materiais da [Forja de Pressão Abissal](pressure_forge.md), então coloque uma para funcionar antes. Veja [Materiais Profundos](materials.md).

<Recipe id="nautec:atlantean_rifle"/>
