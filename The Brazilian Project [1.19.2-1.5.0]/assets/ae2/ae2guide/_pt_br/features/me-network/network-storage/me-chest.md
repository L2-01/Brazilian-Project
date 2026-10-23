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
Célula de Armazenamento: dá acesso direto ao conteúdo da célula
colocada dentro.

O <ItemLink id="chest" />

mostra o conteúdo e o status da célula de armazenamento na face frontal.

- Vermelho - Indica que a Célula de Armazenamento está cheia.
- Laranja - Indica que a Célula de Armazenamento não comporta mais tipos, mas ainda armazena mais itens.
- Verde - Indica que a célula comporta mais tipos ou mais itens.
- Preto - Indica que não há canal ou a energia está offline.

O <ItemLink id="chest" />

pode ser alimentado de forma autônoma com energia externa ou como parte de uma [Rede
ME](../../me-network.md). Quando numa rede, o armazenamento do
baú fica disponível para quaisquer outros dispositivos da mesma rede usando um
Canal designado. Quando usado sem rede, o baú não transfere
pacotes completos de uma vez, limitando as transferências a 38 itens.

O <ItemLink id="chest"/> consome 1 AE/t, mais
uma pequena quantia conforme a célula de armazenamento instalada. Se alimentado
sozinho, ele tem um armazenamento interno muito pequeno que dura apenas alguns
instantes; usar uma <ItemLink id="energy_cell"/> ou
uma bateria de outro mod é recomendado para operação confiável.

O <ItemLink id="chest"/> tem duas interfaces: uma
serve para colocar a célula de armazenamento dentro do dispositivo pelos lados ou pela base; a
outra é acessada usando a superfície superior para ver o conteúdo.

Itens podem ser injetados no <ItemLink
id="chest"/> como em qualquer inventário, porém
não podem ser extraídos por automação, exceto via funções de rede como
o <ItemLink id="export_bus"/>.

<RecipeFor id="chest" />
