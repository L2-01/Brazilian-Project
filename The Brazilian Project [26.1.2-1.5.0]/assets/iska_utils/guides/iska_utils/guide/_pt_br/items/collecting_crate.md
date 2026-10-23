---
navigation:
  title: Caixa Coletora
  icon: iska_utils:collecting_crate
  parent: hubs/world_and_machines.md
  position: 46
item_ids:
  - iska_utils:collecting_crate
categories:
  - World and machines
---
# Caixa Coletora

<ItemImage id="iska_utils:collecting_crate" />

## Propósito

Aspira **entidades de itens** e **orbs de experiência** dentro de uma caixa ao redor do bloco. Armazena itens num inventário interno e XP como **experiência fluida** (compatível com tags de fluido de experiência). Ideal sob farms de **Ceifador de Criaturas** ou qualquer câmara de abate.

## Área de coleta

- A caixa se estende para a **esquerda**, **direita**, **cima** e **atrás** em relação à direção do bloco (não à frente da face da caixa).
- Um **Módulo de Alcance** no slot de módulo aumenta os limites máximos (empilhe módulos para alcançar o limite). Veja **Módulos** → **Módulo de Alcance**.
- **Prévia** alterna um contorno do lado do cliente da caixa ativa.

Ajuste os limites com os botões **+ / −** (Cima, Esquerda, Direita, Atrás). Modificadores:

- **Clique esquerdo**: +1
- **Clique direito**: −1
- **Shift**: ±10
- **Alt / Ctrl**: ±5

## Modo de coleta

Alterna com o botão de modo:

- **XP e itens** (padrão)
- **Somente XP**
- **Somente itens**

## Tanque de XP

- O XP é armazenado como fluido; a GUI mostra os **níveis armazenados**.
- **Coletar todo o XP para o jogador** — puxa o XP armazenado para você.
- **Depositar todo o XP do jogador** — esvazia seu XP no tanque (respeitando a capacidade).

## Armazenamento e automação

- Manipuladores de **itens** e **fluidos** no bloco para funis e canos.

## Redstone

Mesmos modos das outras máquinas: **Ignorar**, **Baixo**, **Alto**, **Desativado**. Quando desativado ou bloqueado, a coleta para.

## Dicas

- Coloque a caixa **atrás** da zona de abate em relação à sua direção para que a caixa cubra a área de drops.
- Use **somente itens** se o XP for encanado para outro lugar; use **somente XP** para farms de experiência sem poluição de itens.
