---
navigation:
  parent: turbine/turbine-index.md
  title: Primeiros passos
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
  - multiblock
---

# Primeiros passos — sua primeira turbina

Construa uma carcaça de turbina fechada com um rotor e bobinas dentro, depois escolha uma das duas configurações abaixo. Gire a cena para inspecionar cada face.

## Disposição da carcaça

- **Piso e teto**: **Revestimento da Turbina** (moldura fechada).
- **Cantos verticais**: pilares de **Revestimento da Turbina** nas quatro bordas (y=1…5).
- **Paredes oeste, leste e sul**: painel de **Vidro da Turbina 5×5** em cada face.
- **Parede divisória** na **altura do controlador de barras** (y=3 no exemplo): anel de **Revestimento da Turbina** por dentro e **faixa de revestimento** nas paredes laterais — essa fileira **corta** o vidro 5×5 nessas três faces.
- **Face do controlador** (norte no exemplo): o **Controlador da Turbina** se projeta para fora como um **bloco único**; as demais células dessa face usam **Vidro da Turbina** onde não houver porta. **As portas substituem o vidro** nessa parede — mesma disposição do [exemplo do reator](../multiblock/getting_started.md).
- **Zona das bobinas** (acima da divisória): **duas camadas** no topo do interior (y=4–5 no exemplo) — **blocos de cobre** diretamente sob o revestimento do teto.
- **Zona do rotor** (abaixo da divisória): **dois segmentos de barra** (y=1–2) — **quatro hélices** no anel inferior, **oito hélices** em dois anéis no segmento superior; o **Controlador da Barra da Turbina** fica na camada da divisória (y=3).

O [Construtor da Turbina](turbine_builder.md) coloca a carcaça, o rotor e as bobinas — **não** o controlador nem as portas.

## Exemplo completo

<GameScene zoom="4" interactive={true} background="transparent">
  <ImportStructure src="/assets/assemblies/minimal_turbine.snbt" />
  <IsometricCamera yaw="225" pitch="28" />
</GameScene>

| Face norte (parede do controlador) | Bloco |
|------------------------------|-------|
| Centro externo (projetado sozinho) | [Controlador da Turbina](turbine_controller.md) |
| Inferior esquerdo / inferior direito (distribuídas) | Porta de Recursos da Turbina ×2 |
| Coluna central, um bloco abaixo do controlador | Porta de Energia da Turbina |
| Paredes oeste / leste / sul | Vidro **5×5** (dividido pela divisória na altura do controlador de barras) |

Como no exemplo do reator: **duas portas de recursos + uma porta de energia** na face do controlador (mesmas posições da cena do reator).

## Eficiência — o que afeta a saída de RF

Quando a turbina está **formada corretamente** e **funcionando**, o RF por tique segue:

**RF/t** ≈ vapor usado × **RF por mB** × **força das bobinas** × **bônus da disposição das hélices**

Veja [Vapor, RF e bobinas](turbine_generation_and_coils.md) para a explicação completa. Resumindo:

- **Suprimento de vapor** — limitado pela contagem e disposição das hélices; anéis mais equilibrados → mais vapor/tique.
- **Blocos de bobina** — blocos de armazenamento de metal nas **duas camadas superiores do interior** (cobre, ouro, netherita, …). Células de bobina vazias contam como fracas (~30% de força); confira os valores dos blocos no JEI.
- **Bônus de altura das hélices** — anéis que crescem em direção à divisória ganham **+3%** por camada ascendente com mais hélices; anéis que diminuem perdem **−3%**. Disposições **Eficiente** vs **Produtiva** importam — veja [Barras e hélices](turbine_rod_and_blades.md).
- **Formação válida** — carcaça, bobinas, controlador de barras e portas precisam validar antes de a geração funcionar.

## Configuração 1: Energia simples (vapor independente)

Use esta opção quando **o vapor já existir** (tanques, outro mod, criativo) e você só precisar de **RF da turbina**.

1. Construa a carcaça, o rotor (barras + hélices), as bobinas e o **controlador de barras** — ou use o [Construtor da Turbina](turbine_builder.md).
2. Coloque o **controlador + três portas** em uma face como no exemplo (controlador **do lado de fora**, portas **distribuídas** na mesma face).
3. Configure **duas portas de recursos**: **INSERIR** (entrada de vapor) e **EXTRAIR** (saída de água / fluido gasto). Encane as duas pelo **lado de fora**.
4. Conecte a **parte externa da porta de energia** a um aceitador de energia.
5. Abra o controlador → **válido** → **LIGAR**; verifique o **RF/t** e o uso de vapor.

