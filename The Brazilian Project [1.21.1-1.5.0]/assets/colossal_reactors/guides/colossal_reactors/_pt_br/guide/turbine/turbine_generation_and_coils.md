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

## Quanto RF você obtém

Quando a turbina está **formada corretamente** e **rodando**, ela transforma **vapor** em **RF** a cada tique. Em resumo:

**RF por tique** ≈ vapor usado × **RF por mB de vapor** × **força da bobina** × **bônus de layout de hélices**

- O **vapor** entra por uma [Porta de Recursos da Turbina](turbine_resource_port.md). A turbina não pode usar mais vapor por tique do que suas hélices permitem (veja abaixo).

- **RF por mB de vapor** é normalmente **7** para vapor padrão (exaustão de água). Receitas ou configurações do pacote podem mudar isso.

- A **força da bobina** depende de quais **blocos de armazenamento** preenchem a zona de bobinas (ouro, cobre, netherita, e assim por diante — veja abaixo).

- O **bônus de layout de hélices** depende de como os anéis se empilham por altura — veja [Barras e hélices](turbine_rod_and_blades.md).

Configurações do pacote também podem multiplicar a saída geral de RF ou o uso de vapor para cima ou para baixo.

### Por que se dar ao trabalho de ter uma turbina?

Um reator de fissão faz muito vapor mas relativamente pouco RF direto daquele vapor. Uma turbina completa com hélices e bobinas serve para **converter aquele vapor em mais RF** do que você obteria do reator sozinho — se você dimensionar a turbina e encanar vapor suficiente para dentro.

## Quanto vapor você pode usar

O teto de **vapor por tique** da turbina cresce com quantas **hélices válidas** você tem instaladas. Mais barras com anéis balanceados significa um teto maior. Turbinas muito grandes (até **65×65×65** de interior) são ajustadas para que um rotor completamente construído possa consumir na ordem de **dezenas de milhões de mB/t** de vapor quando alimentado corretamente — os números exatos dependem do seu pacote.

## Zona de bobinas elétricas

As **camadas internas superiores** (padrão **3** camadas, alterável no [Construtor da Turbina](turbine_builder.md)) são a **zona de bobinas**. Preencha-as com **blocos de armazenamento de metal** que o mod reconhece (bloco de ouro, bloco de cobre, electrum, netherita, etc.).

- Blocos melhores dão um **multiplicador de bobina maior** (cada tipo de bloco tem uma força e um teto listados no **JEI** quando as receitas da turbina são mostradas).

- **Espaço vazio** ou blocos que o mod não reconhece contam como bobina fraca (cerca de **30%** de força por padrão).

- Use **blocos de armazenamento** normais de outros mods — não os blocos de **bobina de aquecimento** do reator.

A força média por toda a zona de bobinas é o que importa; misturar vários metais não tem problema.

## Qual vapor conta

Por padrão a turbina aceita **vapor** (frequentemente a tag de fluido `#c:steam`) e pode produzir **água** como exaustão. Seu modpack pode adicionar outros fluidos ou taxas de RF diferentes nos seus arquivos de dados — o **JEI** é o lugar para conferir o que seu pacote permite.
