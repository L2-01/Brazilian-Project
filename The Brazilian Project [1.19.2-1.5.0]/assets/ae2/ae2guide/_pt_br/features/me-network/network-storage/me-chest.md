---
categories:
  - ME Network/Network Storage
item_ids:
  - ae2:chest
related:
  - Other Networked Storage
  - Storage Cells
navigation:
  title: Baú ME
---

![Uma imagem de um Baú ME](../../../assets/large/me_chest.png)O <ItemLink
id="chest"/> é a forma mais simples de usar uma
célula de armazenamento: ele lhe dá acesso direto ao conteúdo da célula
colocada dentro.

<ItemLink id="chest" />

mostra seu conteúdo e o status da célula de armazenamento na face frontal.

- Vermelho - Indica que a Célula de Armazenamento está cheia.
- Laranja - Indica que a Célula de Armazenamento não comporta mais tipos, mas ainda pode armazenar mais itens.
- Verde - Indica que a célula comporta mais tipos ou mais itens.
- Preto - Indica que não há canal, ou que a energia está desligada.

<ItemLink id="chest" />

pode ser energizado sozinho com energia externa, ou como parte de uma [Rede
ME](../../me-network.md). Quando numa rede, o armazenamento do
baú ficará disponível para quaisquer outros dispositivos na mesma rede usando um
canal designado. Quando usado sem rede, o baú não transfere pilhas
inteiras de uma vez, limitando as transferências a 38 itens.

O <ItemLink id="chest"/> consome 1 AE/t e
consome uma pequena quantidade extra dependendo da célula de armazenamento instalada. Se energizado
sozinho, ele tem um armazenamento interno muito pequeno que dura apenas alguns
instantes; usar uma <ItemLink id="energy_cell"/> ou
uma bateria de outro mod é recomendado para operação confiável.

O <ItemLink id="chest"/> tem duas interfaces: uma
serve para colocar a célula de armazenamento dentro do dispositivo pelas laterais ou por baixo; a
outra é acessada usando a superfície de cima para acessar o conteúdo.

Itens podem ser inseridos no <ItemLink
id="chest"/> como em qualquer outro inventário, porém
itens não podem ser extraídos com automação, exceto por funções de rede como
o <ItemLink id="export_bus"/>.

<RecipeFor id="chest" />
