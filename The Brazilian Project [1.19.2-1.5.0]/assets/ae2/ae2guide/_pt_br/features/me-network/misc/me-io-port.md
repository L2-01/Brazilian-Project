---
categories:
  - ME Network/Misc
item_ids:
  - ae2:io_port
related:
  - Possible Upgrades
navigation:
  title: Porto de Entrada/Saída para Itens e Fluidos
---

![Uma imagem de um porto de entrada/saída.](../../../assets/large/io_port.png)

Este bloco permite transferir itens entre sua [Rede ME](../../me-network.md) e suas <ItemLink id="item_storage_cell_1k" /> ou outras células de armazenamento.
Diferente de outras formas de automação, o <ItemLink id="io_port" /> pode enviar itens sem nenhuma configuração de quais itens enviar.

O topo da interface indica em qual direção você deseja mover os dados: para dentro da célula, ou para dentro da rede.

O <ItemLink id="io_port"/> exige um [canal](../channels.md) para funcionar. Quando usado com automação, a
entrada é pelo topo ou pela base, e a saída é por qualquer um dos lados.

Se você está armazenando dados em células, normalmente é uma boa ideia pré-formatá-las;
assim você obtém só os itens que interessam, e não toneladas de
itens extras.

<RecipeFor id="io_port" />
