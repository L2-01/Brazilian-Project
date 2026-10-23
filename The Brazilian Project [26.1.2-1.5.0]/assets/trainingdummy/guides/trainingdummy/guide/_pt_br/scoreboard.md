---
navigation:
  title: Boneco de Placar
  parent: index.md
  position: 2
item_ids:
  - trainingdummy:scoreboard_dummy_spawner
---

# Boneco de Placar

Uma segunda variante de boneco que registra o maior golpe único que recebeu, em vez de um total
corrente, e o envia para um ranking.

---

## Primeiros Passos

<div alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:scoreboard_dummy_spawner" scale="2.5" />
</div>

- **Fabrique** um com um Boneco de Treinamento e um Diamante.

- **Coloque-o** como um boneco comum.

- **Bata nele** - se o golpe for grande o bastante para o top 10, ele entra no ranking.

- **Clique com o botão direito com um Graveto** para abrir o ranking e ver sua posição.

- **Bata nele com um Graveto** para removê-lo - ele derruba um gerador que você pode recolocar.

---

## Local vs Global

Cada servidor mantém seu próprio ranking **local**, apenas com os 10 melhores golpes.

Também há um ranking **global** compartilhado entre todos os
servidores. Ele fica **desligado por padrão**: o dono do servidor precisa ativar `globalLeaderboardEnabled` na
config do servidor e, até lá, a aba Global apenas informa isso. Quando ativado, só o seu apelido e
o dano de um golpe recorde são enviados. O ranking global zera toda semana; o local, nunca.

O jogador em #1 no ranking que estiver sendo exibido tem sua skin renderizada ao lado do nome; clique e arraste
para girá-la.

---

## Lista-Negra de Armas

Donos de servidor podem bloquear armas específicas (ou mods inteiros) de pontuarem um golpe. Se um golpe com
algo assim não aparecer no ranking, é por isso.

Os itens a seguir são sempre bloqueados, em todo servidor:

- Morgan Sword (Mahou Tsukai)
- Forbidden Butcher Knife (Occultism Extra Spirits)
- Qualquer item do Avaritia
- Qualquer item do Modern Industrialization
- Qualquer item com "Infinity" no nome
- Qualquer item com "Quantum" no nome

Donos de servidor podem bloquear mais armas além desta lista.
