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

Segure o uso para o rifle girar por meio segundo, e então ele dispara um feixe no que você estiver mirando. O feixe atinge a cada 2 tiques enquanto você segurar, e fica mais forte quanto mais tempo você continuar disparando. Roda com AP armazenado e não faz nada enquanto vazio.

***

## <Color id="gold">Dano e Energia</Color>

Ao longo dos primeiros 10 segundos de fogo contínuo, o dano e o consumo de energia sobem dos valores iniciais até o máximo. Soltar zera os dois.

| | No início | Após 10 segundos |
|---|---|---|
| Dano por golpe | 4 | 20 |
| Dano por segundo | 40 | 200 |
| AP por golpe | 125 | 625 |
| AP por segundo | 1.250 | 6.250 |

* Cada golpe ignora a invencibilidade do alvo, então todo golpe conta.
* O feixe alcança 128 blocos. Atravessa água, para no primeiro bloco sólido e atinge a primeira criatura na sua linha.
* Um rifle cheio dura cerca de 164 segundos (2 minutos e 45) de fogo contínuo. Rajadas curtas ficam na ponta barata da progressão e duram mais no total.
* Se o rifle não tiver AP suficiente para o primeiro golpe, mostra "O Rifle Atlante está sem carga" e não dispara. Ele para de disparar quando acaba.

Todos os valores desta tabela, o tempo de rotação e o alcance estão em `config/nautec-common.toml` (`rifleBaseDamage`, `rifleMaxDamage`, `rifleBaseDrain`, `rifleMaxDrain`, `rifleRampTicks`, `rifleChargeTicks`, `rifleRange`).

***

## <Color id="gold">Carregando</Color>

O rifle guarda 1.000.000 AP (`riflePowerCapacity`) e sai da bancada vazio. A barra sob ele mostra sua carga, e a dica mostra o valor exato.

* Um <ItemLink id="charger"/> o carrega com a potência que seu feixe entrega a cada tique, até 20.000 AP por tique (`rifleMaxInput`). Um feixe mais forte no Carregador o enche mais rápido.
* Uma <ItemLink id="prismatic_battery"/> equipada no seu slot de Curios com a habilidade ligada o alimenta do estoque da própria bateria, até 100 AP por tique.

***

## <Color id="gold">Encantamentos</Color>

O rifle aceita Infinidade e maldições, nada mais. Infinidade reduz o consumo de energia pela metade, então um rifle cheio dura cerca de 324 segundos (5 minutos e meio) de fogo contínuo. Sua encantabilidade é muito baixa, então use um livro numa bigorna em vez de uma mesa de encantamentos.

Com o Apotheosis instalado, o rifle conta como arco para afixos e gemas, e os atributos de arco se aplicam ao feixe:

* Velocidade de puxada encurta a rotação antes do feixe disparar. +50% de velocidade de puxada o carrega em dois terços do tempo.
* Velocidade de flecha e dano de flecha multiplicam o dano do feixe. +50% de velocidade de flecha é 1.5 vez o dano.
* Perfuração e rompimento de proteção ignoram parte da Proteção do alvo, e perfuração e rompimento de armadura ignoram parte da armadura dele, escalando com a gema.
* Chance e dano de acerto crítico se aplicam ao feixe como a qualquer ataque.

***

## <Color id="gold">Conseguindo Um</Color>

A receita usa materiais da [Forja de Pressão Abissal](pressure_forge.md), então ponha uma funcionando primeiro. Veja [Materiais Profundos](materials.md).

<Recipe id="nautec:atlantean_rifle"/>