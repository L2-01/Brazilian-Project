---
navigation:
  parent: multiblock/multiblock-index.md
  title: Carcaça, faces e barras
  icon: reactor_casing
  position: 10
item_ids:
  - colossal_reactors:reactor_casing
  - colossal_reactors:reactor_glass
  - colossal_reactors:reactor_rod
  - colossal_reactors:rod_controller
---

# Carcaça, faces e barras

## Construindo a carcaça

<Row gap="16" fullWidth={true}>
  <BlockImage id="reactor_casing" scale="4" />
  <BlockImage id="reactor_glass" scale="4" />
</Row>

- Use **Revestimento do Reator** para paredes opacas e **Vidro do Reator** para faces transparentes onde você quer ver dentro ou emitir luz.

- O interior precisa formar uma **caixa fechada** com faces válidas apenas do lado de fora. Deixe espaço para barras, fluidos, componentes internos e quaisquer portas de revestimento antes de selar os últimos blocos.

## Controlador de barras

<BlockImage id="rod_controller" scale="4" />

O **Controlador de Barras** fica na **camada superior da carcaça** da caixa onde você quer uma **coluna de barras de combustível**. Cada célula interna abaixo dele naquela coluna precisa ser de blocos de **Barra de Reator** — senão a validação falha. Use-o para declarar o posicionamento e a geometria das barras para o multibloco (distinto do bloco **Controlador do Reator** numa face externa, que roda a GUI).

## Barras de combustível

<BlockImage id="reactor_rod" scale="4" />

- As **Barras de Reator** guardam itens de combustível. Coloque-as onde seu projeto permitir; adjacência e layout mudam a **saída de RF** e o **consumo de combustível** nas leituras do controlador.

- Insira e extraia combustível pelo **Controlador do Reator** ou por automação que mire os espaços de combustível (veja a página do controlador).

## Dissipadores de calor (passivos)

**Dissipadores de calor** são componentes térmicos **passivos** **dentro** do volume de ar do reator. Eles podem ser **blocos sólidos** ou **volumes de líquido parado** que você coloca dentro da carcaça (contados como preenchimento interno para as regras de layout — não são a mesma coisa que o circuito ativo de refrigerante).

Eles mudam a **saída de RF** e o **consumo de combustível** conforme como você preenche as células internas ao lado das barras. Leituras **térmicas / de instabilidade** que dependem deles aparecem **somente** quando o pacote habilita a **instabilidade do reator**; caso contrário não há mecânica de "temperatura" separada amarrada aos dissipadores.

Eles **não** são consumidos como o circuito ativo de refrigerante.

## Refrigerante (ativo)

**Refrigerante (ativo)** é o **fluido de trabalho** do circuito: ele é **consumido** enquanto o reator roda. Alguns refrigerantes (p.ex. água no modo **vapor**) **desviam** o que seria **RF** para **fluido de exaustão** — com conversão suficiente, o **RF pode ir a zero** enquanto o combustível ainda queima. Multiplicadores de **RF** e **consumo** de datapack se aplicam por cima; outros refrigerantes podem apenas escalar RF e uso de fluido sem esse desvio. Se o circuito ficar **faminto**, o **RF** também pode cair até o suprimento voltar.

O comportamento **térmico / de instabilidade** do circuito de fluido se aplica **somente** quando a **instabilidade do reator** está habilitada; caso contrário você vê níveis normais de energia e fluido sem aquela camada.

Encha ou drene pelo **Controlador do Reator** ou por **portas compatíveis com fluido**, dependendo da sua construção.
