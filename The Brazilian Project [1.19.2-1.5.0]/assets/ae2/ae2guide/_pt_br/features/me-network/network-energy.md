---
navigation:
  title: Energia da Rede
  icon: energy_cell
item_ids:
  - ae2:energy_acceptor
  - ae2:cable_energy_acceptor
  - ae2:creative_energy_cell
  - ae2:energy_cell
  - ae2:dense_energy_cell
  - ae2:vibration_chamber
  - ae2:quartz_fiber
---

A Rede ME precisa de energia para funcionar. Essa energia é medida em AE por tique.

Para energizar sua rede, você pode conectar uma <ItemLink id="vibration_chamber" /> diretamente,
ou usar um <ItemLink id="energy_acceptor" /> para conectar fontes de energia de mods compatíveis.

Sua rede terá um armazenamento de energia inerente, que pode ser aumentado conectando
células de energia.

Para ver as estatísticas de energia atuais da sua rede, clique com o botão direito em qualquer parte dela com uma <ItemLink id="network_tool" />.

## Aceitador de Energia

![Imagem de um Aceitador de Energia.](../../assets/large/energy_accepter.png)

O <ItemLink id="energy_acceptor" /> converte energia de sistemas
externos em AE e a armazena na rede.

Os seguintes sistemas de energia são suportados:

| Sistema de Energia             | Taxa de Conversão |
| ------------------------------ | ----------------- |
| Forge Energy / Redstone Flux   | 2 FE = 1 AE       |

<RecipeFor id="energy_acceptor" />
<RecipeFor id="cable_energy_acceptor" />

## Armazenamento de Energia

![Uma imagem de uma célula de energia descarregada e carregada.](../../assets/large/energy_cell.png)

Armazena até 200.000 AE. Elas não aceitam energia diretamente, mas são usadas para adicionar
armazenamento extra de energia a uma [Rede ME](../me-network.md) já existente.

<RecipeFor id="energy_cell" />

![Uma imagem de uma célula de energia descarregada e carregada.](../../assets/large/dense_energy_cell.png)

Armazena energia AE de até 1,6 milhão de unidades. Elas não aceitam energia diretamente, mas
são usadas para adicionar armazenamento extra de energia a uma [Rede ME](../me-network.md) já existente.

<RecipeFor id="dense_energy_cell" />

A <ItemLink id="creative_energy_cell" /> contém energia AE infinita e pode ser usada
para fornecer energia sem precisar gerá-la.

Elas só podem ser geradas no **Modo Criativo**.

### Câmara de Vibração

![Uma imagem de uma Câmara de Vibração.](../../assets/large/vibration_chamber.png)

Uma fornalha modificada capaz de gerar energia AE em vez de fundir minérios. Quando
colocada numa [Rede ME](../me-network.md), ela carrega <ItemLink id="energy_cell"/> ou
alimenta outros dispositivos da rede.

A <ItemLink id="vibration_chamber"/> queima
quase qualquer combustível sólido para gerar energia. Ela desacelera ou acelera a queima
dependendo de quanta energia consegue armazenar versus o que é desperdiçado. Gera
entre 1 e 10 AE/t dependendo da velocidade de queima.

<RecipeFor id="vibration_chamber" />

### Compartilhando Energia Entre Redes

Uma parte feita para compartilhar energia entre duas [Redes ME](../me-network.md) sem compartilhar mais nada; também
é usada para fabricar o <ItemLink id="fluix_glass_cable" />.

<RecipeFor id="quartz_fiber" />
