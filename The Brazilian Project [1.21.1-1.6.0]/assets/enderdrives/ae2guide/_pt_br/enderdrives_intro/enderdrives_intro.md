---
navigation:
  parent: enderdrives_intro/enderdrives_intro-index.md
  title: Célula de Armazenamento de Itens Ender
  icon: enderdrives:ender_disk_1k
categories:
  - enderdrives
item_ids:
  - enderdrives:ender_disk_1k
  - enderdrives:ender_disk_4k
  - enderdrives:ender_disk_16k
  - enderdrives:ender_disk_64k
  - enderdrives:ender_disk_256k
  - enderdrives:ender_disk_creative
  - enderdrives:ender_fluid_disk_1k
  - enderdrives:ender_fluid_disk_4k
  - enderdrives:ender_fluid_disk_16k
  - enderdrives:ender_fluid_disk_64k
  - enderdrives:ender_fluid_disk_256k
  - enderdrives:ender_fluid_disk_creative
---

# Ender Drives

Os Ender Drives são drives poderosos que permitem armazenamento sincronizado globalmente entre sistemas ME, dimensões e até jogadores diferentes por meio de frequências.

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_disk_1k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_disk_1k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_disk_4k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_disk_4k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_disk_16k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_disk_16k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_disk_64k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_disk_64k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_disk_256k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_disk_256k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_fluid_disk_1k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_fluid_disk_1k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_fluid_disk_4k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_fluid_disk_4k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_fluid_disk_16k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_fluid_disk_16k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_fluid_disk_64k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_fluid_disk_64k" />
  </Column>
</Row>

<Row gap="10">
  <Column>
    <ItemImage id="enderdrives:ender_fluid_disk_256k" />
  </Column>
  <Column>
    <ItemLink id="enderdrives:ender_fluid_disk_256k" />
  </Column>
</Row>


---

## Como Funciona
Cada EnderDrive é configurado com uma frequência, um escopo e um modo.
- Uma **Frequência**: drives com a mesma frequência compartilham o mesmo inventário.
- Um **Escopo**: determina quem pode acessar o drive (Global, Privado ou Equipe).
- Um **Modo**: controla como os itens fluem (Bidirecional, Entrada, Saída).

Todos os drives com a mesma frequência e escopo acessarão o **mesmo inventário virtual**, não importa onde estejam.

---

## Limites de Tipos
Diferente dos drives AE2 tradicionais, o limite dos EnderDrives é baseado apenas em tipos. Devido à natureza de como os itens são armazenados no back-end, a única limitação rígida é a quantidade de tipos. Você pode literalmente armazenar até 2^63 - 1 ou 9.223.372.036.854.775.807 itens de cada tipo. Mas cuidado: o custo de energia aumentará com a quantidade de itens armazenados no drive naquela frequência!

Cada servidor terá uma contagem de tipos diferente a partir da qual começará a sobrecarregar. Você pode testar seu servidor usando o comando autobenchmark. Você precisará ter um terminal aberto com um drive em modo Privado com a frequência selecionada para obter resultados precisos. O benchmark continuará até o TPS cair abaixo de 18. Isso pode levar alguns minutos.

Minha média pessoal é de cerca de 275.000 tipos. 275.000/255 ≈ 1078. Isso significa que eu teria que encher 107,8 Gabinetes ME com Ender Drives de 256k e itens tipados antes de começar a ver problemas de desempenho. Já vi sugestões de máximo de tipos maiores e menores. Este limite é compartilhado entre todos os que utilizam os drives no mesmo mundo.

---

## Modos do Drive
Cada drive pode ser definido para um dos três **modos de transferência**:

- ![PEGui1](../pic/transport_bidirectional_alt.png) **Bidirecional** _(Padrão)_
  Comportamento padrão de drive ME. Insira e extraia itens livremente.


- ![PEGui1](../pic/transport_input_alt.png) **Somente Entrada**
  Itens podem ser inseridos, mas não removidos. Útil para buffers ou sincronizar entradas.


- ![PEGui1](../pic/transport_output_alt.png) **Somente Saída**
  Itens podem ser extraídos, mas não inseridos. Ótimo para buffers de saída ou acesso somente-leitura.

---

## Escopo e Privacidade

Cada drive também tem um **escopo**, que controla quem pode acessar o inventário:
-  **Global** _(Padrão)_
   Público! Qualquer jogador usando a mesma frequência pode acessar este inventário compartilhado.


-  **Privado**
  Vinculado ao seu UUID. Somente você pode criar drives para acessar esta frequência. Qualquer outro usuário do seu sistema ME ainda pode acessar este armazenamento.


-  **Equipe**
  Compartilhado com sua Equipe FTB. Todos os membros podem criar drives com acesso à mesma frequência.
