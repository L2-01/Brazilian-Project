---
navigation:
  title: Boneco de Placar
  parent: index.md
  position: 2
item_ids:
  - trainingdummy:scoreboard_dummy_spawner
---

# Boneco de Placar

Uma segunda variante de boneco que registra o maior golpe único desferido nele, em vez de um total
corrente, e o envia para um ranking.

---

## Começando

<div alignItems="center" fullWidth={true}>
<ItemImage id="trainingdummy:scoreboard_dummy_spawner" scale="2.5" />
</div>

- **Fabrique** um com um Boneco de Treinamento e um Diamante.

- **Coloque-o** no chão como um boneco comum.

- **Bata nele** — se for grande o bastante para entrar no top 10, é adicionado ao ranking.

- **Clique com o botão direito com um Graveto** para abrir o ranking e ver sua posição.

- **Bata nele com um Graveto** para removê-lo — ele larga um gerador que você pode colocar de novo.

---

## Local x Global

Cada servidor mantém seu próprio ranking **local**, apenas com os 10 maiores golpes.

Também existe um ranking **global** compartilhado entre todos os
servidores. Ele fica **desligado por padrão**: o dono do servidor precisa ativar `globalLeaderboardEnabled` na
configuração do servidor e, até lá, a aba Global apenas informa isso. Quando ativado, apenas seu apelido e
o dano de um golpe recorde são enviados. O ranking global zera toda semana; o local nunca zera.

O jogador nº 1 de qualquer ranking exibido tem sua skin renderizada ao lado do nome; clique e arraste-a
para girá-la.

---

## Lista-negra de Armas

Os donos de servidor podem bloquear armas específicas (ou mods inteiros) de marcar um golpe. Se um golpe com
algo assim não aparece no ranking, é por isso.

Os seguintes são sempre bloqueados, em todo servidor:

- Morgan Sword (Mahou Tsukai)
- Forbidden Butcher Knife (Occultism Extra Spirits)
- Qualquer item do Avaritia
- Qualquer item do Modern Industrialization
- Qualquer item com "Infinity" no nome
- Qualquer item com "Quantum" no nome

Os donos de servidor podem bloquear mais armas além desta lista.
