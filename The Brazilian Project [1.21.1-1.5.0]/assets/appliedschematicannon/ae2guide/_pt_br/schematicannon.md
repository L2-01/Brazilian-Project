---
navigation:
  title: Applied Schematicannon
  icon: create:schematicannon
  position: 60
item_ids:
- create:schematicannon
---

# Applied Schematicannon

## Canhão de Esquemas

<Row gap="20">
<BlockImage id="create:schematicannon" scale="8" />
</Row>

O [Canhão de Esquemas](https://github.com/Creators-of-Create/Create) é uma máquina do Create que constrói um esquema
posicionado bloco por bloco, pegando os materiais necessários dos inventários ao lado dele.

Com o Applied Schematicannon instalado, uma Interface ME colocada ao lado do canhão conta como um desses inventários, então
o canhão pode construir diretamente a partir da rede ME. Para fazer com que ele fabrique automaticamente os materiais que
faltam, instale um **Cartão de Fabricação** nessa interface.

## Requisitando itens da rede ME

Quando o canhão precisa de um material que não está na rede, ele pede que a rede o fabrique:

* a interface ao lado do canhão precisa ter um **Cartão de Fabricação** instalado,
* a rede precisa de uma **CPU de fabricação** e um **padrão codificado** para o item,
* os itens fabricados são entregues na rede ME, e o canhão os pega de lá,
* se o canhão estiver configurado para *Ignorar blocos faltantes*, ele nunca requisita nada e simplesmente pula o que não conseguir obter.

Veja a página de [Fabricação Automática](ae2:ae2-mechanics/autocrafting.md) para saber como codificar padrões e configurar uma CPU de fabricação.