| Porta (posições do exemplo) | Modo | Função |
|------|------|------|
| Inferior esquerdo na face do controlador | Porta de Recursos — **INSERIR** | Entrada de **vapor** |
| Inferior direito na face do controlador | Porta de Recursos — **EXTRAIR** | Saída de **água / exaustão** |
| Coluna central, um bloco abaixo do controlador | Porta de Energia | Saída de **RF** |

Configure as **duas portas de recursos** nas GUIs delas — passe o cursor sobre cada botão para ver as dicas ([lista completa](turbine_resource_port.md)). **Reinicie** após mudar os modos das portas ou a disposição do rotor.

## Configuração 2: Cadeia de refrigerante (vapor do reator)

Use esta opção com [Primeiros passos do Reator — Configuração 2 (Refrigerante)](../multiblock/getting_started.md): o reator de fissão produz **vapor** e a turbina o transforma em **mais RF**.

1. Construa a turbina como na Configuração 1 (carcaça, rotor, bobinas, controlador, portas em **uma** face).
2. No reator, execute a **Configuração 2**: refrigerante no controlador, **INSERIR** refrigerante + **EXTRAIR** vapor/fluido gasto na **mesma face do controlador do reator**.
3. Encane o **vapor** da porta de **EXTRAÇÃO** do reator → porta de recursos de **INSERÇÃO** da turbina. Encane a **água** da porta de recursos de **EXTRAÇÃO** da turbina para tanques ou de volta ao loop de refrigerante do reator.
4. Retire o **RF** da **porta de energia** da turbina (a porta de energia do reator é um RF de reserva opcional).

Combine o tamanho e as hélices da turbina com a saída de vapor do reator — veja [Vapor, RF e bobinas](turbine_generation_and_coils.md). Se o vapor acumular, adicione capacidade, uma turbina maior ou mais hélices.

## Lista de verificação

1. Carcaça fechada: piso/teto de revestimento, pilares nos cantos, **vidro 5×5** em três paredes (a divisória em **y=3** corta uma fileira); a face do controlador usa **vidro + portas**.
2. **Rotor** válido abaixo da divisória: **dois blocos de barra** (y=1–2), **4 hélices** no anel inferior, **8 hélices** (dois anéis) no segmento superior + **duas camadas de bobina** no topo (y=4–5, ex.: blocos de cobre).
3. **Um [Controlador da Turbina](turbine_controller.md)** numa face lateral, **sozinho** fora da caixa.
4. **Duas portas de recursos + uma porta de energia** na face do controlador (quaisquer posições nessa face).
5. Escolha a **Configuração 1** (qualquer fonte de vapor) ou a **Configuração 2** (loop de refrigerante do reator).
6. A **Porta de Redstone** é opcional.

## Construtor da Turbina (opcional)

1. O construtor coloca apenas a **carcaça + rotor + bobinas**.
2. **Pare** a construção e depois adicione o controlador (do lado de fora) e as portas em **uma** face como na cena.
3. Valide a partir do controlador.

## A turbina não funciona?

| Sintoma | Causa provável |
|---------|----------------|
| Estado **Inválido** | Corrija a carcaça, as barras, as hélices, as bobinas ou o controlador de barras (leia a linha de estado). |
| **LIGADA** mas 0 RF/t | Sem suprimento de vapor, sem porta de energia ou sem aceitador de energia. |
| RF baixo vs. entrada de vapor | Poucas hélices/bobinas para a taxa de vapor — veja [Barras e hélices](turbine_rod_and_blades.md). |
| Sem uso de vapor | Porta de recursos não está em **INSERIR**, ou tubo conectado no lado errado. |
| Água acumulando | Faltando porta de recursos de **EXTRAÇÃO** ou sem tanque/tubo do lado de fora. |

## Veja também

- [Construtor da Turbina](turbine_builder.md)
- [Controlador da Turbina](turbine_controller.md)
- [Porta de Recursos da Turbina](turbine_resource_port.md)
- [Portas de Energia da Turbina](turbine_power_ports.md)
- [Primeiros passos do Reator — Configuração de refrigerante](../multiblock/getting_started.md)
- [Vapor, RF e bobinas](turbine_generation_and_coils.md)
