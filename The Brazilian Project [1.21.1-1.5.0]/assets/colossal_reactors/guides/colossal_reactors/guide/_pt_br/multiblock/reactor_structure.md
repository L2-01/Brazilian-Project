---
navigation:
  parent: multiblock/multiblock-index.md
  title: Estrutura do reator
  icon: reactor_casing
  position: 10
item_ids:
  - colossal_reactors:reactor_casing
  - colossal_reactors:reactor_glass
  - colossal_reactors:reactor_rod
  - colossal_reactors:rod_controller
---

# Estrutura do reator

## Construindo a casca

<Row gap="16" fullWidth={true}>
  <BlockImage id="reactor_casing" scale="4" />
  <BlockImage id="reactor_glass" scale="4" />
</Row>

- Use **Revestimento do Reator** para paredes opacas e **Vidro do Reator** para faces transparentes onde você quiser ver o interior ou emitir luz.

- O interior deve formar uma **caixa fechada** com faces válidas apenas do lado de fora. Deixe espaço para barras, fluidos, componentes internos e quaisquer portas de revestimento antes de selar os últimos blocos.

## Controlador de barras

<BlockImage id="rod_controller" scale="4" />

O **Controlador de Barras do Reator** fica na **camada superior da casca** onde você quer uma **coluna de barras de combustível**. Toda célula interior abaixo dele nessa coluna deve ser de blocos de **Barra de Reator** — caso contrário, a validação falha. Use-o para declarar o posicionamento e a geometria das barras no multibloco (diferente do bloco **Controlador do Reator** numa face externa, que abre a GUI).

## Barras de combustível

<BlockImage id="reactor_rod" scale="4" />

- As **Barras de Reator** guardam itens de combustível. Coloque-as onde seu projeto permitir; adjacência e layout alteram a **saída de RF** e o **consumo de combustível** nas leituras do controlador.

- Insira e extraia combustível pelo **Controlador do Reator** ou por automação que mire os espaços de combustível (veja a página do controlador).

## Dissipadores de calor (passivos)

Os **dissipadores de calor** são componentes térmicos **passivos** **dentro** do volume de ar do reator. Podem ser **blocos sólidos** ou **volumes de líquido estacionário** que você coloca dentro da casca (contados como preenchimento interior para as regras de layout — não são o mesmo que o circuito de refrigerante ativo).

Eles alteram a **saída de RF** e o **consumo de combustível** junto com sua definição de refrigerante ativo; estatísticas de superaquecimento entram no comportamento avançado do reator quando habilitadas.

Eles **não** são consumidos como o circuito de refrigerante ativo.

## Refrigerante (ativo)

O **refrigerante (ativo)** é o **fluido de trabalho** do circuito: ele é **consumido** enquanto o reator funciona. Alguns refrigerantes (ex.: água no modo **vapor**) **desviam** a **RF** que seria gerada para **fluido de exaustão** — com conversão suficiente, a **RF pode chegar a zero** enquanto o combustível continua queimando. Multiplicadores de **RF** e **consumo** do pacote de dados se aplicam por cima; outros refrigerantes podem apenas escalar a RF e o uso de fluido sem esse desvio. Se o circuito ficar **sem suprimento**, a **RF** também pode cair até o fornecimento voltar.

Encha ou drene pelo **Controlador do Reator** ou por **portas com capacidade de fluido** compatíveis, dependendo da sua construção.
