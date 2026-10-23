---
navigation:
  parent: enderdrives_intro/enderdrives_intro-index.md
  title: Célula de Armazenamento de Itens Tape Disk
  icon: enderdrives:tape_disk
categories:
  - tapedrives
item_ids:
  - enderdrives:tape_disk
---

# Drives Tape Disk

Os Tape Drives são células de armazenamento poderosas compatíveis com AE2, projetadas para lidar com **itens pesados em NBT**, como ferramentas, armaduras, equipamentos encantados ou quaisquer itens com tags únicas que normalmente ocupam espaço de tipos nos drives ME tradicionais.

Diferente dos drives AE2 comuns, os bytes usados pelos Tape Disks escalam dinamicamente com base no **tamanho de NBT** real dos itens armazenados — dando a você um controle refinado sobre o seu sistema. Os Tape Drives **NÃO** dirão ao AE2 que são preferenciais para qualquer item que corresponda ao seu filtro; use a prioridade do Gabinete ME.

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

Cada Tape Disk só permite armazenar itens com NBT não padrão, armaduras, ferramentas ou itens não empilháveis.

---

## Limites de Bytes e Tipos

Os Tape Disks impõem tanto um **limite de tipos** quanto um **limite de uso de bytes**:

- **Limite de Tipos** – Número máximo de tipos únicos de itens armazenados (ex.: livros encantados, armaduras personalizadas).
- **Limite de Bytes** – Baseado no **tamanho dos dados NBT** de cada item. Itens com muitas tags (como equipamentos do Apotheosis) usam mais espaço devido à quantidade de NBT.

Os Tape Disks foram projetados para **favorecer itens pesados em NBT**, sendo perfeitos para armazenar equipamentos ou itens únicos sem poluir o espaço dos drives tradicionais.

---


## Quando Usar um Tape Disk

Use um Tape Disk em vez de um drive tradicional quando:

- Você está armazenando **itens não empilháveis** como armaduras, ferramentas ou equipamentos.
- Você precisa de espaço para **itens modded pesados em NBT**.
- Você quer manter itens especiais fora dos seus drives ME normais.

Os Tape Drives brilham onde os drives normais sofrem — ocupando espaço de limite de tipos nos seus drives gigantes.

---

## Transferências do Porto de E/S

Um tape disk se auto-regula durante transferências de ou para ele usando um Porto de E/S. Isso acontece porque ele pode lidar com itens pesados em NBT, então não despeja tudo de uma vez e não trava o seu jogo.

---

## O Que Pode Ser Armazenado?

Os Tape Disks são especializados em itens **pesados em NBT**, **não empilháveis** ou **personalizados** — não em armazenamento em massa geral.

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
