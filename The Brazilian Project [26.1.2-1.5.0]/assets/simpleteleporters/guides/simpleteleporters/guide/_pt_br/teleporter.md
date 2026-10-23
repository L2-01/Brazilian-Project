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

O Teletransportador é um bloco que permite teletransporte instantâneo entre locais vinculados.

<ItemImage id="simpleteleporters:teleporter" scale="4" />

</Column>
<Column>

## Receita

<RecipeFor id="simpleteleporters:teleporter" />

</Column>
</Row>

## Como Usar

### Configurando um Teletransportador

1. Posicione um bloco Teletransportador no seu destino
2. Vincule um <ItemLink id="simpleteleporters:ender_shard" /> a um local acima do teletransportador de destino **agachando** e **clicando direito** nele
3. Posicione outro bloco Teletransportador no seu local de partida
4. **Clique direito** no Teletransportador de partida com o Núcleo de Ender vinculado para inseri-lo

### Teleportando

Fique em cima de um Teletransportador ativo (um com partículas de portal) e **agache** para teleportar ao destino vinculado.

## Tingindo

Teletransportadores podem ser tingidos em qualquer uma das 16 cores vanilla para ajudar a organizar sua rede. Basta **clicar direito** num Teletransportador com qualquer corante para mudar a cor da sua base de quartzo e da plataforma. A cor padrão é branca.

Isso é puramente cosmético, mas útil para codificar destinos por cor (ex.: vermelho para o hub do Nether, azul para bases oceânicas).

## Ativação por Redstone

Teletransportadores podem ser ativados com um **sinal de redstone**! Quando um teletransportador recebe um pulso de redstone, ele teleporta **todas as entidades** em cima dele para o destino vinculado - incluindo jogadores, criaturas, animais e itens.

Isso habilita poderosas possibilidades de automação:
- Fazendas de criaturas automáticas que teleportam criaturas para uma área de coleta
- Sistemas de transporte de jogadores temporizados usando relógios de redstone
- Gatilhos de placa de pressão para teleporte sem as mãos
- Estações de teleporte ativadas por botão

O teletransportador só ativa na **borda de subida** de um sinal de redstone (quando muda de desligado para ligado), impedindo teleporte contínuo de sinais sustentados.

## Recursos

- **Tingível**: Clique direito com qualquer corante para personalizar a cor da base de quartzo
- **Ativado por Redstone**: Envie um sinal de redstone para teleportar todas as entidades na plataforma
- **Teleporte de Entidades**: Teleporta jogadores, criaturas, animais e mais
- **Partículas de Portal**: Teletransportadores ativos exibem partículas de portal quando têm um Núcleo de Ender vinculado
- **Espera**: Uma breve espera impede reteleporte instantâneo
- **Submersível**: Pode ser posicionado debaixo d'água
- **Suporte a Dimensões**: Mesma dimensão com Núcleos de Ender, interdimensional com <ItemLink id="simpleteleporters:enhanced_ender_shard" />

## Dicas

- Para viagem bidirecional, configure dois Teletransportadores com Núcleos de Ender apontando um para o outro
- O teletransportador ejeta o Núcleo de Ender quando você clica direito nele, permitindo reconfigurar sua rede
- Se o destino estiver bloqueado, você receberá uma mensagem de erro
