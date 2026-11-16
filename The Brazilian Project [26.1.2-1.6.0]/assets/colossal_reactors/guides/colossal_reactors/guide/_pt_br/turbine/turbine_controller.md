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

Novo em multiblocos? Comece com [Primeiros passos](colossal_reactors:turbine/getting_started.md).

## Operação

- **Ligue e desligue** a turbina e acompanhe a **saída de RF**, o **uso de vapor** e a eficiência na tela.

- A turbina é verificada novamente de tempos em tempos enquanto funciona; se algo quebrar, ela para e diz o motivo (barra de ação e mensagem na GUI).

- Normalmente você só pode ter **um** controlador de turbina por multibloco.

- Coloque-o numa **parede lateral** da casca (norte, sul, leste ou oeste no mundo — não no topo ou na base). Isso é independente da direção do **eixo de barras** dentro.

## Fluidos e energia

- O **vapor** entra pelas [Portas de Recursos da Turbina](turbine_resource_port.md).

- A **RF** sai pelas [Portas de Energia da Turbina](turbine_power_ports.md).

- O vapor usado geralmente vira **água** (ou outro fluido que o seu pacote definir) — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).

## Parando sem quebrar blocos

Uma [Porta de Redstone da Turbina](turbine_redstone_port.md) pode desligar a turbina por redstone externa mantendo a estrutura intacta — mesmo papel da [Porta de Redstone do Reator](../multiblock/redstone_port.md).

O que você vê no controlador depende do seu **layout de hélices** e dos **blocos de bobina**; ajuste-os dentro da turbina, não apenas nesta tela.
