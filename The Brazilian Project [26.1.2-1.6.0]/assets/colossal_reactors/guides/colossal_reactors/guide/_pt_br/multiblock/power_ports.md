---
navigation:
  parent: multiblock/multiblock-index.md
  title: Portas de Energia do Reator
  icon: power_port
  position: 36
item_ids:
  - colossal_reactors:power_port
  - colossal_reactors:high_cond_power_port
categories:
  - ports
---

# Portas de Energia do Reator

<Row gap="16" fullWidth={true}>
  <BlockImage id="power_port" scale="4" />
  <BlockImage id="high_cond_power_port" scale="4" />
</Row>

As **portas de energia do reator** são anexos **apenas de face**: elas enviam energia do reator para cabos, dutos ou máquinas do **lado de fora**. Não há **tela** — ligue a face externa e leia o fluxo na sua rede de energia.

## Porta de Energia do Reator

A **Porta de Energia do Reator** padrão é suficiente para a maioria dos modpacks e taxas de RF típicas.

## Porta de Energia de Alta Condução do Reator

A **Porta de Energia de Alta Condução do Reator** é para reatores muito grandes que produzem quantidades enormes de RF por tique. Ela armazena e move quantidades muito maiores de energia e funciona melhor com mods que suportam transferências gigantescas de energia (por exemplo, Draconic Evolution ou Flux Networks, quando instalados).

Fabrique-a a partir de uma **Porta de Energia do Reator** mais materiais de alto nível — confira o **JEI** do seu pacote.

## Escalonamento automático de capacidade

Quando o reator é **revalidado** (reinício do controlador ou verificação de estrutura depois que você muda a construção), cada **porta de energia** do multibloco redimensiona seu buffer de RF:

- O tamanho alvo é cerca de **RF/t estimada × 10** (margem de segurança), nunca abaixo de **10.000 RF**.
- A **Porta de Energia do Reator** tem teto de **2,1 bi de RF** (2.147.483.647).
- A **Porta de Energia de Alta Condução** usa armazenamento de **64 bits** — máximo prático de **9,22×10¹⁸ RF**.

A capacidade **cresce imediatamente** quando o reator precisa de mais folga. Ela **só diminui** quando o que já está armazenado ainda cabe no alvo menor, então energia não é perdida no redimensionamento.

Revalide depois de grandes mudanças de combustível, refrigerante ou dissipadores para que os buffers das portas acompanhem a nova saída.

## Recursos (ambas as variantes)

- Coloque numa face externa do revestimento; o **lado interno** deve estar voltado para o interior do reator.

- Conecte manipuladores de energia compatíveis de outros mods do **lado de fora** da porta.
