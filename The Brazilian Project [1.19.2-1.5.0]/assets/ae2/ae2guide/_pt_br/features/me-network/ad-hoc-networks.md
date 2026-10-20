---
navigation:
  title: Redes Ad Hoc
---

# Redes Ad Hoc

Redes Ad-Hoc são pequenas [Redes ME](../me-network.md) que não têm um <ItemLink id="controller" />.
Elas podem ter até 8 dispositivos usando [canais](channels.md).

Você pode usá-las como pequenos sistemas independentes, ou como sistemas feitos para
melhorar uma [Rede ME](../me-network.md) maior; geralmente elas são
energizadas via <ItemLink id="quartz_fiber"/>,
porém também podem ser energizadas via um <ItemLink id="energy_acceptor"/> ou até uma célula de energia se
você não quiser mantê-la funcionando por longos períodos.

Cabos Inteligentes em redes Ad-Hoc mostram o uso de canais de cada dispositivo da
rede em todos os pontos da rede; isso é diferente de como eles
mostram o uso quando você usa um <ItemLink id="controller"/>.

Quando uma rede ad-hoc excede 8 dispositivos, a rede fica incapaz de
alocar canais e tudo desliga; você terá que remover
dispositivos ou instalar um <ItemLink id="controller"/> para convertê-la numa
rede padrão, em vez de uma rede ad-hoc.
