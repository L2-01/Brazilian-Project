---
categories:
  - ME Network/Network Functions
item_ids:
  - ae2:import_bus
related:
  - Possible Upgrades
navigation:
  title: Ponto de Importação ME
---

![Uma imagem de um Ponto de Importação.](../../../assets/large/import_bus.png)Puxa itens do
inventário para o qual aponta e os coloca no Armazenamento em Rede da [Rede ME](../../me-network.md).
Você pode especificar quais itens ele puxa pela interface; caso contrário, ele tenta puxar qualquer item do
inventário adjacente. O <ItemLink id="import_bus"/>
tenta importar todas as opções possíveis, mesmo que 1 ou mais itens configurados
não possam ser armazenados. O <ItemLink
id="import_bus"/> exige um
[canal](../channels.md) para funcionar.

É o oposto funcional do <ItemLink
id="export_bus"/>.

<RecipeFor id="import_bus" />
