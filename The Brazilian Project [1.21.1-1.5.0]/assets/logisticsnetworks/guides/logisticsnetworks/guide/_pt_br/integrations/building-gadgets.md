---
navigation:
  title: Building Gadgets
  parent: integrations/index.md
  position: 2
---

# Building Gadgets

Com o [Building Gadgets](https://www.curseforge.com/minecraft/mc-mods/building-gadgets) instalado, os nós viajam junto dos blocos em que estão presos. O gadget de Recortar e Colar os move, e o gadget de Copiar e Colar e os templates copiam suas configurações.

## Recortar e Colar — Movendo Nós

Recortar uma área recolhe todos os nós presos a blocos dentro dela. Nada cai. Quando você cola, cada nó é recolocado no seu bloco assim que o bloco termina sua animação de colocação, exatamente como estava:

- Mesma rede, canais, filtros, melhorias, rótulo, visibilidade e dono.
- Os nós continuam membros da sua rede enquanto estão no gadget, então recortar uma construção inteira não apaga a rede.
- Girar o recorte antes de colar gira o lado de cada canal junto dos blocos. Cima, Baixo e Todos ficam como estão.

Mover é grátis — os nós e suas melhorias viajam com o recorte, então nada é cobrado.

## Copiar e Colar — Copiando Configurações de Nó

Copiar uma área também registra as configurações de cada nó nela a que você tem acesso (os seus, e os dos seus colegas de equipe onde o servidor permite). As configurações são as mesmas que a [área de transferência da Chave](../wrench/copy-paste.md) copia: canais, filtros, melhorias, rótulo, rede e visibilidade.

Colar cria um novo nó em cada bloco colado:

- **Sobrevivência:** cada nó custa um Nó de Logística mais cada melhoria que ele tinha. Eles saem dos mesmos lugares de onde o gadget tira blocos — um inventário vinculado, Curios, mochilas e seu inventário. Os filtros são grátis.
- **Criativo:** grátis.
- **Itens faltantes:** o bloco ainda é colocado, mas sem nó. A barra de ação mostra `Node not pasted, needs: …` com o que faltou.
- A **Lista de Materiais** do gadget inclui os Nós de Logística e as melhorias que a colagem vai precisar.

Os nós colados entram na rede original se ela ainda existir e você puder acessá-la. Caso contrário, uma rede nova é criada para você, com o nome da original — uma por rede original por colagem, nunca uma por nó.

Se uma área tiver configurações de nó demais, o chat diz `Too many node settings to copy; nodes were left out` e só os blocos são copiados.

## Templates

Os templates salvos no Gerenciador de Templates, o JSON de template exportado e os redprints guardam as configurações de nó copiadas. Colar um segue as regras de Copiar e Colar acima, incluindo o custo de itens. Um template trazido de outro mundo cria redes novas com os nomes das originais.

## Bom Saber

- Se um bloco colado não puder segurar um nó — sem armazenamento, já tem um nó ou está na lista-negra — os itens daquele nó caem no lugar.
- Se parte de um recorte não puder ser colada (espaço ocupado, protegido ou sem energia), os nós que sobraram caem aos seus pés quando a colagem termina.
- Desfazer uma colagem enquanto os blocos ainda estão animando devolve os itens de nó que ela tomou.
- O desfazer do Copiar e Colar e o gadget de Destruição não restauram nós. Um nó num bloco removido cai como numa quebra normal.
- Trocar um bloco com o Exchanger derruba o nó que estava nele.
- Recortar de novo com um gadget que ainda guarda um recorte não colado substitui aquele recorte, e seus nós se perdem junto dos blocos.
- Nós em engenhocas do Create em movimento são deixados como estão.
