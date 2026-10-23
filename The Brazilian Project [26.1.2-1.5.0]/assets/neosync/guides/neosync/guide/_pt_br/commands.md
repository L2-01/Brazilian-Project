---
navigation:
  title: Comandos
  icon: minecraft:command_block
  parent: index.md
  position: 7
---

# <Color id="light_purple">Comandos</Color>

Tudo fica sob `/neosync` e precisa de nível de permissão 2. `anchor` e `ghostshells` também funcionam para o anfitrião em single player.

***
## <Color id="gold">/neosync select [targets]</Color>

Abre o seletor de cascas para os alvos onde quer que estejam, sem precisar de armazenamento. Jogadores sem casca pronta são pulados com uma mensagem.

Parado num armazenamento vazio isso funciona como uma sincronização normal: o corpo fica no armazenamento. Longe de um armazenamento não há onde deixar o corpo, então o jogador é morto e movido para a casca escolhida ao renascer. Um jogador que já esteja na tela de morte também pode escolher uma casca e chega nela em vez de no seu ponto de renascimento.

***
## <Color id="gold">/neosync anchor</Color>

Uma âncora é um ponto de renascimento que aparece no seletor como uma casca, sem bloco por trás. Sincronizar para ela cria um corpo novo com vida cheia e inventário vazio naquelas coordenadas.

* `anchor set <targets> <dimension> <x y z> [temporary]` dá uma âncora a cada alvo. Passe `true` para uma âncora de uso único que some no momento em que é usada.
* `anchor ensure <targets> <dimension> <x y z>` define uma âncora de uso único só para jogadores que não têm nada para sincronizar. Seguro para rodar num timer ou num gatilho de login.
* `anchor list <targets>` lista as âncoras e marca as de uso único.
* `anchor remove <targets> [dimension x y z]` remove uma âncora, ou todas elas sem coordenadas.

***
## <Color id="gold">/neosync ghostshells</Color>

`ghostshells <sync|remove|repair> <targets> [x y z]` lida com cascas que aparecem no seletor mas não existem mais no mundo. Âncoras nunca são tocadas.

* `sync` repara o que pode e apaga o resto.
* `repair` repara o que pode e reporta o resto sem apagar.
* `remove` apaga cascas fantasmas sem tentar reparar.

Sem coordenadas a varredura cobre todas as cascas do jogador, e também marca cada uma como totalmente construída.

***
## <Color id="gold">/neosync purge</Color>

`purge <players> [dimension]` apaga as cascas de um jogador, tanto a entrada do jogador quanto a cópia no bloco. Corpos contidos dropam seu inventário e XP no bloco. Omita a dimensão para limpar todas as cascas.
