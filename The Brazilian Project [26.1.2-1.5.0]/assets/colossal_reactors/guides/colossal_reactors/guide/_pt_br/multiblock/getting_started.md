---
navigation:
  parent: multiblock/multiblock-index.md
  title: Primeiros passos
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
  - multiblock
---

# Primeiros passos — seu primeiro reator

Construa uma casca fechada de reator e escolha uma das duas configurações abaixo. Gire a cena para inspecionar cada face.

## Layout da casca

- **Piso e teto**: **Revestimento do Reator** (moldura fechada).
- **Cantos verticais**: pilares de **Revestimento do Reator** nas quatro bordas (y=1…5).
- **Paredes oeste, leste e sul**: painel de **Vidro do Reator 5×5** em cada face (cinco fileiras × cinco colunas entre os pilares de canto).
- **Face do controlador** (norte no exemplo): o **Controlador do Reator** se projeta para fora como um **bloco único**; as células restantes dessa face usam **Vidro do Reator** onde não há porta. **As portas substituem vidro** nessa parede — mesma lógica das outras faces, não uma moldura aberta.
- **Portas**: na **mesma parede do controlador** — podem ficar **em qualquer lugar** dessa face (o exemplo as espalha longe do controlador de propósito).

O [Construtor do Reator](reactor_builder.md) coloca revestimento, vidro (se estiver no buffer), barras e dissipadores de calor — **não** o controlador nem as portas.

## Dissipadores de calor vs refrigerante

São **dois sistemas diferentes**:

| | **Dissipadores de calor** (passivos) | **Refrigerante** (ativo) |
|---|---|---|
| **O que é** | Blocos ou preenchimento de líquido **estacionário** **dentro** da casca, junto às barras | **Fluido** de trabalho no buffer do controlador / no circuito das portas de recursos |
| **Como se coloca** | Construtor / à mão no interior (incluindo "dissipadores de fluido") | Espaço de refrigerante do controlador, ou portas **INSERIR/EXTRAIR** na Configuração 2 |
| **Consumido ao operar?** | **Não** | **Sim** (e pode produzir vapor / exaustão) |
| **Necessário para RF?** | Opcional (altera RF e uso de combustível) | **Não** na Configuração 1 — deixe o buffer de refrigerante **vazio** |

Dissipadores de fluido colocados como blocos interiores **não** são o mesmo que bombear água para o circuito de refrigerante. Detalhes: [Estrutura do reator](reactor_structure.md).

## Exemplo completo

<GameScene zoom="4" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="225" pitch="28" />
</GameScene>

| Face norte (parede do controlador) | Bloco |
|------------------------------|-------|
| Centro externo (projetando sozinho) | [Controlador do Reator](reactor_controller.md) |
| Inferior-esquerda / inferior-direita (espalhadas) | Porta de Recursos ×2 |
| Coluna central, um bloco abaixo do controlador | Porta de Energia |
| Paredes oeste / leste / sul | Painéis de vidro **5×5** |

As portas **não** estão presas ao bloco do controlador — qualquer célula na face do controlador funciona. A cena as coloca **separadas** para você ver isso.

## Configuração 1: Energia simples (só RF)

Use quando você **não** quer um circuito de fluido: combustível entra, resíduo sai, RF sai.

1. Construa a casca fechada e coloque o **controlador** numa face lateral, projetando para fora.
2. Na **mesma face**, substitua vidro por **uma porta de energia** (obrigatória para tirar RF) e **até duas portas de recursos** se quiser automação.
3. Nas **portas de recursos**, configure:
   - **INSERIR** — filtro **Combustível** (sólido)
   - **EXTRAIR** — filtro **Resíduo**
4. Ligue a **porta de energia** do lado de fora a um aceitador de energia (cabos, célula, máquina).
5. Abra o controlador → válido → **LIGUE**; carregue o combustível.

