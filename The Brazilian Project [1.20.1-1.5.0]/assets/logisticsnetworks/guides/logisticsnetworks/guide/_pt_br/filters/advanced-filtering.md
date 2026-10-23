---
navigation:
  title: Filtragem Avançada
  parent: filters/index.md
  position: 6
---

# Filtragem Avançada

Os filtros Pequeno, Médio e Grande guardam uma grade de entradas de 9/18/27 espaços. Soltar um item num espaço é a forma mais simples de usá-los. Mas todo espaço de entrada também tem uma página **Detalhes** oculta com opções por entrada que fazem o filtro ir muito além de corresponder-por-item-exato.

Esta página cobre a página de Detalhes e sua subtela de NBT. As opções se aplicam da mesma forma no Pequeno, Médio e Grande — a única diferença é em quantos espaços de entrada você pode usá-las.

## Abrindo a Página de Detalhes

Abra o filtro na mão (botão direito), depois **ctrl + clique esquerdo num espaço de entrada preenchido** na grade principal. A visão troca para a página de Detalhes daquele espaço.

![Página de detalhes de uma entrada de filtro — Item/tag, Lote, Estoque, NBT, Espaços](images/advanced-detail-full.png)

Daqui você pode definir todas as opções por entrada descritas abaixo. O botão `< Back` no topo volta para a grade principal. O botão `Clear` no canto superior direito apaga todos os campos desta entrada e o envia de volta.

## Item ou #tag

![Campo de item-ou-tag com ícone de ajuda](images/advanced-item-tag.png)

O campo do topo controla **com o que a entrada corresponde**. Dois formatos:

- **Id de item exato** — ex.: `minecraft:iron_ingot`. Corresponde só àquele item.
- **Tag** — prefixo `#`, ex.: `#c:ores` ou `#minecraft:planks`. Corresponde a **todo** item que pertence à tag.

Você não precisa usar os dois — pode deixar o campo em branco e usar só regras de NBT, ou usar só Espaços. Uma entrada sem item/tag mas com regras de NBT ativas corresponderá a qualquer item que satisfaça as condições de NBT.

O pequeno botão `?` à esquerda do campo abre um tooltip de ajuda lembrando os formatos aceitos.

**Emissor** — só itens correspondentes ao id/tag são puxados para fora do bloco de origem.
**Receptor** — só itens correspondentes ao id/tag são aceitos no bloco de destino. Qualquer outra coisa passando pela rede é ignorada por esta entrada.

## Lote

![Linha do Lote](images/advanced-batch.png)

Uma substituição por entrada de quantos itens esta entrada move por transferência. Isso **não é aditivo** com a configuração de Lote do canal — ela limita apenas transferências desta entrada específica.

- Deixe em `0` (vazio) para cair de volta no Lote do canal.
- Defina um número positivo para limitar transferências desta entrada àquela quantidade por operação.

Caso de uso: o Lote do canal inteiro é 64, mas você quer pepitas de ferro estranguladas a 16 por operação. Coloque pepitas de ferro num espaço, abra Detalhes, defina Lote como 16. Outras entradas no mesmo canal ainda honram os 64 do canal.

**Emissor** — limita quantos desta entrada são puxados para fora do bloco de origem por operação de transferência.
**Receptor** — ignorado. O Emissor decide o tamanho do lote; receptores não estrangulam a vazão. Defina Lote só no lado do Emissor para controlar o fluxo.

## Estoque

![Linha do Estoque](images/advanced-stock.png)

Limite de quantidade para a entrada. Este é o único campo cujo significado é **diferente** em Emissores e Receptores:

- **Emissor (exportador)** — Estoque é uma **reserva**. Nunca puxe esta entrada para fora do bloco de origem se isso deixar menos que o valor de estoque para trás. Exemplo: defina Estoque como `8` numa entrada de carvão — o Emissor sempre deixará pelo menos 8 carvões no baú de origem.
- **Receptor (importador)** — Estoque é um **teto**. Pare de inserir esta entrada no bloco de destino quando o destino já tiver pelo menos o valor de estoque. Exemplo: defina Estoque como `64` numa entrada de lingote de ferro — o Receptor parará de reabastecer o destino quando ele tiver 64 lingotes de ferro.

Deixe em `0` (vazio) para desabilitar o limite por completo. Ótimo para manter combustível numa fornalha sem superlotá-la, ou manter uma reserva de sementes num baú de fazenda sem deixar tudo ser sifonado.

