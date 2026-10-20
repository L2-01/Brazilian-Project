---
navigation:
  title: Moldura Etérea
  icon: iska_utils:ethereal_frame
  parent: hubs/world_and_machines.md
  position: 61
item_ids:
  - iska_utils:ethereal_frame
categories:
  - Mundo e máquinas
---
# Moldura Etérea

<ItemImage id="iska_utils:ethereal_frame" />

## O que faz

A **Moldura Etérea** é um bloco de filtro avançado que controla **quais tipos de entidade podem atravessar** com base numa lista de permissão/bloqueio definida na sua GUI.

- **Padrão**: modo de permissão com apenas `minecraft:player` selecionado (jogadores atravessam; todo o resto é bloqueado).
- Molduras adjacentes **compartilham automaticamente** as mudanças de filtro pela rede conectada (até 64 molduras).
- Quando várias redes existem por perto, a moldura com a **atualização de filtro mais recente** vence na sincronização periódica e ao colocar novas molduras ao lado de uma rede existente.

## Interações

| Ação | Resultado |
|--------|--------|
| **Clique direito (mão vazia)** | Abre a GUI de filtro de entidades |
| **Clique direito (item de bloco cheio, sem camuflagem)** | Aplica o bloco como camuflagem |
| **Clique direito (item de bloco cheio, já camuflada)** | Abre a GUI de filtro |
| **Shift + clique direito (camuflada)** | Devolve o bloco de camuflagem |
| **Shift + clique direito (sem camuflagem, rede reforçada)** | Remove o reforço da rede conectada e devolve os materiais |
| **Clique esquerdo (material de reforço na mão)** | Reforça tantas molduras da rede quanto a pilha permitir |

## Durabilidade

Por padrão a moldura é **tipo madeira** (não à prova de Wither / explosões). Ela pode ser **reforçada** com materiais como <ItemImage id="iska_utils:wither_proof_block" /> **Pedra à Prova de Wither**, Vidro Obscuro, Vidro Obscuro Etéreo ou Barras de Netherita (`#c:bars/netherite`) para que a rede conectada fique à prova de Wither como esses blocos. Quebrar uma moldura reforçada devolve o material de reforço (e a camuflagem, se houver).

## Camuflagem

Clique direito com qualquer **bloco cheio opaco** na moldura para disfarçá-la como aquele bloco. A moldura mantém o comportamento de filtro — só o visual muda. Shift + clique para remover a camuflagem e recuperar o bloco.

## GUI de filtro

A tela de filtro mostra uma lista pesquisável de tipos de entidade, tags de entidade comuns e chaves especiais de filtro.

Alterne **Lista de permissão / Lista de bloqueio** para inverter a lógica do filtro, selecione as entradas e pressione **Aplicar**. Após **Cancelar**, o ícone de vidro / vidro fosco alterna se a moldura **deixa passar ou bloqueia a luz**.

### Entradas do filtro

| Tipo de entrada | Exemplo | Significado |
|------------|---------|---------|
| Tipo de entidade | `minecraft:zombie` | Corresponde àquele tipo de entidade |
| Tag de entidade | `#minecraft:raiders` | Corresponde a qualquer entidade daquela tag |
| Chave especial | `$is_monster` | Corresponde a entidades que atendem àquela condição |

Chaves especiais: `$have_armor`, `$is_not_have_armor`, `$have_tool`, `$is_not_have_tool`, `$is_baby`, `$is_adult`, `$is_monster`, `$is_animal`, `$is_neutral`, `$on_fire`, `$is_not_on_fire`, `$is_crouching`, `$is_not_crouching`.

- `$is_animal` corresponde a entidades `Animal` vanilla (vacas, lobos, axolotes, …).
- `$is_neutral` corresponde a entidades que implementam `NeutralMob` (endermen, abelhas, piglins, golems de ferro, …).
- Bebê/adulto já cobrem o oposto um do outro — não existe `$is_not_baby` / `$is_not_adult`.

Uma entidade atravessa quando **qualquer** entrada selecionada corresponde, e então o modo de permissão/bloqueio é aplicado.