---
navigation:
  parent: turbine/turbine-index.md
  title: Construtor da Turbina
  icon: turbine_builder
  position: 30
item_ids:
  - colossal_reactors:turbine_builder
categories:
  - multiblock
---

# Construtor da Turbina

<BlockImage id="turbine_builder" scale="4" />

O **Construtor da Turbina** constrói a turbina para você a partir dos itens no inventário dele — semelhante ao [Construtor do Reator](../multiblock/reactor_builder.md).

## Fluxo de trabalho típico

1. **Coloque** o construtor na face onde você quer que a casca da turbina comece.
2. **Abra** a tela e defina **largura, altura e profundidade** (dentro do limite de tamanho do seu pacote).
3. Abasteça o construtor com **revestimento**, **vidro**, **controladores de barras** (um por coluna de barras que o padrão exigir), **barras**, **hélices** e os **blocos de armazenamento** que você quiser para as bobinas.
4. Escolha um **layout** (veja [Barras e hélices](turbine_rod_and_blades.md)):
   - **Site** — cole uma **semente / URL** de design no campo de design; as barras (e a escolha de bobina no Site) seguem esse layout.
   - **Fluxo** — um único eixo central. Abaixo da fileira de padrões, alterne entre **Eficiente** (anéis em subida, **+3%** de bônus de altura possível) e **Produtivo** (anéis completos em todas as camadas).
   - **Hiperfluxo** — melhor grade de múltiplas barras para a área (ímpar-ímpar ou intercalada, mesma escolha da grade de barras do ModDecoded); coloca um **controlador de barra em cada coluna**. Mesma alternância Eficiente / Produtivo do Fluxo (anel limitado ao melhor anel desse layout).
   - **Personalizada / Nenhum** — armação (e bobinas na Personalizada) sem o conteúdo do rotor; o botão largo abaixo da fileira de padrões fica vazio e desativado.
5. Escolha o **tipo de bobina** (alterna entre os metais suportados; editável no Site também) e a **quantidade de camadas de bobina** (botão largo sob a Prévia, ao lado dela).
6. Use a **Prévia** (abaixo de Centralizar, mesma largura) e o painel de **Simulação** para RF/t, vapor e materiais. Os avisos aparecem **ao lado de Centralizar**.
7. **Marcar entrada** (logo acima do buffer do construtor):
   - Clique em um espaço do buffer com Marcar entrada ativado para definir qual item aquele espaço aceita nas etapas da construção.
   - Você também pode **arrastar itens do JEI** para os espaços do buffer para criar filtros de marcação fantasmas; dê dois cliques em um espaço para limpar.
8. Pressione **Construir** quando estiver pronto.

Ordem de construção: **casca externa** → **plataforma de fechamento** → **controladores de barras** (um por coluna de barras) → **barras** → **hélices** → **blocos de bobina** nas camadas interiores do topo.

O construtor **não** coloca o **Controlador da Turbina** externo nem as portas — adicione-os à mão após a construção.

## Painel de simulação

Mostra a **RF/t** e o **vapor** esperados, os bônus de bobina e hélice (incluindo o −5% quando alguma coluna de barras fica sem controlador) e uma **lista de materiais**. As sementes do Site são incluídas na simulação quando o design é válido. Os nomes dos botões podem variar por versão; leia as dicas na tela enquanto trabalha.
