---
navigation:
  title: Ceifador de Criaturas
  icon: iska_utils:mob_reaper
  parent: hubs/world_and_machines.md
  position: 45
item_ids:
  - iska_utils:mob_reaper
categories:
  - Mundo e máquinas
---
# Ceifador de Criaturas

<ItemImage id="iska_utils:mob_reaper" />

## Propósito

O Ceifador de Criaturas é uma **máquina de combate** automatizada. Num intervalo fixo, ele causa dano a entidades vivas próximas usando crédito de abate de **jogador falso** (tabelas de saque, abates de jogador, encantamentos). Combine com uma **Caixa Coletora** a jusante para aspirar itens largados e XP.

## Posicionamento

- **Chão**: vira-se para o jogador ao colocar; **agachar + colocar** inverte a direção.
- **Parede**: clique numa face lateral; `FACING` aponta **para fora da parede** (direção do abate). Alguns servidores desativam a colocação em paredes.
- **Placa vetorial**: sobre um **Bloco Vetorial** abaixo, o ceifador **move-se com a placa** e não é largado como item quando a placa é quebrada.

A lâmina gira e causa dano apenas enquanto **ativa** (veja redstone).

## GUI

Ícones-fantasma mostram módulos válidos quando um espaço está vazio. Estatísticas ao vivo: **dano**, **% de decapitação**, **sorte**, **multiplicador de XP** e **letal ativo** quando aplicável.

| Controle | Ação |
| ------- | ------ |
| **Tipo de alvo** (lado direito) | Alterna: **Somente criaturas** → **Criaturas e jogadores** → **Somente jogadores**. Clique esquerdo avança, clique direito volta. |
| **Filtro de idade** (extremo direito) | Alterna: **Todas as idades** → **Somente adultos** → **Somente filhotes**. Pula criaturas filhotes ou adultas ao filtrar. |
| **Modo de redstone** | Mesma família das outras máquinas: **Ignorar**, **Baixo**, **Alto**, **Desativado** (clique esquerdo / direito). |
| **✕** | Fechar |

## Módulos

Use **um tipo de módulo de dano** por vez: **Normal** (empilhável) **ou** **Letal** (único). As outras melhorias acumulam independentemente.

| Módulo | Efeito |
| ------ | ------ |
| Dano normal | Dano base + bônus por módulo empilhado. |
| Dano letal | Dano fixo muito alto; substitui módulos de dano normal. |
| Encantamento | Segura uma **arma**; encantamentos se aplicam ao dano e aos efeitos pós-ataque. |
| Decapitação | Chance extra de item largado de **cabeça** por nível de módulo. |
| Sorte | Aplica **Sorte** ao jogador falso para rolagens de saque. |
| Experiência | Multiplicador nos **orbs de XP bônus** quando um alvo morre. |

<ItemGrid>
  <ItemIcon id="iska_utils:normal_damage_module" />
  <ItemIcon id="iska_utils:lethal_damage_module" />
  <ItemIcon id="iska_utils:enchant_module" />
  <ItemIcon id="iska_utils:beheading_module" />
  <ItemIcon id="iska_utils:luck_module" />
  <ItemIcon id="iska_utils:experience_module" />
</ItemGrid>

O inventário de módulos é compatível com **funis / tubos**. Veja **Módulos** → **Módulos do Ceifador de Criaturas**.

## Redstone

- **Ignorar** (padrão): sempre ataca quando a recarga permite.
- **Baixo**: ataca quando **não** há sinal de redstone.
- **Alto**: ataca apenas **com** redstone.
- **Desativado**: nunca ataca.

## Dicas

- Use **Somente criaturas** em servidores, a menos que pretenda armadilhas PvP.
- **Módulo de encantamento** + saque / afiação escala farms; a **Caixa Coletora** no caminho do saque coleta orbs e itens.
- Ceifadores em paredes funcionam bem em elevadores de criaturas com placas vetoriais.