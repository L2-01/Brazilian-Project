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

Construa uma carcaça de reator fechada e depois escolha uma das duas configurações abaixo. Gire a cena para inspecionar cada face.

## Disposição da carcaça

- **Piso e teto**: **Revestimento do Reator** (moldura fechada).
- **Cantos verticais**: pilares de **Revestimento do Reator** nas quatro bordas (y=1…5).
- **Paredes oeste, leste e sul**: painel de **Vidro do Reator 5×5** em cada face (cinco fileiras × cinco colunas entre os pilares dos cantos).
- **Face do controlador** (norte no exemplo): o **Controlador do Reator** se projeta para fora como um **bloco único**; as demais células dessa face usam **Vidro do Reator** onde não houver porta. **As portas substituem o vidro** nessa parede — mesma ideia das outras faces, não é uma moldura aberta.
- **Portas**: na **mesma parede do controlador** — elas podem ficar em **qualquer** célula dessa face (o exemplo as distribui longe do controlador de propósito).

O [Construtor do Reator](reactor_builder.md) coloca o revestimento, o vidro (se estiver no buffer), as barras e os dissipadores de calor — **não** o controlador nem as portas.

## Exemplo completo

<GameScene zoom="4" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_reactor_automation.snbt" />
  <IsometricCamera yaw="225" pitch="28" />
</GameScene>

| Face norte (parede do controlador) | Bloco |
|------------------------------|-------|
| Centro externo (projetado sozinho) | [Controlador do Reator](reactor_controller.md) |
| Inferior esquerdo / inferior direito (distribuídas) | Porta de Recursos ×2 |
| Coluna central, um bloco abaixo do controlador | Porta de Energia |
| Paredes oeste / leste / sul | Painéis de vidro **5×5** |

As portas **não** estão presas ao bloco do controlador — qualquer célula da face do controlador funciona. A cena as coloca **separadas** para que você veja isso.

## Configuração 1: Energia simples (apenas RF)

Use esta opção quando você só quer **RF do reator** — sem linha de vapor, sem turbina.

1. Construa a carcaça e o interior (barras + controlador de barras no topo).
2. Coloque o **controlador + porta de energia** em uma face como no exemplo (controlador **do lado de fora**, porta de energia substituindo **vidro**).
3. Deixe o **buffer de refrigerante do controlador vazio** — nenhum refrigerante fluido é necessário.
4. Adicione combustível (GUI do controlador ou funil/tubo), abra o controlador → **válido** → **LIGAR**.
5. Conecte a **parte externa da porta de energia** a um aceitador de energia; verifique **RF/t** &gt; 0.

**Automação opcional** (mostrada no exemplo): duas **portas de recursos** na **mesma face** — configure na GUI de cada porta (**Inserir** / **Extrair**, filtro, alternâncias de meio). Veja as [dicas da GUI da Porta de Recursos](resource_port.md) para cada botão. **Reinicie** após mudar os modos das portas.

| Porta (posições do exemplo) | Modo | Filtro |
|------|------|--------|
| Inferior esquerdo na face do controlador | **INSERIR** | **Apenas combustível** |
| Inferior direito na face do controlador | **EXTRAIR** | **Tudo** ou apenas sólidos |
| Coluna central, um bloco abaixo do controlador | Porta de Energia | — (saída de RF) |

Jogar manualmente também funciona: pule as portas de recursos e carregue o combustível à mão no controlador.

## Configuração 2: Refrigerante (vapor para uma turbina)

Use esta opção quando a água (ou outro refrigerante) deve produzir **vapor** para uma [turbina](../turbine/getting_started.md) em vez de (ou além de) RF direto do reator.

1. Construa a mesma carcaça e coloque o **controlador + porta de energia** em uma face (a porta de energia ainda é útil para qualquer RF que o reator mantenha).
2. No controlador, defina o **fluido refrigerante** (tipicamente **água** / modo de vapor).
3. Na **mesma face**, adicione **mais duas portas de recursos** (substituindo células de **vidro**):
   - **INSERIR** — **Apenas refrigerante** (ou **Tudo**) — injete refrigerante para **dentro**
   - **EXTRAIR** — **Apenas refrigerante** — extraia **vapor / fluido gasto** para **fora**
4. Mantenha a porta de **INSERÇÃO de combustível** e de **EXTRAÇÃO de resíduos** da Configuração 1, ou gerencie combustível/resíduos manualmente.
5. Encane o **vapor** da porta de **EXTRAÇÃO** do reator para uma [porta de recursos da turbina](../turbine/getting_started.md) (**INSERIR**). Retire o **RF** da **porta de energia** da turbina.

Com conversão suficiente, o **RF/t do reator pode cair** enquanto o **vapor** sobe — isso é normal. Dimensione a turbina e encane vapor suficiente; veja [Primeiros passos da Turbina](../turbine/getting_started.md).

**Reinicie** o controlador do reator após mudar o refrigerante, os filtros ou os modos das portas.

## Lista de verificação

1. Carcaça fechada: piso/teto de revestimento, pilares nos cantos, **vidro 5×5** em três paredes; a face do controlador usa **vidro + portas** (controlador sozinho do lado de fora).
2. **Um [Controlador do Reator](reactor_controller.md)** numa face lateral, **sozinho** fora da carcaça.
3. **Porta de energia** (+ portas de recursos opcionais) na **mesma** face.
4. Escolha a **Configuração 1** (sem refrigerante) ou a **Configuração 2** (loop de refrigerante + turbina).
5. A **Porta de Redstone** é opcional.

## Construtor do Reator (opcional)

1. O construtor coloca apenas o **interior + a carcaça**.
2. **Pare** a construção e depois adicione o controlador (do lado de fora) e as portas em **uma** face como na cena.
3. Valide a partir do controlador.

## O reator não liga?

| Sintoma | Causa provável |
|---------|----------------|
| Estado **Inválido** | Corrija a carcaça, as barras ou os controladores de barras (leia a linha de estado). |
| **LIGADO** mas 0 RF/t | Sem porta de energia ou sem aceitador de energia; ou modo refrigerante sem caminho de entrada/saída. |
| Travado em **DESLIGADO** + porta de redstone | Redstone / modo na porta. |
| Sem saída de resíduos | Faltando porta de recursos de **EXTRAÇÃO** ou filtro errado. |
| Sem vapor para a turbina | Refrigerante não definido, INSERÇÃO sem suprimento ou porta de **EXTRAÇÃO** de refrigerante faltando. |

## Veja também

- [Construtor do Reator](reactor_builder.md)
- [Controlador do Reator](reactor_controller.md)
- [Porta de Recursos do Reator](resource_port.md)
- [Portas de Energia do Reator](power_ports.md)
- [Primeiros passos da Turbina](../turbine/getting_started.md)
- [Estrutura do Reator](reactor_structure.md)
