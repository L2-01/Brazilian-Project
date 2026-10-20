---
navigation:
  title: Filtragem Avançada
  parent: filters/index.md
  position: 6
---

# Filtragem Avançada

Os filtros Pequeno, Médio e Grande guardam uma grade de 9/18/27 espaços de entradas. Largar um item num espaço é a forma mais simples de usá-los. Mas cada espaço de entrada também tem uma página de **Detalhes** oculta com opções por entrada que fazem o filtro fazer muito mais do que corresponder por item exato.

Esta página cobre a página de Detalhes e sua subtela de NBT. As opções se aplicam da mesma forma no Pequeno, Médio e Grande — a única diferença é quantos espaços de entrada você tem para usá-las.

## Abrindo a Página de Detalhes

Abra o filtro na mão (clique direito), depois **ctrl + clique esquerdo num espaço de entrada preenchido** na grade principal. A visão troca para a página de Detalhes daquele espaço.

![Página de detalhes de uma entrada de filtro — Item/tag, Lote, Reserva, NBT, Espaços](images/advanced-detail-full.png)

A partir daqui você pode definir todas as opções por entrada descritas abaixo. O botão `< Voltar` no topo retorna à grade principal. O botão `Limpar` no canto superior direito apaga todos os campos desta entrada e o envia de volta.

## Item ou #tag

![Campo de item-ou-tag com ícone de ajuda](images/advanced-item-tag.png)

O campo do topo controla **com o que a entrada corresponde**. Dois formatos:

- **Id de item exato** — ex.: `minecraft:iron_ingot`. Corresponde apenas àquele item.
- **Tag** — prefixe com `#`, ex.: `#c:ores` ou `#minecraft:planks`. Corresponde a **todo** item que pertence à tag.

Você não precisa usar os dois — pode deixar o campo em branco e usar apenas regras de NBT, ou usar apenas Espaços. Uma entrada sem item/tag mas com regras de NBT ativas corresponderá a qualquer item que satisfaça as condições de NBT.

O pequeno botão `?` à esquerda do campo abre uma tooltip de ajuda lembrando os formatos aceitos.

**Emissor** — apenas itens correspondentes ao id/tag são puxados do bloco de origem.
**Receptor** — apenas itens correspondentes ao id/tag são aceitos no bloco de destino. Qualquer outra coisa passando pela rede é ignorada por esta entrada.

## Lote

![Linha de Lote](images/advanced-batch.png)

Uma substituição por entrada de quantos itens esta entrada move por transferência. Isso **não é aditivo** com a configuração de Lote do canal — ela limita apenas as transferências desta entrada específica.

- Deixe `0` (em branco) para usar o Lote do canal.
- Defina um número positivo para limitar as transferências desta entrada àquela quantidade por operação.

Caso de uso: o Lote do canal inteiro é 64, mas você quer limitar pepitas de ferro a 16 por operação. Coloque pepitas de ferro num espaço, abra os Detalhes, defina Lote como 16. Outras entradas do mesmo canal ainda respeitam o 64 do canal.

**Emissor** — limita quantos desta entrada são puxados do bloco de origem por operação de transferência.
**Receptor** — ignorado. O Emissor decide o tamanho do lote; receptores não regulam a vazão. Defina Lote apenas no lado do Emissor para controlar o fluxo.

## Reserva

![Linha de Reserva](images/advanced-stock.png)

Limite de quantidade para a entrada. Este é o único campo cujo significado é **diferente** em Emissores e Receptores:

- **Emissor (exportador)** — Reserva é uma **reserva mínima**. Nunca puxe esta entrada do bloco de origem se isso deixar menos que o valor de reserva para trás. Exemplo: defina Reserva como `8` numa entrada de carvão — o Emissor sempre deixará pelo menos 8 carvões no baú de origem.
- **Receptor (importador)** — Reserva é um **limite**. Pare de inserir esta entrada no bloco de destino quando o destino já tiver pelo menos o valor da reserva. Exemplo: defina Reserva como `64` numa entrada de lingote de ferro — o Receptor parará de completar o destino quando ele tiver 64 lingotes de ferro.

Deixe `0` (em branco) para desativar o limite completamente. Ótimo para manter combustível numa fornalha sem enchê-la demais, ou manter uma reserva de sementes num baú de fazenda sem deixar tudo ser drenado.

## Regras de NBT

![Linha de NBT com botão Configurar](images/advanced-nbt.png)

