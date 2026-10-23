---
navigation:
  title: Teletransportador
  icon: simpleteleporters:teleporter
  parent: index.md
  position: 1
item_ids:
  - simpleteleporters:teleporter
---

# Teletransportador

<Row>
<Column>

O Teletransportador é um bloco que permite teletransporte instantâneo entre locais conectados.

<ItemImage id="simpleteleporters:teleporter" scale="4" />

</Column>
<Column>

## Receita

<RecipeFor id="simpleteleporters:teleporter" />

</Column>
</Row>

## Como Usar

### Configurando um Teletransportador

1. Coloque um bloco Teletransportador no seu destino
2. Vincule um <ItemLink id="simpleteleporters:ender_shard" /> a um local acima do teletransportador de destino **agachando-se** e **clicando com o botão direito** nele
3. Coloque outro bloco Teletransportador no seu local de partida
4. Clique com o **botão direito** no Teletransportador de partida com o Fragmento de Ender vinculado para inseri-lo

### Teletransportando

Fique em pé sobre um Teletransportador ativo (um com partículas de portal) e **agache-se** para se teletransportar ao destino vinculado.

## Tingimento

Os Teletransportadores podem ser tingidos em qualquer uma das 16 cores vanilla para ajudar a organizar sua rede de teletransportadores. Basta clicar com o **botão direito** num Teletransportador com qualquer corante para mudar a cor da sua base de quartzo e plataforma. A cor padrão é branca.

Isso é puramente cosmético, mas útil para codificar destinos por cor (ex.: vermelho para o hub do Nether, azul para bases oceânicas).

## Ativação por Redstone

Os Teletransportadores podem ser ativados com um **sinal de redstone**! Quando um teletransportador recebe um pulso de redstone, ele teletransporta **todas as entidades** em cima dele para o destino vinculado — incluindo jogadores, criaturas, animais e itens.

Isso permite possibilidades de automação poderosas:
- Farms automáticas de criaturas que teletransportam criaturas para uma área de coleta
- Sistemas de transporte temporizado de jogadores usando relógios de redstone
- Gatilhos de placa de pressão para teletransporte sem usar as mãos
- Estações de teletransporte ativadas por botão

O teletransportador só ativa na **borda de subida** de um sinal de redstone (quando muda de desligado para ligado), evitando teletransporte contínuo de sinais sustentados.

## Recursos

- **Tingível**: clique com o botão direito com qualquer corante para personalizar a cor da base de quartzo
- **Ativado por Redstone**: envie um sinal de redstone para teletransportar todas as entidades na plataforma
- **Teletransporte de Entidades**: teletransporta jogadores, criaturas, animais e mais
- **Partículas de Portal**: Teletransportadores ativos exibem partículas de portal quando têm um Fragmento de Ender vinculado
- **Recarga**: uma breve recarga evita teletransporte instantâneo repetido
- **Submersível**: pode ser colocado debaixo d'água
- **Suporte a Dimensões**: mesma dimensão com Fragmentos de Ender, entre dimensões com <ItemLink id="simpleteleporters:enhanced_ender_shard" />

## Dicas

- Para viagem bidirecional, configure dois Teletransportadores com Fragmentos de Ender apontando um para o outro
- O teletransportador ejeta o Fragmento de Ender quando você clica nele com o botão direito, permitindo reconfigurar sua rede
- Se o destino estiver bloqueado, você receberá uma mensagem de erro