| Porta (posições de exemplo) | Modo | Filtro |
|------|------|--------|
| Inferior-esquerda na face do controlador | **INSERIR** | **Só combustível** |
| Inferior-direita na face do controlador | **EXTRAIR** | **Tudo** ou só sólido |
| Coluna central, um bloco abaixo do controlador | Porta de Energia | — (RF sai) |

**Automação opcional** (mostrada no exemplo): duas **portas de recursos** na **mesma face** — configure na GUI de cada porta (**Inserir** / **Extrair**, filtro, alternâncias de meio). Veja as [dicas da GUI da Porta de Recursos](resource_port.md) para cada botão. **Reinicie** depois de mudar os modos das portas.

O modo manual também funciona: pule as portas de recursos e carregue o combustível à mão no controlador.

## Configuração 2: Refrigerante (vapor para uma turbina)

Use quando água (ou outro refrigerante) deve produzir **vapor** para uma [turbina](../turbine/getting_started.md) em vez de (ou além de) RF direta do reator.

1. Construa a mesma casca e coloque o **controlador + porta de energia** numa face (a porta de energia continua útil para qualquer RF que o reator mantiver).
2. No controlador, defina o **fluido refrigerante** (normalmente **água** / modo vapor).
3. Na **mesma face**, adicione **mais duas portas de recursos** (substituindo células de **vidro**):
   - **INSERIR** — **Só refrigerante** (ou **Ambos**) — tubo de refrigerante **entrando**
   - **EXTRAIR** — **Só refrigerante** — tubo de **vapor / fluido usado** **saindo**
4. Mantenha as portas **INSERIR combustível** e **EXTRAIR resíduo** da Configuração 1, ou manuseie combustível/resíduo manualmente.
5. Leve o **vapor** da porta **EXTRAIR** do reator até uma [porta de recursos da turbina](../turbine/getting_started.md) (**INSERIR**). Tire a **RF** pela **porta de energia** da turbina.

Com conversão suficiente, a **RF/t do reator pode cair** enquanto o **vapor** sobe — isso é normal. Dimensione a turbina e forneça vapor suficiente; veja [Primeiros passos da Turbina](../turbine/getting_started.md).

**Reinicie** o controlador do reator depois de mudar refrigerante, filtros ou modos das portas.

## Checklist

1. Casca fechada: piso/teto de revestimento, pilares de canto, **vidro 5×5** em três paredes; a face do controlador usa **vidro + portas** (controlador fora, sozinho).
2. **Um [Controlador do Reator](reactor_controller.md)** numa face lateral, **sozinho** fora da casca.
3. **Porta de energia** (+ portas de recursos opcionais) na **mesma** face.
4. Escolha **Configuração 1** (refrigerante vazio) ou **Configuração 2** (circuito de refrigerante + turbina).
5. A **Porta de Redstone** é opcional.

## Construtor do Reator (opcional)

1. O construtor coloca apenas o **interior + casca**.
2. **Pare** a construção, depois adicione o controlador (fora) e as portas numa **única** face como na cena.
3. Valide pelo controlador.

## O reator não liga?

| Sintoma | Causa provável |
|---------|----------------|
| Status **Inválido** | Corrija casca, barras ou controladores de barras (leia a linha de status). |
| **LIGADO** mas 0 RF/t | Sem porta de energia ou sem aceitador de energia; ou modo refrigerante sem caminho de suprimento/extração. |
| Travado **DESLIGADO** + porta de redstone | Redstone / modo na porta. |
| Sem saída de resíduo | Falta porta de recursos **EXTRAIR** ou filtro errado. |
| Sem vapor para a turbina | Refrigerante não definido, INSERIR sem suprimento, ou falta porta **EXTRAIR** de refrigerante. |

## Veja também

- [Construtor do Reator](reactor_builder.md)
- [Controlador do Reator](reactor_controller.md)
- [Porta de Recursos do Reator](resource_port.md)
- [Portas de Energia do Reator](power_ports.md)
- [Primeiros passos da Turbina](../turbine/getting_started.md)
- [Estrutura do reator](reactor_structure.md)
