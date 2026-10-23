---
navigation:
  title: Integração com Mods
  icon: minecraft:comparator
  parent: index.md
  position: 9
---

# <Color id="light_purple">Integração com Mods</Color>

Tudo aqui é opcional. O NeoSync funciona igual sem eles.

***
## <Color id="gold">JEI</Color>

Todo bloco do NeoSync tem uma página de informações, e a categoria Fontes de Energia de Esteira lista cada entidade que a esteira aceita com seu FE por tique ao vivo.

***
## <Color id="gold">Jade</Color>

Olhe para um construtor, armazenamento ou esteira para ver o dono, progresso de construção, cor do acabamento, estado de energia e nível de energia.

***
## <Color id="gold">Curios</Color>

Espaços de Curio pertencem ao corpo. Cada casca mantém seus próprios curios, e eles ficam para trás com o corpo quando você sincroniza para fora.

***
## <Color id="gold">Mekanism</Color>

A radiação também pertence ao corpo. Uma casca mantém a dose que absorveu enquanto você estava nela, uma casca recém-construída começa limpa, e sincronizar não carrega radiação com você.

***
## <Color id="gold">Sable e Create Aeronautics</Color>

Armazenamentos de cascas, construtores e esteiras funcionam num dirigível em movimento ou girado. Entrar num armazenamento no convés abre o seletor, sincronizar para uma casca estacionada noutro dirigível funciona, e animais numa esteira correm parados em relação ao navio. Cada casca lembra em qual dirigível está.

***
## <Color id="gold">Mods de Túmulo</Color>

Morrer no seu corpo original é uma morte comum, então mods de túmulo se comportam como sempre.

Morrer numa casca tendo outra casca disponível é diferente: os eventos de morte e de drops disparam, então um túmulo é colocado na casca morta com o inventário completo, mas não há renascimento, então o evento de respawn nunca dispara. Para o Simple Tombs isso significa que a opção soulbound `KEEPPARTS` não atravessa uma sincronização automática. Defina `KEEPPARTS=NONE` se quiser um comportamento consistente e confie no túmulo.
