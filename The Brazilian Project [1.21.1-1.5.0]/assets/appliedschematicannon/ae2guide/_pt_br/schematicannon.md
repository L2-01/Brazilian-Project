---
navigation:
  title: Applied Schematicannon
  icon: create:schematicannon
  position: 60
item_ids:
- create:schematicannon
---

# Applied Schematicannon

## Schematicannon

<Row gap="20">
<BlockImage id="create:schematicannon" scale="8" />
</Row>

O [Schematicannon](https://github.com/Creators-of-Create/Create) é uma máquina do Create que constrói um esquema
implantado bloco por bloco, pegando os materiais necessários dos inventários ao lado.

Com o Applied Schematicannon instalado, uma Interface ME colocada ao lado do canhão conta como um desses inventários, então
o canhão pode construir diretamente da rede ME. Para fazê-lo fabricar automaticamente materiais faltantes, instale um **Cartão de Fabricação**
nessa interface.

## Solicitando itens da rede ME

Quando o canhão precisa de um material que não está na rede, ele pede à rede para fabricá-lo:

* a interface ao lado do canhão deve ter um **Cartão de Fabricação** instalado,
* a rede precisa de uma **CPU de fabricação** e um **padrão codificado** para o item,
* os itens fabricados são entregues à rede ME, e o canhão os pega de lá,
* se o canhão estiver em *Pular Blocos Faltantes*, ele nunca solicita nada e simplesmente pula o que não conseguir obter.

Veja a página [Autofabricação](ae2:ae2-mechanics/autocrafting.md) para saber como codificar padrões e configurar uma CPU de fabricação.
