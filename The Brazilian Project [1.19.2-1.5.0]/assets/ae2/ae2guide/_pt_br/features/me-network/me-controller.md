---
item_ids:
  - ae2:controller
navigation:
  title: Controlador ME
---

![Uma imagem de um controlador.](../../assets/large/controller.png)

O <ItemLink id="controller"/> é o centro de roteamento de uma [Rede ME](../me-network.md).
Sem ele, apenas até 8 dispositivos podem interagir; além disso, tudo para de funcionar.

Não é possível ter 2 <ItemLink id="controller" /> numa mesma [Rede ME](../me-network.md).

Diferente da maioria dos dispositivos da [Rede ME](../me-network.md), o <ItemLink id="controller"/> não exige
[canais](channels.md) — na verdade, ele os emite, 8 ou 32 por lado, dependendo de quantos [canais](channels.md) o dispositivo suporta.

O <ItemLink id="controller"/> exige 6 AE/t por bloco de controlador para
funcionar. Cada bloco de <ItemLink id="controller"/> armazena 8000 AE, então redes maiores podem exigir
armazenamento de energia adicional. Veja [energia da rede](network-energy.md) para detalhes.

Controladores multibloco podem ser construídos de forma bem livre, mas algumas regras devem ser seguidas:

1. Todos os blocos de <ItemLink id="controller"/> numa [Rede ME](../me-network.md) devem estar conectados; senão, os blocos ficam vermelhos.
2. O tamanho do <ItemLink id="controller"/> deve caber em 7x7x7; senão, ele fica vermelho.
3. Um <ItemLink id="controller"/> pode ter 2 blocos adjacentes em no máximo 1 eixo; se um bloco violar essa regra, ele desativa e fica branco.

Enquanto todas as regras forem seguidas e houver energia, o controlador deve brilhar
e alternar cores.

<RecipeFor id="controller" />
