---
navigation:
  title: Integração de Mods
  icon: minecraft:comparator
  parent: index.md
  position: 9
---

# <Color id="light_purple">Integração de Mods</Color>

Todos estes são opcionais. O NeoSync funciona igual sem eles.

***
## <Color id="gold">JEI</Color>

Todo bloco do NeoSync tem uma página de informação, e a categoria Fontes de Energia da Esteira lista cada entidade que a esteira aceita com seus FE por tique vigentes.

***
## <Color id="gold">Jade</Color>

Olhe para um construtor, armazenamento ou esteira para ver o dono, o progresso da construção, a cor do acabamento, o estado de energia e o nível de energia.

***
## <Color id="gold">Curios</Color>

Os espaços de curios pertencem ao corpo. Cada casca mantém seus próprios curios, e eles ficam com o corpo quando você sincroniza para fora.

***
## <Color id="gold">Mekanism</Color>

A radiação também pertence ao corpo. Uma casca mantém a dose que absorveu enquanto você estava nela, uma casca recém-construída começa limpa, e sincronizar não leva radiação com você.

***
## <Color id="gold">Sable e Create Aeronautics</Color>

Armazenamentos de cascas, construtores e esteiras funcionam num dirigível em movimento ou girado. Entrar num armazenamento no convés abre o seletor, sincronizar para uma casca estacionada em outro dirigível funciona, e animais numa esteira correm parados em relação à nave. Cada casca lembra em qual dirigível está.

***
## <Color id="gold">Mods de Túmulo</Color>

Morrer no seu corpo original é uma morte comum, então mods de túmulo se comportam como sempre.

Morrer numa casca enquanto outra casca está disponível é diferente: os eventos de morte e de itens largados disparam, então um túmulo é colocado na casca morta com o inventário inteiro, mas não há renascimento, então o evento de renascimento nunca dispara. Para o Simple Tombs isso significa que a opção de manter itens `KEEPPARTS` não atravessa uma sincronização automática. Defina `KEEPPARTS=NONE` se quiser um comportamento consistente, e conte com o túmulo.
