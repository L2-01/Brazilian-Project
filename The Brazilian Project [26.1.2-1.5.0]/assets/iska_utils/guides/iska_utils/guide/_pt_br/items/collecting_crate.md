---
navigation:
  title: Caixa Coletora
  icon: iska_utils:collecting_crate
  parent: hubs/world_and_machines.md
  position: 46
item_ids:
  - iska_utils:collecting_crate
categories:
  - Mundo e máquinas
---
# Caixa Coletora

<ItemImage id="iska_utils:collecting_crate" />

## Propósito

Aspira **entidades de itens** e **orbs de experiência** dentro de uma caixa ao redor do bloco. Armazena itens num inventário interno e XP como **experiência fluida** (compatível com tags de fluido de experiência). Ideal sob farms de **Ceifador de Criaturas** ou qualquer câmara de abate.

## Área de coleta

- A caixa se estende para a **esquerda**, **direita**, **cima** e **trás** em relação à face do bloco (não na frente da face da caixa).
- **Módulo de Alcance** no espaço de módulo aumenta as extensões máximas (empilhe módulos até o limite). Veja **Módulos** → **Módulo de Alcance**.
- **Prévia** alterna um contorno no cliente da caixa ativa.

Ajuste as extensões com os botões **+ / −** (Cima, Esquerda, Direita, Trás). Modificadores:

- **Clique esquerdo**: +1  
- **Clique direito**: −1  
- **Shift**: ±10  
- **Alt / Ctrl**: ±5  

## Modo de coleta

Alterna com o botão de modo:

- **XP e itens** (padrão)
- **Só XP**
- **Só itens**

## Tanque de XP

- XP é armazenado como fluido; a GUI mostra os **níveis armazenados**.
- **Coletar todo XP para o jogador** — puxa o XP armazenado para você.
- **Depositar todo XP do jogador** — despeja seu XP no tanque (respeitando a capacidade).

## Armazenamento e automação

- Handlers de **item** e **fluido** no bloco para funis e tubos.

## Redstone

Mesmos modos das outras máquinas: **Ignorar**, **Baixo**, **Alto**, **Desativado**. Quando desativado ou bloqueado, a coleta para.

## Dicas

- Coloque a caixa **atrás** da câmara de abate em relação à sua face para que a caixa cubra a zona de itens largados.
- Use **só itens** se o XP for encaminhado por tubos para outro lugar; use **só XP** para farms de experiência sem bagunça de itens.