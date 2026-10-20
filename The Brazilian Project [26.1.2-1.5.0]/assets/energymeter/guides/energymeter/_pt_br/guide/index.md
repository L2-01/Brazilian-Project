---
navigation:
  title: Medidor de Energia
  icon: meter
item_ids:
  - meter
---

# Medidor de Energia

Bem-vindo à introdução ao mod **Energy Meter**!

<br clear="all" />

![](assets/preview.png)

<FloatingImage src="assets/logo.png" align="right"/>

Energy Meter é um pequeno mod de conteúdo que adiciona um bloco chamado <ItemLink id="meter" components="rarity=epic"/>, que permite medir taxas de fluxo de energia.
O bloco funciona como um cabo: as requisições que chegam são simplesmente repassadas às saídas. Todos os valores dessas requisições são armazenados e usados em
um intervalo configurável para calcular a taxa de fluxo.

Além de uma interface de usuário completa, o bloco também tem um mostrador digital na sua frente. A taxa atual pode ser conferida
ali a qualquer momento. O mostrador pode ser girado para qualquer direção, incluindo para cima e para baixo. Como a frente do Medidor de Energia é
usada pelo mostrador, apenas os outros cinco lados podem ser configurados como entrada ou saída.

Para revisar as taxas de intervalos anteriores, a interface do Medidor de Energia também inclui uma visualização em gráfico. Ela mostra as medições dos
últimos 10 intervalos e também pode ser pausada. A interface oferece várias opções de configuração adicionais. Além de diferentes
métodos de medição, tanto o intervalo de medição quanto o modo de cálculo podem ser ajustados.<br/>
Você encontra mais detalhes na página [Interface](interface.md).

<br clear="all" />
<RecipeFor id="meter"/>
