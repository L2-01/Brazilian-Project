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
  Minérios e hostis através da rocha.
</Column>

Um ping do Módulo de Sonar marca toda jazida de minério num raio de 48 blocos e toda criatura hostil num raio de 32 blocos, através da rocha sólida, e dá visão noturna à tripulação.

***

## <Color id="gold">Usando-o</Color>

| | Padrão |
|---|---|
| Energia por ping | 30.000 |
| Alcance de minérios | 48 blocos |
| Alcance de hostis | 32 blocos |
| Recarga | 45 segundos |

Dispare-o e um anel varre o terreno a partir do casco. Cada jazida de minério é contornada conforme o anel a alcança, colorida pelo tipo de minério, e fica marcada através da rocha por 45 segundos, desvanecendo no fim. Qualquer coisa que conte como minério na tag comum de minérios aparece, então minérios de outros mods também aparecem.

Criaturas hostis num raio de 32 blocos do ping são contornadas em vermelho pelos mesmos 45 segundos, seguindo-as enquanto se movem, e também brilham por 15 segundos.

Todos a bordo ganham 45 segundos de visão noturna, o que importa em águas profundas onde pouca luz chega.

Os dois alcances são medidos de onde o casco estava quando pingou, então pingue de novo após se mover para varrer novo terreno. O custo de energia, o alcance de hostis e a recarga são configuráveis.

***

### <Color id="aqua">Receita do Módulo de Sonar</Color>

<Recipe id="nautec:sonar_module"/>