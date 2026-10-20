---
navigation:
  parent: turbine/turbine-index.md
  title: Começando
  icon: getting_started
  position: 5
item_ids:
  - colossal_reactors:turbine_casing
  - colossal_reactors:turbine_glass
  - colossal_reactors:turbine_rod
  - colossal_reactors:turbine_rod_controller
  - colossal_reactors:turbine_blade
  - colossal_reactors:turbine_power_port
  - colossal_reactors:turbine_resource_port
  - colossal_reactors:turbine_builder
categories:
  - Multibloco
---

# Começando — sua primeira turbina

Construa uma carcaça de turbina fechada com um rotor e bobinas dentro, depois escolha uma das duas configurações abaixo. Gire a cena para inspecionar cada face.

## Layout da carcaça

- **Piso e teto**: **Revestimento da Turbina** (moldura fechada).
- **Cantos verticais**: pilares de **Revestimento da Turbina** nas quatro bordas (y=1…5).
- **Paredes oeste, leste e sul**: painel de **Vidro da Turbina 5×5** em cada face.
- **Parede divisória** na **altura do controlador de barras** (y=3 no exemplo): anel de **Revestimento da Turbina** por dentro e **faixa de revestimento** nas paredes laterais — essa fileira **corta através** do vidro 5×5 naquelas três faces.
- **Face do controlador** (norte no exemplo): o **Controlador da Turbina** protrai para fora como um **bloco único**; as células restantes naquela face usam **Vidro da Turbina** onde nenhuma porta é colocada. **Portas substituem vidro** naquela parede — mesmo layout do [exemplo do reator](../multiblock/getting_started.md).
- **Zona de bobinas** (acima da divisória): **duas camadas** no topo do interior (y=4–5 no exemplo) — **blocos de cobre** diretamente sob o revestimento do teto.
- **Zona do rotor** (abaixo da divisória): **dois segmentos de barra** (y=1–2) — **quatro hélices** no anel inferior, **oito hélices** em dois anéis no segmento superior; o **Controlador de Barras da Turbina** fica na camada da divisória (y=3).

O [Construtor da Turbina](turbine_builder.md) coloca a carcaça, o rotor e as bobinas — **não** o controlador nem as portas.

## Bobinas

A **zona de bobinas** é o **interior superior** acima da parede divisória (sob o teto). Ela precisa ser preenchida com **blocos de armazenamento de metal** que o mod reconhece — cobre, ouro, netherita, electrum, e assim por diante.

| | Detalhe |
|---|---|
| **Papel** | Multiplica o **RF** do vapor (`coil strength` na fórmula de RF abaixo) |
| **Onde** | Camadas internas **acima** da divisória — não o espaço do rotor / das hélices |
| **O que usar** | **Blocos de armazenamento** normais (p.ex. bloco de cobre). Confira o **JEI** para força e tetos |
| **O que não usar** | Blocos de **bobina de aquecimento** do reator — esses são uma peça de máquina diferente |
| **Células vazias** | Ainda validam como bobina fraca (~**30%** de força por padrão) |
| **Camadas** | O exemplo usa **duas**; o [Construtor da Turbina](turbine_builder.md) pode definir quantas |

Misturar metais não tem problema — a turbina usa a força **média** da zona inteira. Números completos: [Vapor, RF e bobinas](turbine_generation_and_coils.md).

## Exemplo completo

<GameScene zoom="4" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_turbine.snbt" />
  <IsometricCamera yaw="225" pitch="28" />
</GameScene>

| Face norte (parede do controlador) | Bloco |
|------------------------------|-------|
| Centro externo (protraindo sozinho) | [Controlador da Turbina](turbine_controller.md) |
| Inferior esquerdo / inferior direito (espalhadas) | Porta de Recursos da Turbina ×2 |
| Coluna central, um bloco abaixo do controlador | Porta de Energia da Turbina |
| Paredes oeste / leste / sul | Vidro **5×5** (dividido pela divisória na altura do controlador de barras) |

Como no exemplo do reator: **duas portas de recursos + uma porta de energia** na face do controlador (mesmas posições da cena do reator).

## Eficiência — o que afeta a saída de RF

Quando a turbina está **formada corretamente** e **rodando**, o RF por tique segue:

**RF/t** ≈ vapor usado × **RF por mB** × **força da bobina** × **bônus de layout de hélices**

Veja [Vapor, RF e bobinas](turbine_generation_and_coils.md) para a análise completa. Em resumo:

- **Suprimento de vapor** — limitado pela contagem de hélices e pelo layout; mais anéis balanceados → mais vapor/tique.
- **Blocos de bobina** — blocos de armazenamento de metal nas **duas camadas internas superiores** (cobre, ouro, netherita, …). Células de bobina vazias contam como fracas (~30% de força); confira o JEI para os valores dos blocos.
- **Bônus de altura das hélices** — anéis que ficam mais altos em direção à divisória ganham **+3%** por camada ascendente com mais hélices; anéis que encolhem perdem **−3%**. Layouts **Eficiente** vs **Produtivo** importam — veja [Barras e hélices](turbine_rod_and_blades.md).
- **Formação válida** — carcaça, bobinas, controlador de barras e portas precisam todos validar antes de a geração rodar.

