---
item_ids:
  - ae2:controller
navigation:
  title: Controlador ME
---

![Uma imagem de um controlador.](../../assets/large/controller.png)

O <ItemLink id="controller"/> é o centro de roteamento de uma [Rede ME](../me-network.md).
Sem ele, apenas até 8 dispositivos podem interagir; mais que isso e tudo para de funcionar.

Não é possível ter 2 <ItemLink id="controller" /> numa mesma [Rede ME](../me-network.md).

Diferente da maioria dos dispositivos de [Rede ME](../me-network.md), o <ItemLink id="controller"/> não exige
[canais](channels.md); em vez disso, ele os emite — 8 ou 32 por lado, dependendo de quantos [canais](channels.md) o dispositivo suporta.

O <ItemLink id="controller"/> consome 6 AE/t por bloco de controlador para
funcionar. Cada bloco de <ItemLink id="controller"/> pode armazenar 8000 AE, então redes maiores podem exigir
armazenamento extra de energia. Veja [energia da rede](network-energy.md) para detalhes.

Controladores multibloco podem ser construídos de forma bem livre; porém, há algumas regras que devem ser seguidas:

1. Todos os blocos de <ItemLink id="controller"/> numa [Rede ME](../me-network.md) devem estar conectados; caso contrário, os blocos ficam vermelhos.
2. O tamanho do <ItemLink id="controller"/> deve estar dentro de 7x7x7; caso contrário, ele fica vermelho.
3. Um <ItemLink id="controller"/> pode ter 2 blocos adjacentes em no máximo 1 eixo; se um bloco violar essa regra, ele desativa e fica branco.

Desde que todas as regras sejam seguidas e o controlador esteja energizado, ele deve brilhar e
alternar de cor.

<RecipeFor id="controller" />
