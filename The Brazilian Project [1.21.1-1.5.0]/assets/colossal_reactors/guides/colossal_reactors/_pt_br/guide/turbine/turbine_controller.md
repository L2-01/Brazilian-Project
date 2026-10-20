---
navigation:
  parent: turbine/turbine-index.md
  title: Controlador da Turbina
  icon: turbine_controller
  position: 20
item_ids:
  - colossal_reactors:turbine_controller
categories:
  - multiblock
---

# Controlador da Turbina

<BlockImage id="turbine_controller" scale="4" />

**Clique com o botão direito** no controlador quando a turbina estiver **construída corretamente** para abrir a tela principal.

Novo em multiblocos? Comece com [Começando](colossal_reactors:turbine/getting_started.md).

## Operação

- **Ligue e desligue** a turbina e acompanhe a **saída de RF**, o **uso de vapor** e a eficiência na tela.

- A turbina é verificada novamente de tempos em tempos enquanto roda; se algo quebrar, ela para e diz o porquê (barra de ação e mensagem na GUI).

- Normalmente você pode ter só **um** controlador de turbina por multibloco.

- Coloque-o numa **parede lateral** da carcaça (norte, sul, leste ou oeste no mundo — não em cima nem embaixo). Isso é separado da direção em que o **eixo de barras** corre por dentro.

## Fluidos e energia

- O **vapor** é encanado para dentro pelas [Portas de Recursos da Turbina](turbine_resource_port.md).

- O **RF** sai pelas [Portas de Energia da Turbina](turbine_power_ports.md).

- O vapor gasto frequentemente vira **água** (ou outro fluido que seu pacote define) — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).

## Parando sem quebrar blocos

Uma [Porta de Redstone da Turbina](turbine_redstone_port.md) pode desligar a turbina por redstone externa mantendo a estrutura intacta — mesmo papel de uma [Porta de Redstone do Reator](../multiblock/redstone_port.md).

O que você vê no controlador depende do seu **layout de hélices** e dos **blocos de bobina**; ajuste-os dentro da turbina, não só nesta tela.
