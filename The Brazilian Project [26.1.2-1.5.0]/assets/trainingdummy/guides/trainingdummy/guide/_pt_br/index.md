---
navigation:
  title: Boneco de Treinamento
  position: 0
item_ids:
  - trainingdummy:dummy_spawner
---

# Boneco de Treinamento

Um boneco de combate configurável para testar dano, equipamentos e mods - coloque-o, bata nele e leia
os números.

---

## Primeiros Passos

<div alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:dummy_spawner" scale="2.5" />
<GameScene zoom="4">
  <Entity id="trainingdummy:dummy" />
</GameScene>
</div>

- **Coloque** um Boneco de Treinamento no chão para invocar um boneco.

- **Bata nele** com qualquer coisa para ver os números de dano, exibidos no chat ou na tela (configurável).

- **Clique com o botão direito com um Graveto** para abrir seu inventário (armadura, curios, vida, configurações de exibição).

- **Bata nele com um Graveto** para removê-lo - ele derruba um gerador que você pode recolocar.

- **Renomeie-o** (numa bigorna, com uma Etiqueta de Nome) para dar a ele a skin de um jogador real do Minecraft.

- **Colocar um único Boneco de Treinamento carregado sozinho** em qualquer grade de fabricação zera sua vida/nome/
  configuração de exibição, mas mantém o equipamento que ele lembra.

---

## Exibição de Dano

Cada boneco pode mostrar o dano recebido como **Total**, **DPS** ou **Por Golpe** - definido por boneco,
não globalmente.

O modo Por Golpe também rotula o tipo de dano (Fogo, Congelamento, Explosivo, Raio, Mágico) sempre que
não for dano físico puro.

---

## Isca de Atração

Segure uma Isca de Atração na mão principal de um boneco para fazer as criaturas hostis próximas atacarem-no em vez de você.

<Column alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:lure_bait" scale="2.5" />
</Column>

---

## Boneco de Placar

Uma variante que registra o maior golpe único que recebeu e o classifica num ranking **local** dos 10
melhores (e num **global** semanal, se o servidor ativar). Fabrique-o com um Boneco de Treinamento
e um Diamante.

Veja os detalhes completos na página [Boneco de Placar](scoreboard.md).

---

## Easter Eggs

Há algumas surpresas escondidas no mod - certos apelidos de boneco e até um truque com item fazem
algo especial. Não vamos estragar aqui, mas você pode encontrar a lista na página
[Easter Eggs](easter-eggs.md).
