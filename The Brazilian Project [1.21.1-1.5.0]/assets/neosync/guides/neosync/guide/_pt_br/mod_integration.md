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

Todo bloco do NeoSync tem uma página de informação, e a categoria Fontes de Energia de Esteira lista cada entidade que a esteira aceita com sua FE por tique ao vivo.

***
## <Color id="gold">Jade</Color>

Olhe para um construtor, armazenamento ou esteira para ver o dono, o progresso de construção, a cor do acabamento, o estado de energia e o nível de energia.

***
## <Color id="gold">Curios</Color>

Os espaços de curio pertencem ao corpo. Cada casca guarda seus próprios curios, e eles ficam para trás com o corpo quando você sai da sincronização.

***
## <Color id="gold">Mekanism</Color>

A radiação também pertence ao corpo. Uma casca guarda a dose que absorveu enquanto você estava nela, uma casca recém-construída começa limpa e sincronizar não carrega radiação com você.

***
## <Color id="gold">Sable e Create Aeronautics</Color>

Armazenamentos de cascas, construtores e esteiras funcionam numa aeronave em movimento ou girada. Entrar num armazenamento no convés abre o seletor, sincronizar para uma casca estacionada em outra aeronave funciona, e animais numa esteira correm no lugar em relação à nave. Cada casca lembra em qual aeronave está.

***
## <Color id="gold">Mods de Túmulo</Color>

Morrer no seu corpo original é uma morte comum, então os mods de túmulo se comportam como sempre.

Morrer numa casca enquanto outra casca está disponível é diferente: os eventos de morte e de itens derrubados disparam, então um túmulo é colocado na casca morta com seu inventário completo, mas não há renascimento, então o evento de respawn nunca dispara. Para o Simple Tombs isso significa que a opção soulbound `KEEPPARTS` não atravessa uma sincronização automática. Defina `KEEPPARTS=NONE` se quiser um comportamento consistente e confie no túmulo.
