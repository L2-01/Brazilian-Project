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

Como parte de sua integração mais ampla entre add-ons, o MEGA apresenta uma segunda célula especializada exclusiva para jogadores que também usam
*Mekanism* e o add-on ***Applied Mekanistics***. Se você não usa nenhum dos dois e as receitas abaixo estiverem com erro,
pode ignorar esta página com segurança e fingir que esta célula não existe.

## Célula Química Radioativa

<Row>
  <ItemImage id="radioactive_cell_component" scale="3" />
  <ItemImage id="radioactive_chemical_cell" scale="3" />
</Row>

A **Célula Química Radioativa MEGA**, como o nome indica, serve de complemento às células de armazenamento comuns
oferecidas pelo *Applied Mekanistics* (e pela própria integração do MEGA com ele) para armazenar os "químicos" do *Mekanism*. Normalmente,
ao usar as células químicas comuns, pode-se notar que elas vêm com uma limitação: elas não armazenam nenhum
químico *radioativo*, que no próprio Mekanism inclui principalmente *Rejeito Nuclear*, *Polônio* e *Plutônio*.
A Célula Radioativa, claro, não armazena nada *além* dos químicos mencionados.

<Row>
  <RecipeFor id="radioactive_cell_component" />
  <RecipeFor id="radioactive_chemical_cell" />
</Row>

A Célula Radioativa não é muito diferente da <ItemLink id="megacells:bulk_item_cell" /> no sentido de que só pode armazenar
um dado tipo de químico radioativo e precisa ser particionada antes de operar. É aqui que as semelhanças entre as duas terminam,
no entanto; a Célula Radioativa só armazena uma quantidade finita desse químico, no máximo *256
[bytes](ae2:ae2-mechanics/bytes-and-types.md)*. Isso equivale, no entanto, a *2048 baldes* — ou o valor de 4 Barris de Rejeito
Nuclear desse químico radioativo — no espaço de uma única célula.

![Célula Radioativa com polônio](assets/diagrams/radioactive_cell.png)

Para conter e armazenar substâncias tão voláteis, a célula exige uma boa quantidade a mais de energia para (de alguma forma!)
mantê-las num estado relativamente estável. Comparada ao consumo típico de 0,5 AE/tique da
<ItemLink id="ae2:item_storage_cell_1k" />, 2,5 AE/t da <ItemLink id="ae2:item_storage_cell_256k" /> e 5 AE/t
da <ItemLink id="megacells:item_storage_cell_256m" />, uma Célula Radioativa consome impressionantes **250 AE/tique** enquanto
estiver num Baú/Gabinete ME conectado.

Por fim, para incentivar os jogadores do Mekanism a continuar gerenciando corretamente seu rejeito nuclear como pretendido, a Célula
Radioativa ainda proíbe explicitamente que ***Rejeito** Nuclear Gasto* seja armazenado nela. *Por padrão*, você não escapa
tão facilmente de manter suas estações de reator nuclear sob controle. Para jogadores que ainda só querem o
caminho mais fácil, no entanto, esse comportamento é configurável. *Como* esse comportamento é configurado fica como exercício para o
leitor.
