---
navigation:
  title: Medidor de Energia
  icon: meter
item_ids:
  - meter
---

# Medidor de Energia

Boas-vindas à introdução ao mod **Medidor de Energia**!

<br clear="all" />

![](assets/preview.png)

<FloatingImage src="assets/logo.png" align="right"/>

O Medidor de Energia é um pequeno mod de conteúdo que adiciona um bloco chamado <ItemLink id="meter" components="rarity=epic"/>, que permite medir taxas de fluxo de energia.
O bloco funciona como um cabo: as requisições recebidas são simplesmente repassadas às saídas. Todos os valores dessas requisições são armazenados e usados num
intervalo configurável para calcular a taxa de fluxo.

Além de uma interface de usuário abrangente, o bloco também tem um mostrador digital na sua frente. A taxa atual pode ser consultada
lá a qualquer momento. O mostrador pode ser girado em qualquer direção, inclusive para cima e para baixo. Como a frente do Medidor de Energia é
usada pelo mostrador, apenas os outros cinco lados podem ser configurados como entrada ou saída.

Um Medidor de Energia recém-colocado não transfere nem mede energia, pois todos os seus lados estão desativados. Antes de poder ser usado, seus
lados precisam ser configurados como entradas e saídas na grade de E/S da sua interface de usuário. Veja a seção [Painel Global](interface.md#global-panel) para detalhes.

Para revisar as taxas de intervalos anteriores, a interface do Medidor de Energia também inclui uma visualização em gráfico. Ela mostra as medições
dos últimos 10 intervalos e também pode ser pausada. A interface oferece muitas opções adicionais de configuração. Além de diferentes
métodos de medição, tanto o intervalo de medição quanto o modo de cálculo podem ser ajustados.<br/>
Você encontra mais detalhes na página [Interface](interface.md).

<br clear="all" />
<RecipeFor id="meter"/>