Clique em **Configurar** para abrir uma subpágina para adicionar regras de NBT a esta entrada. As regras permitem corresponder itens pelos seus dados de componente (encantamentos, dano, nome personalizado, tamanho da pilha, tags NBT personalizadas e assim por diante) além da correspondência de item/tag.

![Subpágina de NBT — regras de Durabilidade, Encantado, Tamanho da Pilha](images/advanced-nbt-rules.png)

A subpágina tem dois modos:

- **Tabela** (padrão) — clique nas linhas para montar regras tipadas: Durabilidade, Encantado, Tamanho da Pilha e qualquer caminho NBT personalizado que você quiser digitar. Cada regra tem um operador (`=` igual, `!=` diferente) e um valor. Até **6 regras por entrada**.
- **SNBT Bruto** — um campo de texto onde você cola um trecho SNBT bruto. A entrada corresponde se o NBT do item contiver todas as tags do seu trecho. Uso avançado apenas — bom para padrões que a tabela não consegue expressar direito.

Cada regra tem uma caixa de seleção à esquerda — marque-a para ativar a regra. Regras desmarcadas são ignoradas. O botão `Limpar` no topo apaga todas as regras de NBT desta entrada e o traz de volta à página de Detalhes. `< Voltar` retorna sem limpar.

### Exemplos Comuns de Regras de NBT

- **Apenas ferramentas danificadas** — adicione a regra `Durability` `!=` `0`. Corresponde apenas a ferramentas que perderam alguma durabilidade.
- **Apenas livros encantados** — adicione a regra `Enchanted` `=` `true`. Corresponde apenas a itens com pelo menos um encantamento.
- **Apenas itens não empilhados** — adicione a regra `Stack Size` `=` `1`. Útil para rotear ferramentas danificadas únicas sem enviar pilhas novas.

**Emissor** — apenas itens cujo NBT satisfaz as regras ativas são puxados do bloco de origem.
**Receptor** — apenas itens cujo NBT satisfaz as regras ativas são aceitos no bloco de destino. Itens que falham nas regras continuam fluindo pela rede e podem ser reivindicados por outro Receptor.

## Espaços

![Linha de Espaços](images/advanced-slots.png)

Restringe em quais **índices de espaço** do bloco anexo esta entrada lê/escreve. Útil para máquinas sensíveis a lado e inventários de vários espaços onde você quer que um canal mire espaços específicos apenas.

Formato: uma lista separada por vírgulas de índices de espaço e/ou intervalos. Exemplos:

- `0-8` — espaços 0 a 8 inclusive.
- `0,3,5` — apenas espaços 0, 3 e 5.
- `0-3, 5` — espaços 0 a 3, mais o espaço 5.

Os índices de espaço válidos vão de **0 a 53** (inventários padrão do Minecraft param por aí). Deixe o campo em branco para a entrada usar todos os espaços que o bloco expõe.

Caso de uso: uma fornalha tem espaço 0 (entrada), espaço 1 (combustível), espaço 2 (saída). Coloque carvão numa entrada com Espaços `1` para garantir que o carvão só vá para o espaço de combustível. Coloque fundíveis em outra entrada com Espaços `0` para mantê-los fora do espaço de combustível.

**Emissor** — restringe de quais espaços do bloco de **origem** o canal extrai. Apenas esses espaços são lidos.
**Receptor** — restringe em quais espaços do bloco de **destino** o canal insere. Apenas esses espaços são escritos. Exemplo: defina Espaços `0` num Receptor de fornalha para forçar fundíveis para o espaço de entrada mesmo se o espaço de combustível estiver vazio e aceitaria a pilha.

## Limpando

- **Limpar na página de Detalhes** — apaga tudo nesta entrada: item/tag, Lote, Reserva, Espaços e todas as regras de NBT.
- **Limpar na subpágina de NBT** — apaga apenas as regras de NBT; item/tag, Lote, Reserva e Espaços ficam intactos.

## Resumindo

Cada espaço na grade principal de um filtro [Pequeno](small.md), [Médio](medium.md) ou [Grande](big.md) é mais do que um tique de item único. Abra a página de Detalhes e você pode transformar um espaço numa regra precisa: corresponder por tag, substituir o lote, reservar um buffer, condicionar a encantamentos, mirar espaços específicos do inventário — tudo por entrada e sem precisar de itens de filtro separados.
