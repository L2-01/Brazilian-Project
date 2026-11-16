---
navigation:
  parent: turbine/turbine-index.md
  title: Vapor, RF e bobinas
  icon: minecraft:copper_block
  position: 12
categories:
  - multiblock
---

# Vapor, RF e bobinas

## Quanta RF você obtém

Quando a turbina está **formada corretamente** e **funcionando**, ela transforma **vapor** em **RF** a cada tique. Em resumo:

**RF por tique** ≈ vapor usado × **RF por mB de vapor** × **força das bobinas** × **bônus do layout das hélices**

- O **vapor** entra por uma [Porta de Recursos da Turbina](turbine_resource_port.md). A turbina não consegue usar mais vapor por tique do que as suas hélices permitem (veja abaixo).

- **RF por mB de vapor** geralmente é **7** para vapor padrão (exaustão de água). Receitas ou configurações do pacote podem mudar isso.

- **Força das bobinas** depende de quais **blocos de armazenamento** preenchem a zona de bobinas (ouro, cobre, netherita etc. — veja abaixo).

- **Bônus do layout das hélices** depende de como os anéis se empilham em altura — veja [Barras e hélices](turbine_rod_and_blades.md). Se alguma coluna de barras não tiver um controlador de barra na plataforma de fechamento, esse bônus também é reduzido em **−5%**.

As configurações do pacote também podem multiplicar a saída total de RF ou o uso de vapor para cima ou para baixo.

### Por que usar uma turbina?

Um reator de fissão produz muito vapor, mas relativamente pouca RF direta a partir dele. Uma turbina completa com hélices e bobinas serve para **converter esse vapor em mais RF** do que você obteria só do reator — se você dimensionar a turbina e fornecer vapor suficiente.

## Quanto vapor você pode usar

O teto de **vapor por tique** da turbina cresce com a quantidade de **hélices válidas** instaladas. Mais barras com anéis equilibrados significam um teto maior. Turbinas muito grandes (até **65×65×65** de interior) são ajustadas para que um rotor completo possa consumir na casa das **dezenas de milhões de mB/t** de vapor quando bem alimentado — os números exatos dependem do seu pacote.

## Zona de bobinas elétricas

As **camadas interiores superiores** (padrão **3** camadas, alterável no [Construtor da Turbina](turbine_builder.md)) são a **zona de bobinas**. Preencha-as com **blocos de armazenamento de metal** que o mod reconhece (bloco de ouro, bloco de cobre, electrum, netherita etc.).

- Blocos melhores dão um **multiplicador de bobina maior** (cada tipo de bloco tem uma força e um teto listados no **JEI** quando as receitas da turbina são exibidas).

- **Espaço vazio** ou blocos que o mod não reconhece contam como bobina fraca (cerca de **30%** de força por padrão).

- Use **blocos de armazenamento** normais de outros mods — não os blocos de **bobina de aquecimento** do reator.

O que vale é a força média de toda a zona de bobinas; misturar vários metais não tem problema.

## Qual vapor conta

Por padrão a turbina aceita **vapor** (geralmente a tag de fluido `#c:steam`) e pode produzir **água** como exaustão. Seu modpack pode adicionar outros fluidos ou taxas de RF diferentes nos arquivos de dados — o **JEI** é o lugar para conferir o que o seu pacote permite.
