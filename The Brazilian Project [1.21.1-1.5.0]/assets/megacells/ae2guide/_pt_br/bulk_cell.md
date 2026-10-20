---
navigation:
  title: Célula de Itens em Massa
  icon: bulk_item_cell
  parent: index.md
  position: 040
categories:
  - megacells
item_ids:
  - bulk_item_cell
  - bulk_cell_component
  - compression_card
  - decompression_module
---

# MEGA Cells: Célula de Itens em Massa

Passamos agora à primeira das células de armazenamento *especializadas* sob medida do MEGA. É aqui que as coisas ficam interessantes.

## Célula de Itens em Massa

<Row>
  <ItemImage id="bulk_cell_component" scale="3" />
  <ItemImage id="bulk_item_cell" scale="3" />
</Row>

A **Célula de Itens em Massa MEGA** é, de muitas formas, uma espécie de antítese da
[célula de armazenamento convencional](ae2:items-blocks-machines/storage_cells.md).

Enquanto uma célula padrão geralmente consegue armazenar até 63 tipos diferentes de itens, a Célula em Massa só consegue
armazenar um único tipo dentro de si. Ora, por si só, isso tornaria a célula meio inútil, mas a Célula
em Massa tem uma vantagem-chave para começar: diferente da quantidade finita de cada tipo de item numa célula padrão, uma Célula
em Massa consegue armazenar uma quantidade ***infinita*** daquele único tipo de item. E eu quero dizer *infinita* mesmo, pelo menos
num sentido prático. *(veja a seção "A Chatice Técnica" um pouco mais abaixo se estiver curioso o bastante)*

Também vale notar que a Célula em Massa não pode ser fabricada com nenhuma das cápsulas de célula existentes oferecidas pelo AE2 ou
pelo MEGA, optando, em vez disso, por sua própria cápsula dedicada de Netherita, sempre fabricada do zero junto com seu
componente dedicado. Por essa razão, a Célula em Massa também não pode ser desmontada de volta em seu componente e cápsula — embora
não houvesse muita razão para fazer isso de qualquer forma.

<Row>
  <RecipeFor id="bulk_cell_component" />
  <RecipeFor id="bulk_item_cell" />
</Row>

Uma Célula em Massa recém-fabricada ainda não funciona; primeiro ela precisa ser *particionada* (filtrada) para designar qual item
ela vai armazenar. Isso é feito usando uma <ItemLink id="ae2:cell_workbench" /> ou nossa conveniente
<ItemLink id="portable_cell_workbench" />. Feito isso, a célula começará a receber aquele respectivo item,
até mesmo se priorizando como o primeiro — e provavelmente único — lugar para onde esse item será enviado a partir do momento em
que seu filtro for definido.

![Célula em Massa vazia](assets/diagrams/bulk_cell_empty.png)
![Célula em Massa particionada](assets/diagrams/bulk_cell_partitioned.png)
![Célula em Massa com conteúdo](assets/diagrams/bulk_cell_with_contents.png)

Depois que a célula começar a receber e armazenar seu respectivo tipo de item, contanto que o filtro continue o mesmo do
item já contido, ela continuará funcionando e permitirá tanto inserção quanto extração adicionais, assim como uma
célula comum faria. Caso esse filtro seja acidentalmente limpo ou substituído, no entanto, a célula apresentará erro e
ficará incapaz de aceitar novos itens. Ela ainda permitirá a extração do seu conteúdo existente em caso de
emergência e para fins de recuperação e, uma vez que o filtro original seja reposto ou a célula seja
esvaziada (recebendo um novo filtro não vazio), ela voltará a funcionar normalmente.

![Filtro incompatível da Célula em Massa (vazia)](assets/diagrams/bulk_cell_mismatch_1.png)
![Filtro incompatível da Célula em Massa (outro item)](assets/diagrams/bulk_cell_mismatch_2.png)

### A Chatice Técnica sobre a Capacidade:

É comum pensar numa "capacidade infinita" em qualquer mod de Minecraft como sendo apenas o maior valor possível
de um determinado tipo de dado numérico, como o limite do Java para um "int" (cerca de 2,14 bilhões), um "long" (cerca de
9,2 *quintilhões*, ou 9,2 \* 10^**18**) ou até um "double" (que já alcança *308* ordens de magnitude, embora
não fosse nada adequado aqui para trabalhar com quantidades inteiras).

A Célula em Massa joga todos esses tipos primitivos para escanteio e, em vez disso, é projetada de forma a armazenar qualquer
quantidade arbitrariamente grande que um usuário possa razoavelmente conceber. De fato, embora qualquer rede ME só consiga
manipular e exibir até os já mencionados 9,2 quintilhões de qualquer tipo de item armazenado nela, a Célula
em Massa é internamente capaz de ir além desse limite, e ao menos insinuar o fato de que pode tê-lo ultrapassado.