## Regras de NBT

![Linha de NBT com botão Configurar](images/advanced-nbt.png)

Clique em **Configurar** para abrir uma subpágina de adição de regras de NBT a esta entrada. Regras permitem corresponder itens pelos dados de seus componentes (encantamentos, dano, nome personalizado, tamanho de pilha, tags de NBT personalizadas e assim por diante) além da correspondência de item/tag.

![Subpágina de NBT — regras de Durabilidade, Encantado, Tamanho de Pilha](images/advanced-nbt-rules.png)

A subpágina tem dois modos:

- **Tabela** (padrão) — clique nas linhas para montar regras tipadas: Durabilidade, Encantado, Tamanho de Pilha e qualquer caminho de NBT personalizado que você quiser digitar. Cada regra tem um operador (`=` igual, `!=` diferente) e um valor. Até **6 regras por entrada**.
- **SNBT Puro** — um campo de texto onde você cola um trecho de SNBT puro. A entrada corresponde se o NBT do item contiver toda tag do seu trecho. Só uso avançado — bom para padrões que a tabela não expressa bem.

Cada regra tem uma caixa de seleção à esquerda — marque-a para ativar a regra. Regras desmarcadas são ignoradas. O botão `Clear` no topo apaga toda regra de NBT desta entrada e o traz de volta à página de Detalhes. `< Back` volta sem apagar.

### Exemplos Comuns de Regras de NBT

- **Só ferramentas danificadas** — adicione a regra `Durability` `!=` `0`. Corresponde só a ferramentas que perderam um pouco de durabilidade.
- **Só livros encantados** — adicione a regra `Enchanted` `=` `true`. Corresponde só a itens com pelo menos um encantamento.
- **Só itens sem empilhar** — adicione a regra `Stack Size` `=` `1`. Útil para rotear ferramentas danificadas únicas sem mandar pilhas novas.

**Emissor** — só itens cujo NBT satisfaça as regras ativas são puxados para fora do bloco de origem.
**Receptor** — só itens cujo NBT satisfaça as regras ativas são aceitos no bloco de destino. Itens chegando que falham nas regras continuam fluindo pela rede e podem ser reivindicados por outro Receptor.

## Espaços

![Linha de Espaços](images/advanced-slots.png)

Restringe quais **índices de espaço** do bloco anexo esta entrada lê/escreve. Útil para máquinas sensíveis a lados e inventários com vários espaços em que você quer um canal mirando só espaços específicos.

Formato: uma lista separada por vírgulas de índices de espaço e/ou intervalos. Exemplos:

- `0-8` — espaços 0 a 8 inclusive.
- `0,3,5` — só os espaços 0, 3 e 5.
- `0-3, 5` — espaços 0 a 3, mais o espaço 5.

Índices de espaço válidos vão de **0 a 53** (inventários padrão do Minecraft chegam por aí). Deixe o campo em branco para a entrada usar todo espaço que o bloco expõe.

Caso de uso: uma fornalha tem o espaço 0 (entrada), espaço 1 (combustível), espaço 2 (saída). Coloque carvão numa entrada com Espaços `1` para garantir que o carvão só vai para o espaço de combustível. Coloque fundíveis noutra entrada com Espaços `0` para mantê-los fora do espaço de combustível.

**Emissor** — restringe de quais espaços do bloco de **origem** o canal extrai. Só aqueles espaços são lidos.
**Receptor** — restringe em quais espaços do bloco de **destino** o canal insere. Só aqueles espaços são escritos. Exemplo: defina Espaços `0` num Receptor de fornalha para forçar fundíveis no espaço de entrada mesmo que o espaço de combustível esteja vazio e aceitaria a pilha.

## Limpando

- **Clear na página de Detalhes** — apaga tudo desta entrada: item/tag, Lote, Estoque, Espaços e todas as regras de NBT.
- **Clear na subpágina de NBT** — apaga só as regras de NBT; item/tag, Lote, Estoque e Espaços ficam intactos.

## Conclusão

Todo espaço da grade principal de um filtro [Pequeno](small.md), [Médio](medium.md) ou [Grande](big.md) é mais que uma marcação de item único. Abra a página de Detalhes e você pode transformar um espaço numa regra precisa: corresponder por tag, substituir o lote, reservar um estoque, exigir encantamentos, mirar espaços específicos do inventário — tudo por entrada e sem precisar de itens de filtro separados.
