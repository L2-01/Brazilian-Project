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

Layout típico: **duas portas de recursos + uma porta de energia** na mesma face do [Controlador da Turbina](turbine_controller.md) — veja [Começando](getting_started.md). Passe o mouse sobre os losangos na cena abaixo.

<GameScene zoom="6" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_turbine.snbt" />
  <IsometricCamera yaw="200" pitch="28" />
  <BlockAnnotation x="1" y="2" z="0" color="#55ffff">
**Exemplo: vapor ENTRA** — modo **Inserir**, **Líquido** ativado. Dica: *Puxa vapor (e outros fluidos permitidos) para dentro da turbina.*
  </BlockAnnotation>
  <BlockAnnotation x="5" y="2" z="0" color="#5599ff">
**Exemplo: água SAI** — modo **Extrair**, **Líquido** ativado. Dica: *Empurra água ou fluido de exaustão para os tubos.*
  </BlockAnnotation>
</GameScene>

Encane vapor do seu [reator de fissão](../multiblock/getting_started.md) (ou qualquer fonte de vapor) para a porta **Inserir**. Encane **água / exaustão** para fora da porta **EXTRACT**. Quanto a turbina pode usar depende das suas hélices — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md).

## GUI — botões e dicas de ferramenta

A porta da turbina usa o mesmo layout de tela da porta do reator, mas **sem a fileira Sólido** e **sem o filtro Combustível/Refrigerante**. Passe o mouse sobre cada controle no jogo — o texto abaixo corresponde às dicas padrão.

### Modo (botão do topo — clique para alternar)

| Rótulo | Dica de ferramenta |
|-------|---------|
| **Inserir** | Puxa vapor (e outros fluidos permitidos) para dentro da turbina. |
| **Extrair** | Empurra água ou fluido de exaustão para os tubos. |
| **Ejetar** | Ejeta o fluido armazenado do tanque da porta para fora. |

### Chaves de meio (clique para habilitar — sublinhadas quando ativas)

| Botão | Dica de ferramenta |
|--------|---------|
| **Líquido** | Clique para permitir ou bloquear fluidos por esta porta. |
| **Gas** | Clique para permitir ou bloquear gases do Mekanism por esta porta. |

### Tanques e despejo

| Controle | Dica de ferramenta |
|---------|---------|
| **Tanque de líquido** (barra ao passar o mouse) | Líquido: quantidade / capacidade em mB, mais o nome do fluido |
| **Tanque de gás** (barra ao passar o mouse, Mekanism) | Gás: quantidade / capacidade em mB, mais o nome do gás |
| **D** sob o tanque de líquido | Despejar: esvazia o tanque interno de fluido (o fluido é descartado) |
| **D** sob o tanque de gás | Despejar: esvazia o tanque de gás (o gás é descartado) |

Tubos e tanques conectam do lado de **fora**; a face **interna** precisa apontar para dentro da turbina.

Depois de mudar modos, **Reinicie** o [Controlador da Turbina](turbine_controller.md).

## Escalonamento automático de capacidade

Quando a turbina **revalida**, o tanque de fluido da porta redimensiona a partir de **mB/t de vapor estimado × 10**, com piso de **16.000 mB** e **sem limite superior fixo**. A capacidade cresce imediatamente quando a demanda aumenta e encolhe só se o vapor armazenado ainda couber no tamanho menor.
