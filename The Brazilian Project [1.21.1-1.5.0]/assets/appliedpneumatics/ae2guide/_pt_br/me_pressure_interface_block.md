---
navigation:
  parent: index.md
  title: Interface de Pressão ME
  icon: appliedpneumatics:me_pressure_interface_block
  position: 40
item_ids:
  - appliedpneumatics:me_pressure_interface_block
---

# Interface de Pressão ME

<Row>
  <BlockImage id="me_pressure_interface_block" scale="4" />
</Row>

A Interface de Pressão ME oferece uma maneira fácil de interagir com ar.  
Você só precisa definir uma **pressão alvo**, e a interface inserirá ou extrairá ar da **Rede ME** para manter a pressão o mais próxima possível do valor desejado.

Externamente, ela pode transferir ar através de **tubos de pressão do PneumaticCraft**, seguindo a lógica do ar fluindo naturalmente da pressão alta para a baixa.  
Ela também fornece um espaço de item onde você pode inserir **recipientes de ar**, como tanques de ar. A interface irá carregá-los com ar ou drenar o ar deles, dependendo dos níveis relativos de pressão.

## Cartões de Upgrade Disponíveis
- **[Cartão de Volume](upgrades.md)**: Aumenta o volume base da interface de pressão. Na mesma pressão, um volume maior significa mais armazenamento total de ar.
- **[Cartão de Segurança](upgrades.md)**: Fornece uma camada extra de proteção. Se pressão demais for inserida de repente ou a Rede ME ficar indisponível, fazendo a interface exceder seu limite de perigo, o Cartão de Segurança previne explosões e libera o ar excedente.
- **[Cartão de Vácuo](upgrades.md)**: Permite que a pressão alvo seja negativa. Isso não apenas substitui a função de uma bomba de vácuo, como também permite que a interface colete ar continuamente do mundo através de tubos abertos. A taxa é limitada, mas quase não consome recursos.