## Configuração 1: Energia simples (vapor independente)

Use quando o **vapor já existe** (tanques, outro mod, criativo) e você só precisa de **RF da turbina**.

1. Construa a carcaça, o rotor (barras + hélices), as bobinas e o **controlador de barras** — ou use o [Construtor da Turbina](turbine_builder.md).
2. Coloque o **controlador + três portas** numa face como no exemplo (controlador **para fora**, portas **espalhadas** na mesma face).
3. Configure **duas portas de recursos**: **Inserir** (vapor entra) e **Extrair** (água / fluido gasto sai). Encane ambas pelo lado de **fora**.
4. Conecte a **porta de energia externa** a um aceitador de energia.
5. Abra o controlador → **válido** → **ON**; confira o **RF/t** e o uso de vapor.

| Porta (posições de exemplo) | Modo | Papel |
|------|------|------|
| Inferior esquerdo na face do controlador | Porta de Recursos — **Inserir** | Vapor **entra** |
| Inferior direito na face do controlador | Porta de Recursos — **Extrair** | Água / exaustão **sai** |
| Coluna central, um bloco abaixo do controlador | Porta de Energia | RF **sai** |

Configure as **duas portas de recursos** nas suas GUIs — passe o mouse sobre cada botão para as dicas ([lista completa](turbine_resource_port.md)). **Reinicie** depois de mudar modos de porta ou o layout do rotor.

## Configuração 2: Cadeia de refrigerante (vapor do reator)

Use isto com [Reator — Começando — Configuração 2 (Refrigerante)](../multiblock/getting_started.md): o reator de fissão faz **vapor**, a turbina o transforma em **mais RF**.

1. Construa a turbina como na Configuração 1 (carcaça, rotor, bobinas, controlador, portas numa **única** face).
2. No reator, rode a **Configuração 2**: refrigerante no controlador, **Inserir** de refrigerante + **Extrair** de vapor/fluido gasto na **mesma face do controlador do reator**.
3. Encane o **vapor** da porta **Extrair** do reator → porta de recursos **Inserir** da turbina. Encane a **água** da porta de recursos **EXTRACT** da turbina para tanques ou de volta ao circuito de refrigerante do reator.
4. Tire o **RF** da **porta de energia** da turbina (a porta de energia do reator é RF de reserva opcional).

Case o tamanho da turbina e as hélices com a saída de vapor do reator — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md). Se o vapor acumular, adicione capacidade, uma turbina maior ou mais hélices.

## Lista de verificação

1. Carcaça fechada: piso/teto de revestimento, pilares de canto, **vidro 5×5** em três paredes (divisória em **y=3** corta uma fileira); a face do controlador usa **vidro + portas**.
2. **Rotor** válido abaixo da divisória: **dois blocos de barra** (y=1–2), **4 hélices** no anel inferior, **8 hélices** (dois anéis) no segmento superior + **duas camadas de bobina** no topo (y=4–5, p.ex. blocos de cobre).
3. **Um [Controlador da Turbina](turbine_controller.md)** numa face lateral, sozinho do lado de **fora** da caixa.
4. **Duas portas de recursos + uma porta de energia** na face do controlador (quaisquer posições naquela face).
5. Escolha a **Configuração 1** (qualquer fonte de vapor) ou a **Configuração 2** (circuito de refrigerante do reator).
6. A **Porta de Redstone** é opcional.

## Construtor da Turbina (opcional)

1. O construtor coloca apenas **carcaça + rotor + bobinas**.
2. **Pare** a construção, depois adicione o controlador (do lado de fora) e as portas numa **única** face como na cena.
3. Valide pelo controlador.

## A turbina não roda?

| Sintoma | Causa provável |
|---------|----------------|
| Estado **Invalid** | Corrija carcaça, barras, hélices, bobinas ou controlador de barras (leia a linha de estado). |
| **ON** mas 0 RF/t | Sem suprimento de vapor, sem porta de energia, ou sem aceitador de energia. |
| RF baixo vs. vapor entrando | Poucas hélices/bobinas para a taxa de vapor — veja [Barras e hélices](turbine_rod_and_blades.md). |
| Sem uso de vapor | Porta de recursos não está em **Inserir**, ou tubo conectado no lado errado. |
| Água acumulando | Faltando a porta de recursos **Extrair** ou sem tanque/tubo do lado de fora. |

## Veja também

- [Construtor da Turbina](turbine_builder.md)
- [Controlador da Turbina](turbine_controller.md)
- [Porta de Recursos da Turbina](turbine_resource_port.md)
- [Portas de Energia da Turbina](turbine_power_ports.md)
- [Reator — Começando — Configuração de refrigerante](../multiblock/getting_started.md)
- [Vapor, RF e bobinas](turbine_generation_and_coils.md)
