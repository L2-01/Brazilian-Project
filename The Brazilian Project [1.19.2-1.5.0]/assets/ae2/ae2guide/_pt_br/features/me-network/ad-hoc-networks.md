---
navigation:
  title: Redes Ad Hoc
---

# Redes Ad Hoc

Redes ad hoc são pequenas [Redes ME](../me-network.md) que não têm um <ItemLink id="controller" />.
Elas podem ter até 8 dispositivos usando [canais](channels.md).

Você pode usá-las como pequenos sistemas autônomos ou como sistemas projetados para
expandir uma [Rede ME](../me-network.md) maior. Geralmente elas são
alimentadas via <ItemLink id="quartz_fiber"/>,
mas também podem ser alimentadas por um <ItemLink id="energy_acceptor"/> ou até uma célula de energia, se
você não quiser mantê-las funcionando por longos períodos.

Os Cabos Inteligentes em redes ad hoc mostram o uso de canais de cada dispositivo da
rede em todos os pontos da rede, o que é diferente de como eles exibem o
uso quando você usa um <ItemLink id="controller"/>.

Quando uma rede ad hoc excede 8 dispositivos, ela não consegue mais
alocar canais e tudo desliga; você precisará remover
dispositivos ou instalar um <ItemLink id="controller"/> para convertê-la numa
rede padrão, em vez de uma rede ad hoc.
