---
navigation:
  title: Módulo de Sonar
  icon: nautec:sonar_module
  position: 11
  parent: submarine/submarine-index.md
item_ids:
  - nautec:sonar_module
---

# <Color id="light_purple">Módulo de Sonar</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="sonar_module" scale="2"/>
  Minério e hostis através da rocha.
</Column>

Um pulso do Módulo de Sonar marca todo veio de minério a até 48 blocos e toda criatura hostil a até 32 blocos, através de rocha sólida, e dá visão noturna à tripulação.

***

## <Color id="gold">Usando</Color>

| | Padrão |
|---|---|
| Energia por pulso | 30.000 |
| Alcance de minério | 48 blocos |
| Alcance de hostis | 32 blocos |
| Recarga | 45 segundos |

Dispare-o e um anel varre o casco pelo terreno. Cada veio de minério é contornado conforme o anel o alcança, colorido pelo tipo de minério, e fica marcado através da rocha por 45 segundos, esmaecendo no fim. Qualquer coisa que conte como minério na tag comum de minérios aparece, então minérios de outros mods também surgem.

Criaturas hostis a até 32 blocos do pulso são contornadas em vermelho pelos mesmos 45 segundos, acompanhando-as ao se moverem, e também brilham por 15 segundos.

Todos a bordo ganham 45 segundos de visão noturna, o que importa em águas profundas onde pouca luz chega.

Os dois alcances são medidos de onde o casco estava ao pulsar, então pulse de novo após se mover para varrer novo terreno. O custo de energia, o alcance de hostis e a recarga são configuráveis.

***

### <Color id="aqua">Receita do Módulo de Sonar</Color>

<Recipe id="nautec:sonar_module"/>