![Contagem de itens da célula em massa de (Long.MAX_VALUE - 1)](assets/diagrams/bulk_cell_max_count_1.png)
![Contagem de itens da célula em massa exibida além de Long.MAX_VALUE](assets/diagrams/bulk_cell_max_count_2.png)

## Compressão em Massa

<Row>
  <ItemImage id="compression_card" scale="3" />
</Row>

Até aqui, cobrimos bem como uma célula em massa funciona como um poço sem fundo efetivo para qualquer tipo de
item arbitrário. No entanto, é amplamente compreendido entre a maioria dos jogadores que alguns tipos de itens — a saber,
recursos como *lingotes de metal* — precisam ser tratados de forma um pouco diferente para fins de armazenamento. Muito
frequentemente, recursos como lingotes assumem múltiplas formas para fins de armazenamento e fabricação, como suas
contrapartes maiores de "bloco" para o primeiro, a fim de minimizar espaço, e sua forma menor de "pepita" para o segundo.
Embora essas formas geralmente sejam melhor tratadas junto com seu respectivo lingote de alguma forma, uma Célula em Massa,
na sua forma mais básica, não daria conta dessa expectativa com facilidade.

É aqui que entra a mecânica de ***Compressão em Massa*** graças ao **Cartão de Compressão**, um
[cartão de melhoria](ae2:items-blocks-machines/upgrade_cards.md) único e exclusivo da Célula em Massa para esse propósito.

<RecipeFor id="compression_card" />

Com a *Compressão* ativada por este cartão, uma Célula em Massa pode ser informada de tais formas variantes do recurso
sendo rastreado, de modo a aceitar igualmente essas variantes e "comprimi-las" automaticamente, ao entrarem, na sua
variante imediatamente superior. Essa compressão automática funciona de acordo com as receitas de fabricação associadas
a essas variantes: se uma dessas receitas transformar algo como um (1) lingote de metal em nove (9) pepitas daquele metal e outra
receita transformar aquelas nove pepitas de volta no lingote original, uma Célula em Massa configurada para armazenar aquele metal
conseguirá aceitar tanto a forma de lingote quanto a de pepita daquele metal, transformando cada 9 pepitas inseridas em outro
lingote na hora.

Além disso, essa compressão automática se estende a *todas* as variantes superiores, como blocos de metal e até versões
"comprimidas" ainda mais pesadas desses blocos fornecidas por outros mods, todas tratadas como uma longa "cadeia" de variantes
da menor para a maior.

![Célula em massa com compressão ativada](assets/diagrams/bulk_cell_compressed_1.png)

![Conteúdo da célula em massa com compressão](assets/diagrams/bulk_cell_compressed_2.png)
![Conteúdo da célula em massa com compressão (+ AllTheCompressed)](assets/diagrams/bulk_cell_compressed_3.png)

Para que essa mecânica funcione, uma Célula em Massa internamente só rastreia sua "quantidade" real como a quantidade
do menor item-"unidade" possível em que o recurso pode ser decomposto — normalmente uma pepita de metal, um
fragmento de gema, um pó ou algum outro equivalente. Ao longo da cadeia mais ampla mencionada antes, uma Célula em Massa com essa
mecânica ativada aceitará de bom grado toda e qualquer uma dessas variantes, tanto superiores quanto inferiores, convertendo-as
em alguma quantidade de "unidades" quando aplicável, e até permitirá que qualquer uma delas seja *extraída* por meios
automatizados — como o <ItemLink id="ae2:import_bus" /> e o <ItemLink id="ae2:export_bus" /> — ou até por um
[terminal](ae2:items-blocks-machines/terminals.md) (ao clicar com *Shift* para extrair).

No caso de um mod presente adicionar versões de bloco "comprimidas" muito maiores de um recurso, pode ser desejável
limitar quão alto um recurso pode ir com a compressão automática, para conseguir rastrear mais facilmente a quantidade
daquele recurso numa forma específica — por exemplo, ao olhar a vazão daquele recurso em forma de lingote. Para esse propósito, uma
Célula em Massa com Compressão ainda dentro de uma Bancada de Células permitirá alternar seu "**limite** de compressão",
ditando a variante mais alta que a célula deve conseguir acumular em armazenamento e na qual a
compressão automática deve parar. Clicar com o botão esquerdo nesse botão cicla o limite para baixo em direção ao item-unidade
menor, enquanto clicar com o direito cicla de volta em direção a variantes comprimidas cada vez maiores.

![Limite padrão da Célula em Massa](assets/diagrams/bulk_cell_cutoff_1.png)
![Limite menor da Célula em Massa](assets/diagrams/bulk_cell_cutoff_2.png)

![Conteúdo do limite da célula em massa](assets/diagrams/bulk_cell_cutoff_3.png)

