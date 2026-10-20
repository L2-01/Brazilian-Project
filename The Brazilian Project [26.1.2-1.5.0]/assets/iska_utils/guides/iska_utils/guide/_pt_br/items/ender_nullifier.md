---
navigation:
  title: Anulador de Ender
  icon: iska_utils:ender_nullifier
  parent: hubs/world_and_machines.md
  position: 22
item_ids:
  - iska_utils:ender_nullifier
categories:
  - Mundo e máquinas
---
# Anulador de Ender

<ItemImage id="iska_utils:ender_nullifier" />

## O que faz

Bloco que **cancela teletransporte** dentro de um **raio** cúbico ao seu redor em todos os eixos (definido na GUI).

Entidades na lista de ignorados configurada (padrão: `#c:bosses`) estão isentas e ainda podem se teletransportar pela zona.

## GUI

Clique direito no bloco para abrir sua GUI de controle:

- **Alcance**: use os botões **-** e **+** para ajustar o raio de proteção. Os valores atual e máximo são mostrados.
- **Alvo** (botão de ícone, lado direito): alterna entre o grupo afetado. Clique esquerdo avança, clique direito volta.
  - *Somente criaturas* (padrão): afeta entidades não-jogador.
  - *Somente jogadores*: afeta jogadores em Sobrevivência e Aventura.
  - *Criaturas e jogadores*: afeta ambos os grupos.
- **Modo de Redstone** (botão de ícone): alterna entre Ignorar, Baixo, Alto, Desativado.
  - *Ignorar* (pólvora): sempre ativo quando manualmente habilitado, ignora sinal de redstone.
  - *Baixo*: ativo enquanto o sinal de redstone estiver **ausente** (e manualmente habilitado).
  - *Alto*: ativo enquanto o sinal de redstone estiver **presente** (e manualmente habilitado).
  - *Desativado*: nunca ativo.
- **Shift + clique direito**: alterna a ativação manual sem abrir a GUI (retorno na barra de ação).
- **Mostrar / Ocultar** (abaixo do botão de redstone): alterna uma prévia visível de borda ao redor da área afetada.
- **Espaço de Módulo de Alcance** (canto superior esquerdo): insira itens de Módulo de Alcance para aumentar o raio máximo alcançável. Veja **Módulos** → **Módulo de Alcance**.

## Dicas

- Coloque no centro da área que você quer proteger.
- Útil perto de farms onde entidades que se teletransportam quebram a contenção.
- Começa **ativo** (modo Manual, manualmente habilitado) quando colocado.
- Veja também: [Anulador de Mercador Ambulante](wander_nullifier.md), [Anulador de Almas](soul_nullifier.md).