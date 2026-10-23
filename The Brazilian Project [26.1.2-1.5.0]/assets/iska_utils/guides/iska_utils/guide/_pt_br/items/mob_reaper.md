---
navigation:
  title: Ceifador de Criaturas
  icon: iska_utils:mob_reaper
  parent: hubs/world_and_machines.md
  position: 45
item_ids:
  - iska_utils:mob_reaper
categories:
  - World and machines
---
# Ceifador de Criaturas

<ItemImage id="iska_utils:mob_reaper" />

## Propósito

O Ceifador de Criaturas é uma **máquina de combate** automatizada. Num intervalo fixo, ele causa dano a entidades vivas próximas usando crédito de abate de **jogador falso** (tabelas de itens, abates de jogador, encantamentos). Combine com uma **Caixa Coletora** a jusante para aspirar drops e XP.

## Posicionamento

- **Chão**: fica de frente para o jogador ao colocar; **agachar + colocar** inverte a direção.
- **Parede**: clique numa face lateral; `FACING` aponta **para fora da parede** (direção do abate). Alguns servidores desativam a colocação em parede.
- **Placa vetorial**: sobre um **Bloco Vetorial** embaixo, o ceifador **se move com a placa** e não cai como item quando a placa é quebrada.

A lâmina gira e causa dano apenas enquanto **ativa** (veja redstone).

## GUI

Ícones-fantasma mostram módulos válidos quando um slot está vazio. Estatísticas ao vivo: **dano**, **% de decapitação**, **sorte**, **multiplicador de XP** e **letal ativo** quando aplicável.

| Controle | Ação |
| ------- | ------ |
| **Tipo de alvo** (lado direito) | Alterna: **Somente criaturas** → **Criaturas e jogadores** → **Somente jogadores**. Clique esquerdo avança, direito volta. |
| **Filtro de idade** (extrema direita) | Alterna: **Todas as idades** → **Apenas adultos** → **Apenas filhotes**. Pula criaturas filhotes ou adultas ao filtrar. |
| **Modo de redstone** | Mesma família das outras máquinas: **Ignorar**, **Baixo**, **Alto**, **Desativado** (clique esquerdo / direito). |
| **✕** | Fechar |

## Módulos

Use **um tipo de módulo de dano** por vez: **Normal** (empilhável) **ou** **Letal** (único). As outras melhorias acumulam independentemente.

| Módulo | Efeito |
| ------ | ------ |
| Dano normal | Dano base + bônus por módulo empilhado. |
| Dano letal | Dano fixo muito alto; substitui os módulos de dano normal. |
| Encantamento | Guarda uma **arma**; os encantamentos se aplicam ao dano e aos efeitos pós-ataque. |
| Decapitação | Chance extra de drop de **cabeça** por nível de módulo. |
| Sorte | Aplica **Sorte** ao jogador falso para as rolagens de saque. |
| Experiência | Multiplicador nos **orbs de XP bônus** quando um alvo morre. |

<ItemGrid>
  <ItemIcon id="iska_utils:normal_damage_module" />
  <ItemIcon id="iska_utils:lethal_damage_module" />
  <ItemIcon id="iska_utils:enchant_module" />
  <ItemIcon id="iska_utils:beheading_module" />
  <ItemIcon id="iska_utils:luck_module" />
  <ItemIcon id="iska_utils:experience_module" />
</ItemGrid>

O inventário de módulos é compatível com **funis / canos**. Veja **Módulos** → **Módulos do Ceifador de Criaturas**.

## Redstone

- **Ignorar** (padrão): sempre ataca quando o cooldown permite.
- **Baixo**: ataca quando **não** há sinal de redstone.
- **Alto**: ataca apenas **com** redstone.
- **Desativado**: nunca ataca.

## Dicas

- Use **Somente criaturas** em servidores, a menos que queira armadilhas de PvP.
- **Módulo de Encantamento** + saque / afiação escala farms; a **Caixa Coletora** no caminho do saque coleta orbs e itens.
- Ceifadores na parede funcionam bem em elevadores de criaturas com placas vetoriais.
