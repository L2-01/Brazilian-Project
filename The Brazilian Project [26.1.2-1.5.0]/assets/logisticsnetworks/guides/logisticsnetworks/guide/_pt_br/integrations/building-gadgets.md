---
navigation:
  title: Building Gadgets
  parent: integrations/index.md
  position: 2
---

# Building Gadgets

Com o [Building Gadgets](https://www.curseforge.com/minecraft/mc-mods/building-gadgets) instalado, os nós viajam junto com os blocos aos quais estão anexados. O gadget de Recortar e Colar os move, e o gadget de Copiar e Colar e os templates copiam suas configurações.

## Recortar e Colar — Movendo nós

Recortar uma área pega todos os nós anexados a blocos dentro dela. Nada é largado. Ao colar, cada nó é recolocado no seu bloco assim que o bloco termina a animação de posicionamento, exatamente como estava:

- Mesma rede, canais, filtros, melhorias, rótulo, visibilidade e dono.
- Os nós continuam membros da sua rede enquanto estão no gadget, então recortar uma construção inteira não apaga a rede.
- Girar o recorte antes de colar gira o lado de cada canal junto com os blocos. Cima, Baixo e Todos permanecem como estão.

Mover é de graça — os nós e suas melhorias viajam com o recorte, então nada é cobrado.

## Copiar e Colar — Copiando configurações de nó

Copiar uma área também registra as configurações de cada nó nela que você pode acessar (os seus e os dos colegas de equipe onde o servidor permite). As configurações são as mesmas que a [área de transferência da Chave-Inglesa](../wrench/copy-paste.md) copia: canais, filtros, melhorias, rótulo, rede e visibilidade.

Colar cria um novo nó em cada bloco colado:

- **Sobrevivência:** cada nó custa um Nó Logístico mais cada melhoria que ele tinha. Eles saem dos mesmos lugares de onde o gadget tira blocos — um inventário vinculado, Curios, mochilas e seu inventário. Filtros são de graça.
- **Criativo:** de graça.
- **Itens faltando:** o bloco ainda é posicionado, mas sem nó. A barra de ação mostra `Node not pasted, needs: …` com o que faltou.
- A **Lista de Materiais** do gadget inclui os Nós Logísticos e as melhorias que a colagem vai precisar.

Nós colados entram na rede original se ela ainda existir e você puder acessá-la. Caso contrário, uma nova rede é criada para você, nomeada como a original — uma por rede original por colagem, nunca uma por nó.

Se uma área tiver configurações de nó demais, o chat diz `Too many node settings to copy; nodes were left out` e só os blocos são copiados.

## Templates

Templates salvos no Gerenciador de Templates, JSON de template exportado e redprints mantêm as configurações de nó copiadas. Colar um segue as regras de Copiar e Colar acima, incluindo o custo de itens. Um template trazido de outro mundo cria novas redes nomeadas como as originais.

## Bom saber

- Se um bloco colado não puder receber um nó — sem armazenamento, já tem um nó, ou está na lista-negra — os itens daquele nó caem no local.
- Se parte de um recorte não puder ser colada (espaço ocupado, protegido ou sem energia), os nós restantes caem aos seus pés quando a colagem termina.
- Desfazer uma colagem enquanto os blocos ainda animam devolve os itens de nó que ela pegou.
- O desfazer do Copiar e Colar e o gadget de Destruição não restauram nós. Um nó num bloco removido cai como numa quebra normal.
- Trocar um bloco com o Exchanger derruba o nó que estava nele.
- Recortar de novo com um gadget que ainda guarda um recorte não colado substitui aquele recorte, e seus nós se perdem junto com seus blocos.
