---
navigation:
  title: Training Dummy
  position: 0
item_ids:
  - trainingdummy:dummy_spawner
---

# Training Dummy

Um boneco de combate configurável para testar dano, equipamento e mods — coloque-o no chão, bata nele e leia
os números.

---

## Começando

<div alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:dummy_spawner" scale="2.5" />
<GameScene zoom="4">
  <Entity id="trainingdummy:dummy" />
</GameScene>
</div>

- **Coloque** um Boneco de Treinamento no chão para invocar um boneco.

- **Bata nele** com qualquer coisa para ver os números de dano, exibidos no chat ou na tela (configurável).

- **Clique com o botão direito com um Graveto** para abrir seu inventário (armadura, curios, vida, configurações de exibição).

- **Bata nele com um Graveto** para removê-lo — ele larga um gerador que você pode colocar de novo.

- **Renomeie-o** (numa bigorna, com uma Etiqueta) para dar a ele a skin de um jogador real de Minecraft.

- **Colocar um único Boneco de Treinamento carregado sozinho** em qualquer grade de fabricação zera sua vida/nome/
  configuração de exibição, mas mantém o equipamento que ele lembra.

---

## Exibição de Dano

Cada boneco pode mostrar o dano recebido como **Total**, **DPS** ou **Por Golpe** — configurado por boneco,
não globalmente.

Por Golpe também rotula o tipo de dano (Fogo, Congelamento, Explosão, Raio, Magia) sempre que ele
não for dano físico comum.

---

## Isca de Atração

Segure uma Isca de Atração na mão principal de um boneco para fazer as criaturas hostis próximas o atacarem em vez de você.

<Column alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:lure_bait" scale="2.5" />
</Column>

---

## Boneco de Placar

Uma variante que registra o maior golpe único desferido nele e o classifica num ranking **local** de top 10
(e num **global** semanal, se o servidor o ativar). Fabrique-o com um Boneco de Treinamento
e um Diamante.

Veja todos os detalhes na página [Boneco de Placar](scoreboard.md).

---

## Easter Eggs

Há algumas surpresas escondidas no mod — certos apelidos de boneco e até um truque com item fazem
algo especial. Não vamos entregá-las aqui, mas você pode encontrar a lista na página
[Easter Eggs](easter-eggs.md).
