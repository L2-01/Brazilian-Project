---
navigation:
  parent: multiblock/multiblock-index.md
  title: Casco, faces e barras
  icon: reactor_casing
  position: 10
item_ids:
  - colossal_reactors:reactor_casing
  - colossal_reactors:reactor_glass
  - colossal_reactors:reactor_rod
  - colossal_reactors:rod_controller
---

# Casco, faces e barras

## Construindo o casco

<Row gap="16" fullWidth={true}>
  <BlockImage id="reactor_casing" scale="4" />
  <BlockImage id="reactor_glass" scale="4" />
</Row>

- Use **Revestimento do Reator** para paredes opacas e **Vidro do Reator** nas faces transparentes onde você quiser ver o interior ou emitir luz.

- O interior deve formar uma **caixa fechada**, com faces válidas apenas do lado de fora. Deixe espaço para barras, fluidos, componentes internos e quaisquer portas de revestimento antes de selar os últimos blocos.

## Controlador de barras

<BlockImage id="rod_controller" scale="4" />

O **Controlador de Barras** fica na **camada superior do casco** onde você deseja uma **coluna de barras de combustível**. Todas as células internas abaixo dele nessa coluna devem ser blocos de **Barra de Reator** - caso contrário, a validação falha. Use-o para declarar o posicionamento e a geometria das barras do multibloco (diferente do bloco **Controlador do Reator** numa face externa, que opera a interface).

## Barras de combustível

<BlockImage id="reactor_rod" scale="4" />

- As **Barras de Reator** guardam itens de combustível. Coloque-as onde seu projeto permitir; a adjacência e o layout alteram a **geração de RF** e o **consumo de combustível** nos mostradores do controlador.

- Insira e extraia combustível pelo **Controlador do Reator** ou por automação que mire nos slots de combustível (veja a página do controlador).

## Dissipadores de calor (passivos)

**Dissipadores de calor** são componentes térmicos **passivos** **dentro** do volume de ar do reator. Podem ser **blocos sólidos** ou **volumes de líquido estacionário** que você coloca dentro do casco (contados como preenchimento interno para as regras de layout - não é o mesmo que o circuito ativo de resfriamento).

Eles alteram a **geração de RF** e o **consumo de combustível** conforme você preenche as células internas ao lado das barras. Mostradores **térmicos/de instabilidade** que dependem deles aparecem **apenas** quando o pack ativa a **instabilidade do reator**; caso contrário, não existe uma mecânica separada de "temperatura" ligada aos dissipadores.

Eles **não** são consumidos como o circuito de resfriamento ativo.

## Refrigerante (ativo)

O **refrigerante (ativo)** é o **fluido de trabalho** do circuito: ele é **consumido** enquanto o reator funciona. Alguns refrigerantes (ex.: água no modo **vapor**) **desviam** parte da **RF** para **fluido de exaustão** - com conversão suficiente, a **RF pode chegar a zero** enquanto o combustível ainda queima. Multiplicadores de **RF** e **consumo** do datapack se aplicam além disso; outros refrigerantes podem apenas escalar a RF e o uso de fluido sem esse desvio. Se o circuito ficar **sem suprimento**, a **RF** também pode cair até o suprimento voltar.

O comportamento **térmico/de instabilidade** do circuito de fluido se aplica **apenas** quando a **instabilidade do reator** está ativada; caso contrário, você vê os níveis normais de energia e fluido sem essa camada.

Encha ou drene pelo **Controlador do Reator** ou por **portas compatíveis com fluido**, dependendo da sua construção.
