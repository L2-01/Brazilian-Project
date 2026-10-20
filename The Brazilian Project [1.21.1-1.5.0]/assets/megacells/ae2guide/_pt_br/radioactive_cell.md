---
navigation:
  title: Célula Química Radioativa (exclusiva do AppMek)
  icon: radioactive_chemical_cell
  parent: index.md
  position: 050
categories:
  - megacells
item_ids:
  - radioactive_cell_component
  - radioactive_chemical_cell
---

# MEGA Cells: Célula Química Radioativa

Como parte de sua integração mais ampla entre add-ons, o MEGA traz uma segunda célula especializada exclusiva para jogadores
que também usam *Mekanism* e o add-on ***Applied Mekanistics***. Se você não estiver usando nenhum dos dois e as receitas abaixo
estiverem com erro, você pode ignorar esta página com segurança e fingir que esta célula não existe.

## Célula Química Radioativa

<Row>
  <ItemImage id="radioactive_cell_component" scale="3" />
  <ItemImage id="radioactive_chemical_cell" scale="3" />
</Row>

A **Célula de Armazenamento Químico Radioativa MEGA**, como o nome indica, serve como complemento às células de
armazenamento comuns oferecidas pelo *Applied Mekanistics* (e à integração do próprio MEGA com ele) para armazenar os
"químicos" do *Mekanism*. Normalmente, ao usar as células químicas comuns, pode-se ter notado que elas vêm com uma
ressalva: elas não armazenam nenhum químico *radioativo*, o que no próprio Mekanism inclui principalmente o *Resíduo
Nuclear*, o *Polônio* e o *Plutônio*. A Célula Radioativa, é claro, não armazena nada *além* dos químicos mencionados.

<Row>
  <RecipeFor id="radioactive_cell_component" />
  <RecipeFor id="radioactive_chemical_cell" />
</Row>

A Célula Radioativa não é muito diferente da <ItemLink id="megacells:bulk_item_cell" /> no sentido de que só consegue
armazenar um determinado tipo de químico radioativo e precisa ser particionada antes de poder operar. É aí que as
semelhanças entre as duas acabam, no entanto; a Célula Radioativa só armazena uma quantidade finita desse químico, num
máximo de *256 [bytes](ae2:ae2-mechanics/bytes-and-types.md)*. Isso equivale, no entanto, a *2048 baldes* — ou o conteúdo
de 4 Barris de Resíduos Radioativos desse químico radioativo — no espaço de uma única célula.

![Célula Radioativa com polônio](assets/diagrams/radioactive_cell.png)

Para conter e armazenar substâncias tão voláteis, a célula realmente exige uma boa quantidade a mais de energia para (de
alguma forma!) mantê-las num estado relativamente estável. Comparada ao consumo típico de 0,5 AE/tique da
<ItemLink id="ae2:item_storage_cell_1k" />, 2,5 AE/t da <ItemLink id="ae2:item_storage_cell_256k" /> e 5 AE/t
da <ItemLink id="megacells:item_storage_cell_256m" />, uma Célula Radioativa consome absurdos **250 AE/tique** enquanto
estiver dentro de um Baú ME/Gabinete ME conectado.

Por fim, para incentivar os jogadores de Mekanism a continuar gerenciando corretamente seus resíduos nucleares como
pretendido, a Célula Radioativa ainda proíbe explicitamente que o *Resíduo Nuclear **Gasto*** seja armazenado dentro dela.
*Por padrão*, você não vai se livrar tão facilmente da responsabilidade de manter suas estações de reator nuclear sob
controle. Para os jogadores que ainda quiserem apenas seguir o caminho mais fácil, no entanto, esse comportamento é
configurável. *Como* esse comportamento é configurado fica como exercício para o leitor.
