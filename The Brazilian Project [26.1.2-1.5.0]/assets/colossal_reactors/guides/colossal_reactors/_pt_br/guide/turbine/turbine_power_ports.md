---
navigation:
  parent: turbine/turbine-index.md
  title: Portas de Energia da Turbina
  icon: turbine_power_port
  position: 36
item_ids:
  - colossal_reactors:turbine_power_port
  - colossal_reactors:turbine_high_cond_power_port
categories:
  - Portas
---

# Portas de Energia da Turbina

<Row gap="16" fullWidth={true}>
  <BlockImage id="turbine_power_port" scale="4" />
  <BlockImage id="turbine_high_cond_power_port" scale="4" />
</Row>

Portas de energia mandam o **RF** da turbina para cabos e máquinas do lado de **fora**. **Não há GUI** — conecte a face externa e leia a energia na sua rede.

## Porta de Energia da Turbina

A **Porta de Energia da Turbina** normal é suficiente para a maioria dos modpacks e taxas típicas de RF.

## Porta de Energia de Alta Condução da Turbina

A variante de **Alta Condução** é para turbinas **muito grandes** que produzem RF enorme por tique. Ela armazena e move quantidades de energia muito maiores (ajustável nas configurações do mod) e funciona melhor com mods que suportam transferência gigantesca de energia (por exemplo Draconic Evolution ou Flux Networks quando instalados).

Fabrique-a a partir de uma **Porta de Energia da Turbina** mais peças de alto nível — confira o **JEI**.

## Escalonamento automático de capacidade

Quando a turbina **revalida**, cada **porta de energia** redimensiona seu buffer de RF a partir da saída estimada da turbina:

- O tamanho alvo é cerca de **RF/t estimado × 10**, nunca abaixo de **10.000 RF**.
- A **Porta de Energia da Turbina** tem teto de **2,1 bi RF**.
- A variante de **Alta Condução** tem teto de **9,22×10¹⁸ RF** (buffer de 64 bits).

A capacidade cresce imediatamente quando a saída sobe; ela encolhe só se a energia armazenada ainda couber no novo alvo.

## Ambas as variantes

- Coloque numa **face do revestimento** com o interior voltado para dentro da turbina.

- Anexe cabos de energia ou máquinas do lado de **fora**.

A saída depende de vapor, bobinas e hélices — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).
