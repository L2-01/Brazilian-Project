---
navigation:
  title: Comandos
  icon: minecraft:command_block
  parent: index.md
  position: 7
---

# <Color id="light_purple">Comandos</Color>

Tudo fica sob `/neosync` e precisa de nível de permissão 2. `anchor` e `ghostshells` também funcionam para o anfitrião no jogo individual.

***
## <Color id="gold">/neosync select [targets]</Color>

Abre o seletor de cascas para os alvos onde quer que estejam, sem precisar de armazenamento. Jogadores sem casca pronta são pulados com uma mensagem.

Parado num armazenamento vazio, funciona como uma sincronização normal: o corpo fica no armazenamento. Longe de um armazenamento não há onde deixar o corpo, então o jogador é morto e movido para a casca escolhida ao renascer. Um jogador que já está na tela de morte também pode escolher uma casca e chega nela em vez de no seu ponto de renascimento.

***
## <Color id="gold">/neosync anchor</Color>

Uma âncora é um ponto de renascimento que aparece no seletor como uma casca, sem um bloco por trás. Sincronizar para ela cria um corpo novo, com vida cheia e inventário vazio, naquelas coordenadas.

* `anchor set <targets> <dimension> <x y z> [temporary]` dá a cada alvo uma âncora. Passe `true` para uma âncora de uso único que some no momento em que é usada.
* `anchor ensure <targets> <dimension> <x y z>` define uma âncora de uso único apenas para jogadores que não têm nada para sincronizar. Seguro rodar num temporizador ou num gancho de login.
* `anchor list <targets>` lista as âncoras e marca as de uso único.
* `anchor remove <targets> [dimension x y z]` remove uma âncora, ou todas elas sem coordenadas.

***
## <Color id="gold">/neosync ghostshells</Color>

`ghostshells <sync|remove|repair> <targets> [x y z]` lida com cascas que aparecem no seletor mas não existem mais no mundo. Âncoras nunca são tocadas.

* `sync` repara o que consegue e apaga o resto.
* `repair` repara o que consegue e reporta o resto sem apagar.
* `remove` apaga cascas fantasma sem tentar reparar.

Sem coordenadas, a varredura cobre todas as cascas do jogador e também marca cada uma como totalmente construída.

***
## <Color id="gold">/neosync purge</Color>

`purge <players> [dimension]` apaga as cascas de um jogador, tanto a entrada do jogador quanto a cópia no bloco. Os corpos contidos largam seu inventário e XP no bloco. Omita a dimensão para varrer todas as cascas.