Quando a Compressão está ativada numa célula, o comportamento de "filtro incompatível" fica um pouco mais tolerante: a célula
efetivamente "lembra" com qual cadeia precisa trabalhar com base no item que já foi definida para armazenar e, se seu filtro
for acidentalmente removido de alguma forma, ele pode ser substituído por qualquer uma das variantes associadas, em vez da variante
específica usada antes como filtro. Além disso, para fins de correção de erros, caso quaisquer receitas de fabricação
de alguma variante menor que o item configurado na célula sejam adicionadas, removidas ou substituídas, o "fator
de unidade" atual — ou seja, quantas "unidades" cabem no total numa instância do item "variante" configurado — também é
armazenado e rastreado, atualizando-se de acordo quando a cadeia geral dessas variantes sofre tal mudança.

Como último recurso, se em algum cenário de pior caso uma célula em massa travar por completo independentemente do filtro
(re)aplicado a ela e entrar no já mencionado modo de "recuperação", quaisquer variantes residuais menores poderão ser recuperadas
junto com o item base para o qual a célula foi particionada inicialmente.

## Módulo de Descompressão

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/decompression_module.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

Até aqui, tudo bem. Sabemos que, com a Compressão ativada, uma Célula em Massa consegue trabalhar facilmente com quaisquer
variantes correspondentes quando itens são inseridos ou extraídos, seja por um jogador ou por dispositivos como o
<ItemLink id="ae2:import_bus" /> e o <ItemLink id="ae2:export_bus" />. Agora, e quanto à autofabricação?

Essa é um pouco mais complicada. No AE2, o sistema de [autofabricação](ae2:ae2-mechanics/autocrafting.md) depende do
pressuposto de que "o que você vê é o que você tem". Se o sistema de armazenamento só relata, por exemplo, 5 lingotes de ferro,
o sistema de fabricação assumirá que, sem um [padrão](ae2:ae2-mechanics/autocrafting.md#patterns) ali para dizer a ele como
fazer mais lingotes de ferro, ele só terá aqueles 5 para trabalhar numa determinada tarefa de fabricação e não conseguirá executá-la
se mais lingotes forem necessários. O problema surge, então, quando a Compressão está configurada para uma Célula em Massa que
por acaso está armazenando lingotes de ferro: o sistema de armazenamento pode muito bem nunca relatar mais do que (tipicamente)
8 lingotes a cada momento, se a célula estiver definida para um limite mais alto, deixando o sistema de fabricação incapaz de
trabalhar com qualquer tarefa que eventualmente precise de mais lingotes de ferro para cumprir uma etapa anterior.

A solução para este problema vem na forma do **Módulo de Descompressão MEGA**, uma peça de cabo relativamente simples que
serve quase como uma extensão do sistema de autofabricação e das instalações de uma rede comum.

<RecipeFor id="decompression_module" />

Quando um Módulo de Descompressão é colocado em qualquer ponto da rede, ele escaneia continuamente a rede em busca de quaisquer
Células em Massa com Compressão conectadas e gera automaticamente um conjunto de "padrões falsos" especializados para cada célula
que encontra, cobrindo cada item da cadeia de variantes correspondente àquela célula. Esses padrões são então tratados
completamente de forma interna, sem a necessidade de qualquer <ItemLink id="ae2:pattern_provider" /> ou
<ItemLink id="ae2:molecular_assembler" /> dedicado, permitindo que o sistema de fabricação continue operando normalmente ao
"fabricar" mais de um item que tecnicamente já está armazenado mesmo.

![Padrões de descompressão](assets/diagrams/bulk_cell_decompression.png)

Esses padrões respondem de acordo com o limite definido em cada Célula em Massa; padrões gerados para variantes menores
que o item do limite tomam sua variante superior anterior para ser fabricada *para baixo* em várias daquelas variantes menores,
enquanto padrões gerados para variantes maiores tomam várias da variante menor anterior para serem fabricadas para cima. Seja
qual for a direção tomada por esses padrões, no entanto, toda variante em ambos os lados do ponto de corte ainda é
automaticamente contabilizada, caso uma tarefa de fabricação maior precise delas.

O módulo também permite definir uma [prioridade](ae2:ae2-mechanics/autocrafting.md#priority) "global" para todos esses
padrões em conjunto, relativa a qualquer infraestrutura de fabricação comum, como Fornecedores de Padrões com seus próprios padrões para
um determinado item variante, clicando com o botão direito no módulo para abrir o menu de prioridade.

O Módulo de Descompressão é muito um dispositivo de "configure e esqueça", e você normalmente só precisa de um módulo numa
rede para que toda a sua funcionalidade de autofabricação seja ativada. ***TENHA EM MENTE, NO ENTANTO***, que o módulo só
funciona dentro da mesma rede e só consegue rastrear células conectadas a Baús ME e Gabinetes ME na mesma
rede principal que ele. Ele ***NÃO FUNCIONARÁ*** entre [sub-redes](ae2:ae2-mechanics/subnetworks.md), por exemplo, então
você deve garantir que seu armazenamento em Massa permaneça centralizado na sua rede principal para que o módulo o reconheça
por completo.
