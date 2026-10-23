---
navigation:
  title: Estrutura de Contenção Espacial
---

# Estrutura de Contenção Espacial

Uma Estrutura de Contenção Espacial, ou SCS, é uma estrutura multibloco em rede
que define uma região do espaço como alvo do <ItemLink
id="spatial_io_port"/>.

A estrutura deve ser uma [rede ME](../../me-network.md) com vários
<ItemLink id="spatial_pylon"/> que definem
a região alvo.

As regras para uma SCS válida são:

1. Um tamanho mínimo de 3x3x3 ( isso captura um único bloco. )
2. Todos os <ItemLink id="spatial_pylon"/> devem estar na caixa delimitadora externa.
3. Todos os <ItemLink id="spatial_pylon"/> devem estar conectados por cabo ou via QNB e na mesma rede.

Isso também significa que você só pode criar 1 SCS por Controlador.

O status de formação da SCS é exibido pela cor do <ItemLink
id="spatial_pylon"/>: se estiver vermelho,
a configuração é inválida; se estiver roxo-claro, é
válida. O status só fica disponível se os pilões estiverem energizados e
conectados.

A maioria das SCS exigirá <ItemLink
id="energy_cell"/> para alimentar o <ItemLink
id="spatial_io_port"/>; porém, esses blocos
não são considerados parte da SCS.

**Cuidado: você pode viajar para uma dimensão sem uma forma direta de voltar.
Configure seu IO espacial de modo que consiga retornar.**
