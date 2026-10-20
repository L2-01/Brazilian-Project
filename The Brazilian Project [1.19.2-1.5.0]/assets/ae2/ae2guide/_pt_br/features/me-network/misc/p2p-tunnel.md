---
categories:
  - ME Network/Misc
item_ids:
  - ae2:me_p2p_tunnel
navigation:
  title: Túnel P2P
---

O <ItemLink id="me_p2p_tunnel" />, ou "Túnel Ponto a Ponto", é
um sistema configurável e versátil para mover itens / redstone / energia / e fluidos de
um lugar para outro através de uma [Rede ME](../../me-network.md) existente, sem
armazenamento.

<RecipeFor id="me_p2p_tunnel" />

Túneis são 1 entrada para N saídas. Isso significa que você pode mandar para quantos pontos
quiser, mas só pode entrar num único ponto por túnel.

Redes suportam qualquer quantidade de túneis, de quaisquer tipos diferentes, e todos
funcionam de forma independente.

Túneis ME podem ser usados para carregar canais de um lugar a outro, e podem
carregar até 32 [canais](../channels.md), igual a um <ItemLink
id="fluix_covered_dense_cable"/>, exigindo
apenas um único canal por ponto — o que torna os túneis uma ferramenta muito poderosa para
expandir [redes ME](../../me-network.md), especialmente a longa distância.

O canal exigido por um Túnel P2P não pode ser transportado por outro Túnel P2P.

Para configurar um <ItemLink id="me_p2p_tunnel"/>,
você deve primeiro sintonizar o túnel para carregar o que você quer (veja abaixo); depois, precisa
configurar as saídas para a entrada. Você configura as conexões
usando o <ItemLink id="memory_card"/>: primeiro
use Shift + clique direito na entrada para salvá-la no seu cartão de memória, depois simplesmente clique com o botão direito nas diferentes saídas para
gravar a entrada nas saídas. Isso também define o tipo da saída para corresponder ao tipo da entrada.

## Tipos de Túnel

<P2PTunnelTypes />
