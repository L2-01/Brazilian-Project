---
categories:
  - ME Network/Network Storage
item_ids:
  - ae2:storage_bus
related:
  - Other Networked Storage
  - Storage Cells
  - Possible Upgrades
navigation:
  title: Ponto de Armazenamento ME
---

O <ItemLink id="storage_bus"/>, quando anexado
a outro bloco de inventário no mundo, permite acessar aquele inventário por meio de
funções de rede. Isso permite usar baús, barris ou outros tipos de
armazenamento de itens nas suas redes.

O armazenamento via <ItemLink id="storage_bus"/>
é bidirecional: ele pode tanto inserir quanto extrair itens do bloco
de inventário ao qual está anexado, desde que o <ItemLink
id="storage_bus"/> tenha seu
[canal](../channels.md) necessário.

A interface permite controlar quais itens são selecionados como armazenáveis; essa
seleção não tem efeito sobre quais itens podem ser extraídos uma vez que estejam no
armazenamento.

O Ponto de Armazenamento funciona com quase qualquer bloco de inventário, incluindo

<ItemLink id="interface" />, DSUs do Minefactory Reloaded, Barrels do Factorization,
Barrels do JABBA e Crates do Better Storage. Eles também podem ser usados para despejar itens
passivamente em Tubos do Buildcraft.

Se você colocar um ponto de armazenamento numa <ItemLink
id="interface"/>, o ponto de armazenamento poderá
interagir com todo o conteúdo da rede alvo, a menos que aquela interface esteja
configurada para armazenar itens dentro de si mesma; nesse caso, ele verá aqueles
itens armazenados.

_ **\* Pontos de Armazenamento ignoram os lados de entrada/saída de DSUs, Barrels e Baús
Digitais.**_

<RecipeFor id="storage_bus" />
