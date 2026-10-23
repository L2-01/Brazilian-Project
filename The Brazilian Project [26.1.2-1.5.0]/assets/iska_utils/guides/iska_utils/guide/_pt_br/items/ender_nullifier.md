---
navigation:
  title: Anulador de Ender
  icon: iska_utils:ender_nullifier
  parent: hubs/world_and_machines.md
  position: 22
item_ids:
  - iska_utils:ender_nullifier
categories:
  - World and machines
---
# Anulador de Ender

<ItemImage id="iska_utils:ender_nullifier" />

## O que faz

Bloco que **cancela teletransportes** dentro de um **raio** cúbico ao seu redor em todos os eixos (definido na GUI).

Entidades na lista de ignorados configurada (padrão: `#c:bosses`) estão isentas e ainda podem se teletransportar pela zona.

## GUI

Clique com o botão direito no bloco para abrir sua GUI de controle:

- **Alcance**: Use os botões **-** e **+** para ajustar o raio de proteção. Os valores atual e máximo são mostrados.
- **Alvo** (botão de ícone, lado direito): alterna o grupo afetado. Clique esquerdo avança, clique direito volta.
  - *Somente criaturas* (padrão): afeta entidades não-jogador.
  - *Somente jogadores*: afeta jogadores no Sobrevivência e Aventura.
  - *Criaturas e jogadores*: afeta os dois grupos.
- **Modo de Redstone** (botão de ícone): alterna entre Ignorar, Baixo, Alto, Desativado.
  - *Ignorar* (pólvora): sempre ativo quando habilitado manualmente, ignora sinal de redstone.
  - *Baixo*: ativo enquanto **não** houver sinal de redstone (e habilitado manualmente).
  - *Alto*: ativo enquanto houver sinal de redstone **presente** (e habilitado manualmente).
  - *Desativado*: nunca ativo.
- **Shift + clique direito**: alterna habilitar/desabilitar manual sem abrir a GUI (retorno na barra de ação).
- **Mostrar / Ocultar** (abaixo do botão de redstone): alterna uma borda de prévia visível ao redor da área afetada.
- **Slot de Módulo de Alcance** (canto superior esquerdo): insira itens de Módulo de Alcance para aumentar o raio máximo alcançável. Veja **Módulos** → **Módulo de Alcance**.

## Dicas

- Coloque no centro da área que você quer proteger.
- Útil perto de farms onde entidades teleportantes quebram o confinamento.
- Começa **ativo** (modo Manual, habilitado manualmente) ao ser colocado.
- Veja também: [Anulador de Mercador Ambulante](wander_nullifier.md), [Anulador de Almas](soul_nullifier.md).
