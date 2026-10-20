---
navigation:
  parent: enderdrives_intro/enderdrives_intro-index.md
  title: Célula de Armazenamento de Itens de Fita
  icon: enderdrives:tape_disk
categories:
  - tapedrives
item_ids:
  - enderdrives:tape_disk
---

# Discos de Fita

Os Discos de Fita são células de armazenamento poderosas compatíveis com o AE2, projetadas para lidar com **itens pesados em NBT**, como ferramentas, armaduras, equipamentos encantados ou quaisquer itens com marcadores únicos que normalmente consumiriam espaço de tipos nos gabinetes ME tradicionais.

Diferente dos gabinetes ME típicos do AE2, os bytes usados pelos Discos de Fita escalam dinamicamente com base no **tamanho de NBT** real dos itens armazenados — dando a você um controle preciso sobre o seu sistema. Os Discos de Fita **NÃO** informam ao AE2 que são preferenciais para nenhum item que corresponda ao filtro; use a prioridade do Gabinete ME para isso.

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:tape_disk" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:tape_disk" />
  </Column>
</Row>

---

## Como Funciona

Cada Disco de Fita só permite que sejam armazenados itens com NBT não padrão, armaduras, ferramentas ou itens não empilháveis.

---

## Limites de Bytes e Tipos

Os Discos de Fita impõem tanto um **limite de tipos** quanto um **limite de uso de bytes**:

- **Limite de Tipos** – Número máximo de tipos de itens únicos armazenados (ex.: livros encantados, armaduras personalizadas).
- **Limite de Bytes** – Baseado no **tamanho dos dados NBT** de cada item. Itens com muitos marcadores (como equipamentos do Apotheosis) usam mais espaço devido à quantidade de NBT.

Os Discos de Fita foram projetados para **favorecer itens pesados em NBT**, tornando-os perfeitos para armazenar equipamentos ou itens únicos sem poluir o espaço dos gabinetes tradicionais.

---


## Quando Usar um Disco de Fita

Use um Disco de Fita em vez de um gabinete tradicional quando:

- Você estiver armazenando **itens não empilháveis** como armaduras, ferramentas ou equipamentos.
- Você precisar de espaço para **itens de mods pesados em NBT**.
- Você quiser manter itens especiais fora dos seus gabinetes ME normais.

Os Discos de Fita brilham onde os gabinetes normais sofrem — ocupando espaço de limite de tipos nos seus gabinetes gigantes.

---

## Transferências pelo Porto de E/S

Um disco de fita se autolimita ao fazer transferências de ou para ele usando um Porto de Entrada/Saída. Isso ocorre porque ele pode estar lidando com itens pesados em NBT, então ele não despeja tudo de uma vez e não trava o seu jogo.

---

## O Que Pode Ser Armazenado?

Os Discos de Fita são especializados em itens **pesados em NBT**, **não empilháveis** ou **personalizados** — não em armazenamento em massa genérico.

---

### Itens Aceitos

| Item                                | Exemplo                                  |
|-------------------------------------|------------------------------------------|
| <ItemImage id="minecraft:diamond_chestplate" /> | **Peitoral de Diamante** com encantamentos |
| <ItemImage id="minecraft:enchanted_book" />     | **Livro Encantado** com um encantamento   |
| <ItemImage id="minecraft:splash_potion" />      | **Poções** com efeitos                 |
| <ItemImage id="minecraft:netherite_pickaxe" />  | **Ferramentas** com durabilidade                |

---

### Não Aceitos

| Item                              | Motivo                         |
|-----------------------------------|--------------------------------|
| <ItemImage id="minecraft:cobblestone" /> | Sem NBT, Empilhável              |
| <ItemImage id="minecraft:wheat" />       | Sem NBT, Empilhável  |
| <ItemImage id="minecraft:oak_log" />     | Sem NBT, Empilhável             |
| <ItemImage id="minecraft:apple" />       | Sem NBT, Empilhável    |
| <ItemImage id="minecraft:iron_ingot" />  | Sem NBT, Empilhável    |

---
