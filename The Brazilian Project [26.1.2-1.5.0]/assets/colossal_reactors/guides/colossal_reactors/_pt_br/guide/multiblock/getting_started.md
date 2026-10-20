---
navigation:
  parent: multiblock/multiblock-index.md
  title: Começando
  icon: getting_started
  position: 5
item_ids:
  - colossal_reactors:reactor_casing
  - colossal_reactors:reactor_glass
  - colossal_reactors:reactor_rod
  - colossal_reactors:rod_controller
  - colossal_reactors:power_port
  - colossal_reactors:resource_port
  - colossal_reactors:reactor_builder
categories:
  - Multibloco
---

# Começando — seu primeiro reator

Construa uma carcaça de reator fechada, depois escolha uma das duas configurações abaixo. Gire a cena para inspecionar cada face.

## Layout da carcaça

- **Piso e teto**: **Revestimento do Reator** (moldura fechada).
- **Cantos verticais**: pilares de **Revestimento do Reator** nas quatro bordas (y=1…5).
- **Paredes oeste, leste e sul**: painel de **Vidro do Reator 5×5** em cada face (cinco fileiras × cinco colunas entre os pilares de canto).
- **Face do controlador** (norte no exemplo): o **Controlador do Reator** sobressai para fora como um **único bloco**; as células restantes naquela face usam **Vidro do Reator** onde nenhuma porta é colocada. **Portas substituem vidro** naquela parede — mesma ideia das outras faces, não uma moldura aberta nua.
- **Portas**: na **mesma parede do controlador** — elas podem ficar **em qualquer lugar** daquela face (o exemplo as espalha para longe do controlador de propósito).

O [Construtor do Reator](reactor_builder.md) coloca revestimento, vidro (se estiver no buffer), barras e dissipadores de calor — **não** o controlador nem as portas.

## Dissipadores de calor vs. refrigerante

São **dois sistemas diferentes**:

| | **Dissipadores de calor** (passivo) | **Refrigerante** (ativo) |
|---|---|---|
| **O quê** | Blocos ou preenchimento de líquido **parado** **dentro** da carcaça ao lado das barras | **Fluido** de trabalho no buffer do controlador / circuito da porta de recursos |
| **Como você o coloca** | Construtor / à mão no interior (incluindo "dissipadores de calor fluidos") | Espaço de refrigerante do controlador, ou portas **INSERT/EXTRACT** na Configuração 2 |
| **Consumido enquanto roda?** | **Não** | **Sim** (e pode produzir vapor / exaustão) |
| **Necessário para RF?** | Opcional (muda o RF e o uso de combustível) | **Não** para a Configuração 1 — deixe o buffer de refrigerante **vazio** |

Dissipadores de calor fluidos colocados como blocos internos **não** são a mesma coisa que encanar água para o circuito de refrigerante. Detalhes: [Estrutura do reator](reactor_structure.md).

## Exemplo completo

<GameScene zoom="4" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="225" pitch="28" />
</GameScene>

| Face norte (parede do controlador) | Bloco |
|------------------------------|-------|
| Centro externo (sobressaindo sozinho) | [Controlador do Reator](reactor_controller.md) |
| Inferior esquerdo / inferior direito (espalhados) | Porta de Recursos ×2 |
| Coluna central, um bloco abaixo do controlador | Porta de Energia |
| Paredes oeste / leste / sul | Painéis de vidro **5×5** |

As portas **não** são amarradas ao bloco do controlador — qualquer célula na face do controlador funciona. A cena as coloca **separadas** para você ver isso.

## Configuração 1: Energia simples (só RF)

Use esta quando você só quiser **RF do reator** — sem linha de vapor, sem turbina necessária.

1. Construa a carcaça e os internos (barras + controlador de barras em cima).
2. Coloque **controlador + porta de energia** numa face como no exemplo (controlador **do lado de fora**, porta de energia substitui **vidro**).
3. Deixe o **buffer de refrigerante** do controlador **vazio** — nenhum fluido refrigerante é necessário.
4. Adicione combustível (GUI do controlador ou funil/tubo), abra o controlador → **válido** → **ON**.
5. Conecte a **porta de energia externa** a um aceitador de energia; confira **RF/t** &gt; 0.

