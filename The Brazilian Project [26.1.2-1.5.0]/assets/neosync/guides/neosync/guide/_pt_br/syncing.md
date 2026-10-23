---
navigation:
  title: Sincronização
  icon: minecraft:ender_eye
  parent: index.md
  position: 6
---

# <Color id="light_purple">Sincronização</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="minecraft:ender_eye" scale="2"/>
  Movendo sua mente entre corpos.
</Column>

***
## <Color id="gold">O Seletor de Cascas</Color>

Entre num <ItemLink id="shell_storage"/> aberto e o seletor de cascas abre. É um menu radial com uma entrada por casca que você tem.

* As cascas são agrupadas por mundo. Use as setas para cima e para baixo para trocar de mundo, e para a esquerda e direita para paginar um mundo lotado.
* Cada entrada mostra as coordenadas da casca e, para uma casca ainda em construção, seu progresso.
* Clique direito numa casca para renomeá-la. Enter salva, Esc cancela.
* Cascas num <ItemLink id="manual_shell_storage"/> são marcadas como Manual.

Clique numa casca para sincronizar. Seu corpo atual fica onde está com tudo que carrega, e você acorda na casca escolhida. Cada casca mantém seu próprio inventário, nível de experiência e modo de jogo.

A sincronização funciona entre dimensões, incluindo as personalizadas. O progresso Projeção Astral é seu na primeira vez que fizer isso.

***
## <Color id="gold">Morrendo numa Casca</Color>

Morrer numa casca não conta no seu contador de mortes. O que acontece em seguida depende de onde você está:

* <Color id="aqua">Numa casca, com outra casca pronta disponível</Color>: você sincroniza direto para o próximo corpo. A casca morta dropa seu inventário onde morreu, então mods de túmulo o coletam.
* <Color id="aqua">Numa casca, sem nenhum lugar para ir</Color>: uma morte normal. Você renasce como sempre.
* <Color id="aqua">No seu corpo original</Color>: uma morte normal. Cascas nunca são escolhidas para você quando seu primeiro corpo morre.

Cascas num <ItemLink id="manual_shell_storage"/> nunca são escolhidas automaticamente.

Um servidor pode desligar a sincronização automática por completo com `autoSyncOnDeath`. Você então vê a tela de morte normal e renasce como sempre, com todas as suas cascas ainda disponíveis para entrar.

***
## <Color id="gold">Qual Casca é Escolhida</Color>

A config `syncPriority` decide a ordem quando mais de uma casca se qualifica. Seu padrão, `NATURAL`, prefere seu corpo original. `NEAREST` prefere a casca mais próxima, e qualquer nome de cor de corante prefere cascas guardadas num armazenamento daquela cor. Vários valores podem ser listados, e o primeiro que corresponder a uma casca vence.

***
## <Color id="gold">Cascas Fantasmas</Color>

Se um armazenamento for destruído ou um chunk for revertido com uma casca dentro, a casca pode permanecer no seu seletor sem corpo por trás. Um operador pode limpá-las com `/neosync ghostshells`. Veja [Comandos](commands.md).
