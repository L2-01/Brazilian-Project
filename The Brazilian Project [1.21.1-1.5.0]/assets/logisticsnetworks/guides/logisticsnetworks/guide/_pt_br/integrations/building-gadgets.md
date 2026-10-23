---
navigation:
  title: Building Gadgets
  parent: integrations/index.md
  position: 2
---

# Building Gadgets

Com o [Building Gadgets](https://www.curseforge.com/minecraft/mc-mods/building-gadgets) instalado, os nós viajam junto com os blocos aos quais estão anexos. O gadget Cortar e Colar os move, e o gadget Copiar e Colar e os modelos copiam suas configurações.

## Cortar e Colar — Movendo Nós

Cortar uma área recolhe todo nó anexo a um bloco dentro dela. Nada cai. Ao colar, cada nó é recolocado no seu bloco assim que o bloco termina sua animação de colocação, exatamente como estava:

- Mesma rede, canais, filtros, melhorias, rótulo, visibilidade e dono.
- Os nós continuam membros de sua rede enquanto estão no gadget, então cortar uma construção inteira não apaga a rede.
- Girar o recorte antes de colar gira o lado de cada canal junto com os blocos. Cima, Baixo e Todos permanecem como estão.

Mover é de graça — os nós e suas melhorias viajam com o recorte, então nada é cobrado.

## Copiar e Colar — Copiando Configurações de Nós

Copiar uma área também grava as configurações de todo nó nela que você pode acessar (os seus, e os dos seus companheiros de equipe onde o servidor permitir). As configurações são as mesmas que a [área de transferência da Chave-Inglesa](../wrench/copy-paste.md) copia: canais, filtros, melhorias, rótulo, rede e visibilidade.

Colar cria um novo nó em cada bloco colado:

- **Sobrevivência:** cada nó custa um Nó Logístico mais todas as melhorias que tinha. Eles são tirados dos mesmos lugares de onde o gadget tira blocos — um inventário vinculado, Curios, mochilas e seu inventário. Filtros são de graça.
- **Criativo:** de graça.
- **Itens faltando:** o bloco ainda é colocado, mas sem nó. A barra de ação mostra `Node not pasted, needs: …` com o que faltou.
- A **Lista de Materiais** do gadget inclui os Nós Logísticos e as melhorias que a colagem vai precisar.

Nós colados entram na rede original se ela ainda existir e você puder acessá-la. Caso contrário, uma nova rede é criada para você, nomeada como a original — uma por rede original por colagem, nunca uma por nó.

Se uma área guardar configurações de nó demais, o chat avisa `Too many node settings to copy; nodes were left out` e só os blocos são copiados.

## Modelos

Modelos salvos no Gerenciador de Modelos, JSON de modelo exportado e redprints mantêm as configurações de nó copiadas. Colar um segue as regras de Copiar e Colar acima, incluindo o custo em itens. Um modelo trazido de outro mundo cria novas redes nomeadas como as originais.

## Bom Saber

- Se um bloco colado não puder segurar um nó — sem armazenamento, já tem um nó ou está na lista de exclusão — os itens daquele nó caem no lugar.
- Se parte de um recorte não puder ser colada (espaço ocupado, protegido ou sem energia), os nós restantes caem aos seus pés quando a colagem termina.
- Desfazer uma colagem enquanto os blocos ainda estão animando devolve os itens de nó que ela tirou.
- O desfazer do Copiar e Colar e o gadget de Destruição não restauram nós. Um nó num bloco removido cai como uma quebra normal.
- Trocar um bloco com o Trocador derruba o nó que estava nele.
- Cortar de novo com um gadget que ainda guarda um recorte não colado substitui aquele recorte, e seus nós se perdem junto com seus blocos.
- Nós em engenhocas móveis do Create são deixados quietos.