**Automação opcional** (mostrada no exemplo): duas **portas de recursos** na **mesma face** — configure na GUI de cada porta (**Inserir** / **Extrair**, filtro, chaves de meio). Veja [Dicas de ferramenta da GUI da Porta de Recursos](resource_port.md) para cada botão. **Reinicie** depois de mudar os modos das portas.

| Porta (posições do exemplo) | Modo | Filtro |
|------|------|--------|
| Inferior esquerdo na face do controlador | **Inserir** | **Só combustível** |
| Inferior direito na face do controlador | **Extrair** | **Ambos** ou só sólidos |
| Coluna central, um bloco abaixo do controlador | Porta de Energia | — (RF para fora) |

Jogar manualmente também funciona: pule as portas de recursos e carregue combustível à mão no controlador.

## Configuração 2: Refrigerante (vapor para uma turbina)

Use esta quando água (ou outro refrigerante) deve produzir **vapor** para uma [turbina](../turbine/getting_started.md) em vez de (ou além de) RF direto do reator.

1. Construa a mesma carcaça e coloque **controlador + porta de energia** numa face (a porta de energia ainda é útil para qualquer RF que o reator mantenha).
2. No controlador, defina o **fluido refrigerante** (tipicamente modo **água** / vapor).
3. Na **mesma face**, adicione **duas portas de recursos a mais** (substituindo células de **vidro**):
   - **Inserir** — **Só refrigerante** (ou **Ambos**) — encane o refrigerante **para dentro**
   - **Extrair** — **Só refrigerante** — encane o **vapor / fluido gasto** **para fora**
4. Mantenha as portas de **Inserir** de combustível e **Extrair** de resíduo da Configuração 1, ou cuide de combustível/resíduo manualmente.
5. Encane o **vapor** da porta **Extrair** do reator para uma [porta de recursos da turbina](../turbine/getting_started.md) (**Inserir**). Pegue **RF** da **porta de energia** da turbina.

Com conversão suficiente, o **RF/t do reator pode cair** enquanto o **vapor** sobe — isso é normal. Dimensione a turbina e encane vapor suficiente; veja [Turbina — Começando](../turbine/getting_started.md).

**Reinicie** o controlador do reator depois de mudar refrigerante, filtros ou modos de porta.

## Checklist

1. Carcaça fechada: piso/teto de revestimento, pilares de canto, **vidro 5×5** em três paredes; a face do controlador usa **vidro + portas** (controlador sozinho do lado de fora).
2. **Um [Controlador do Reator](reactor_controller.md)** numa face lateral, **sozinho** fora da carcaça.
3. **Porta de energia** (+ portas de recursos opcionais) na **mesma** face.
4. Escolha a **Configuração 1** (refrigerante vazio) ou a **Configuração 2** (circuito de refrigerante + turbina).
5. A **Porta de Redstone** é opcional.

## Construtor do Reator (opcional)

1. O Construtor coloca **internos + carcaça** apenas.
2. **Pare** a construção, depois adicione o controlador (do lado de fora) e as portas em **uma** face como na cena.
3. Valide a partir do controlador.

## O reator não liga?

| Sintoma | Causa provável |
|---------|----------------|
| Estado **Inválido** | Conserte carcaça, barras ou controladores de barras (leia a linha de estado). |
| **ON** mas 0 RF/t | Sem porta de energia ou sem aceitador de energia; ou modo refrigerante sem caminho de fornecimento/extração. |
| Travado em **OFF** + porta de redstone | Redstone / modo na porta. |
| Sem saída de resíduo | Porta de recursos **Extrair** faltando ou filtro errado. |
| Sem vapor para a turbina | Refrigerante não definido, INSERT faminto, ou porta **Extrair** de refrigerante faltando. |

## Veja também

- [Construtor do Reator](reactor_builder.md)
- [Controlador do Reator](reactor_controller.md)
- [Porta de Recursos do Reator](resource_port.md)
- [Portas de Energia do Reator](power_ports.md)
- [Turbina — Começando](../turbine/getting_started.md)
- [Estrutura do reator](reactor_structure.md)
