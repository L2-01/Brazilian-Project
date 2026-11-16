---
navigation:
  parent: turbine/turbine-index.md
  title: Porta de Recursos da Turbina
  icon: turbine_resource_port
  position: 35
item_ids:
  - colossal_reactors:turbine_resource_port
categories:
  - ports
---

# Porta de Recursos da Turbina

<BlockImage id="turbine_resource_port" scale="4" />

Anexe **Porta(s) de Recursos da Turbina** ao revestimento para mover **vapor**, **água** e outros fluidos permitidos pelo pacote entre tubos/tanques e a turbina.

Layout típico: **duas portas de recursos + uma porta de energia** na mesma face do [Controlador da Turbina](turbine_controller.md) — veja [Primeiros passos](getting_started.md). Passe o mouse sobre os diamantes na cena abaixo.

<GameScene zoom="6" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_turbine.snbt" />
  <IsometricCamera yaw="200" pitch="28" />
  <BlockAnnotation x="1" y="2" z="0" color="#55ffff">
**Exemplo: vapor ENTRA** — modo **Inserir**, **Líquido** ativado. Dica: *Puxa vapor (e outros fluidos permitidos) para dentro da turbina.*
  </BlockAnnotation>
  <BlockAnnotation x="5" y="2" z="0" color="#5599ff">
**Exemplo: água SAI** — modo **Extrair**, **Líquido** ativado. Dica: *Envia água ou fluido de exaustão para os tubos.*
  </BlockAnnotation>
</GameScene>

Leve o vapor do seu [reator de fissão](../multiblock/getting_started.md) (ou de qualquer fonte de vapor) até a porta **INSERIR**. Leve a **água / exaustão** para fora pela porta **EXTRAIR**. Quanto a turbina consegue usar depende das suas hélices — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).

## GUI — botões e dicas

A porta da turbina usa o mesmo layout de tela da porta do reator, mas **sem fileira de Sólido** e **sem filtro de Combustível/Refrigerante**. Passe o mouse sobre cada controle no jogo — o texto abaixo corresponde às dicas padrão.

### Modo (botão superior — clique para alternar)

| Rótulo | Dica |
|-------|---------|
| **Inserir** | Puxa vapor (e outros fluidos permitidos) para dentro da turbina. |
| **Extrair** | Envia água ou fluido de exaustão para os tubos. |
| **Ejetar** | Ejeta para fora o fluido armazenado no tanque da porta. |

### Alternâncias de meio (clique para ativar — sublinhadas quando ativas)

| Botão | Dica |
|--------|---------|
| **Líquido** | Clique para permitir ou bloquear fluidos por esta porta. |
| **Gás** | Clique para permitir ou bloquear gases do Mekanism por esta porta. |

### Tanques e descarte

| Controle | Dica |
|---------|---------|
| **Tanque de líquido** (barra ao passar o mouse) | Líquido: quantidade / capacidade em mB, mais o nome do fluido |
| **Tanque de gás** (barra ao passar o mouse, Mekanism) | Gás: quantidade / capacidade em mB, mais o nome do gás |
| **D** sob o tanque de líquido | Descartar: esvaziar o tanque interno de fluido (o fluido é descartado) |
| **D** sob o tanque de gás | Descartar: esvaziar o tanque de gás (o gás é descartado) |

Tubos e tanques conectam do **lado de fora**; a face **interna** deve apontar para dentro da turbina.

Depois de mudar os modos, **Reinicie** o [Controlador da Turbina](turbine_controller.md).

## Escalonamento automático de capacidade

Quando a turbina é **revalidada**, o tanque de fluido da porta é redimensionado a partir da estimativa de **vapor em mB/t × 10**, com piso de **16.000 mB** e **sem limite máximo fixo**. A capacidade cresce imediatamente quando a demanda aumenta e só diminui se o vapor armazenado ainda couber no tamanho menor.
