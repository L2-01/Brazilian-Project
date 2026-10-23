---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:export_bus
related:
  - Possible Upgrades
navigation:
  title: Ponto de Exportação ME
---

![Uma Imagem de um Ponto de Exportação](../../../assets/large/export_bus.png)

O <ItemLink id="export_bus"/> extrai itens do
Armazenamento em Rede da [Rede ME](../../me-network.md) e os coloca no inventário para o qual aponta.
Você precisa configurar quais itens ele insere; deixar a configuração em branco resulta em nada.

O <ItemLink id="export_bus"/> tentará exportar qualquer item da sua lista,
pulando os que não couberem no destino.

O <ItemLink id="export_bus"/> exige um [canal](../channels.md) para funcionar.

É o oposto funcional do <ItemLink id="import_bus"/>.

<RecipeFor id="export_bus" />
