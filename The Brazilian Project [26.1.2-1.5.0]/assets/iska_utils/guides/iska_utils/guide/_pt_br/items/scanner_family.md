---
navigation:
  title: Escâner e chips
  icon: iska_utils:scanner
  parent: hubs/tools_and_scanner.md
  position: 15
item_ids:
  - iska_utils:scanner
  - iska_utils:scanner_chip
  - iska_utils:scanner_chip_ores
  - iska_utils:scanner_chip_mobs
  - iska_utils:scanner_chip_spawners
  - iska_utils:scanner_chip_loot
  - iska_utils:scanner_chip_liquid
categories:
  - Ferramentas úteis
---
# Escâner e chips

<ItemImage id="iska_utils:scanner" />

## Escâner

- Destaca blocos ou criaturas correspondentes por um tempo limitado; suporta Chips de Escaneador para armazenar e transferir alvos.

<ItemGrid>
  <ItemIcon id="iska_utils:scanner" />
  <ItemIcon id="iska_utils:scanner_chip" />
  <ItemIcon id="iska_utils:scanner_chip_ores" />
  <ItemIcon id="iska_utils:scanner_chip_mobs" />
  <ItemIcon id="iska_utils:scanner_chip_spawners" />
  <ItemIcon id="iska_utils:scanner_chip_loot" />
  <ItemIcon id="iska_utils:scanner_chip_liquid" />
</ItemGrid>

## Chip de Escaneador (vazio)

- **Shift + usar num bloco** para armazenar um alvo de bloco no chip.
- Para transferir o alvo do chip para o **Escâner**, segure o escâner na **mão principal** e **use o chip**.

## Chip de Escaneador (Minérios)

- Pré-definido para escanear **minérios**.
- **Shift + usar** para alternar o filtro de nível de mineração (mostrado no chat / dica).
- Segure o escâner na **mão principal** e **use o chip** para transferir o alvo de escaneamento de minérios para o escâner.

## Chip de Escaneador (Criaturas)

- Pré-definido para escanear **todas as criaturas**.
- **Shift + usar** para alternar categorias de criaturas.
- Segure o escâner na **mão principal** e **use o chip** para transferir o alvo de escaneamento de criaturas para o escâner.

## Chip de Escaneador (Geradores)

- Pré-definido para escanear **blocos de gerador** (geradores de monstros, de provação e relacionados).
- **Shift + usar** para alternar: todos os geradores, só geradores de monstros ou só geradores de provação.
- Transfira para o escâner como os outros chips especializados.

## Chip de Escaneador (Itens)

- Pré-definido para encontrar **recipientes de armazenamento com itens** (fechados ou com conteúdo).
- **Shift + usar** para alternar os modos de itens:
  1. Recipientes com itens (padrão)
  2. Recipientes vazios
  3. Recipientes abertos que ainda guardam itens para você (quando suportado por mods compatíveis, ex.: Lootr)
- Detecta baús, barris, shulkers, vasos decorados, recipientes de mods e blocos do **Lootr**.
- **Entidades** de itens (ex.: molduras do Lootr) usam marcadores flutuantes.
- As cores dos marcadores de bloco diferem entre Lootr e recipientes vanilla/de mods.

## Chip de Escaneador (Líquido)

- Pré-definido para escanear **todos os fluidos** no alcance.
- **Shift + usar num bloco de fluido** (ou na face de um bloco adjacente a fluido) para filtrar apenas aquele fluido. Fluidos correntes e de origem são normalizados (ex.: `minecraft:water`).
- **Shift + usar em qualquer outro bloco** para redefinir o filtro para todos os fluidos.
- Transfira para o escâner como os outros chips especializados.