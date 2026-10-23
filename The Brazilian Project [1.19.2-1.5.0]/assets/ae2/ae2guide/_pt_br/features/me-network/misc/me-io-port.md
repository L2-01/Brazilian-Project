---
categories:
  - ME Network/Misc
item_ids:
  - ae2:io_port
related:
  - Possible Upgrades
navigation:
  title: Porto de Entrada/Saída ME
---

![Uma imagem de um porto IO.](../../../assets/large/io_port.png)

Este bloco permite transferir itens entre a sua [Rede ME](../../me-network.md) e a sua <ItemLink id="item_storage_cell_1k" /> ou outras células de armazenamento.
Diferente de outras formas de automação, o <ItemLink id="io_port" /> pode enviar itens sem nenhuma configuração de quais itens enviar.

O topo da interface indica para qual direção você quer mover os dados: para dentro da célula ou para a rede.

O <ItemLink id="io_port"/> exige um [canal](../channels.md) para funcionar. Ao ser usado com automação, a
entrada é o topo ou a base, e a saída é qualquer um dos lados.

Se você está gravando dados em células, geralmente é uma boa ideia pré-formatá-las;
assim você recebe só os itens que interessam, sem toneladas de itens extras.

<RecipeFor id="io_port" />
