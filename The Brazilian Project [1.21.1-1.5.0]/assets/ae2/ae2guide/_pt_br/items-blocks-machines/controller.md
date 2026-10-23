---
navigation:
  parent: items-blocks-machines/items-blocks-machines-index.md
  title: Controlador ME
  icon: controller
  position: 110
categories:
- network infrastructure
item_ids:
- ae2:controller
---

# O Controlador

<BlockImage id="controller" p:state="online" scale="8" />

O controlador é o centro de roteamento de uma [Rede ME](../ae2-mechanics/me-network-connections.md).
Sem ele, uma rede é "ad-hoc" e só pode ter no máximo 8 [dispositivos](../ae2-mechanics/devices.md) que usam canais no total.

Não é possível ter 2 controladores em uma [Rede ME](../ae2-mechanics/me-network-connections.md).

O controlador fornece 32 [canais](../ae2-mechanics/channels.md) por face.

O controlador requer 6 AE/t por bloco de controlador para
funcionar. Cada bloco de controlador pode armazenar 8000 AE, então redes maiores podem precisar de
armazenamento de energia adicional. Veja [energia](../ae2-mechanics/energy.md) para detalhes.

Controladores multibloco podem ser construídos de forma bem livre.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controllers.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Porém, há algumas regras que devem ser seguidas:

1.  Todos os blocos de controlador de uma [Rede ME](../ae2-mechanics/me-network-connections.md) devem estar conectados; senão os blocos ficarão vermelhos.
2.  O tamanho do controlador deve estar dentro de 7x7x7; senão ele ficará vermelho.
3.  Um controlador pode ter 2 blocos adjacentes em no máximo 1 eixo; se um bloco violar essa regra, ele desativará e ficará vermelho.

<GameScene zoom="2" background="transparent">
  <ImportStructure src="../assets/assemblies/controller_rules.snbt" />
  <IsometricCamera yaw="195" pitch="30" />
</GameScene>

Enquanto todas as regras forem seguidas e houver energia, o controlador deve brilhar e
mudar de cor.

Você pode clicar com o botão direito em um controlador para obter a mesma GUI de uma <ItemLink id="network_tool" />

## Receita

<RecipeFor id="controller" />
