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

O <ItemLink id="storage_bus"/>, quando acoplado
a outro bloco de inventário no mundo, permite acessar esse inventário via
funções de rede. Isso permite usar baús, barris ou outros tipos de
armazenamento de itens nas suas redes.

O armazenamento via <ItemLink id="storage_bus"/>
é bidirecional: ele pode inserir e extrair itens do bloco de inventário
ao qual está acoplado, desde que o <ItemLink
id="storage_bus"/> tenha seu
[canal](../channels.md) necessário.

A interface permite controlar quais itens são selecionados como armazenáveis; essa
seleção não afeta quais itens podem ser extraídos uma vez dentro do
armazenamento.

O Ponto de Armazenamento funciona com quase qualquer bloco de inventário, incluindo

a <ItemLink id="interface" />, DSUs do Minefactory Reloaded, Barris do
Factorization, Barris do JABBA e Caixotes do Better Storage. Eles também podem ser usados para rotear itens
passivamente para tubos do Buildcraft.

Se você colocar um ponto de armazenamento numa <ItemLink
id="interface"/>, ele conseguirá
interagir com todo o conteúdo da rede alvo, a menos que essa interface esteja
configurada para armazenar itens dentro de si mesma — nesse caso, ele verá aqueles
itens armazenados.

_ **\* Pontos de Armazenamento ignoram lados de entrada/saída para DSUs, Barris e
Baús Digitais.**_

<RecipeFor id="storage_bus" />
