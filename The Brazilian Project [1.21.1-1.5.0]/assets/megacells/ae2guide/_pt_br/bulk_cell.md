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

Chegamos agora à primeira das células de armazenamento *especializadas* exclusivas do MEGA. É aqui que as coisas ficam interessantes.

## Célula de Itens em Massa

<Row>
  <ItemImage id="bulk_cell_component" scale="3" />
  <ItemImage id="bulk_item_cell" scale="3" />
</Row>

A **Célula de Itens em Massa MEGA** é, em muitos aspectos, uma espécie de antítese da
[célula de armazenamento convencional](ae2:items-blocks-machines/storage_cells.md).

Enquanto uma célula padrão geralmente consegue guardar até 63 tipos diferentes de itens, a Célula em Massa só consegue
armazenar um único tipo dentro de si. Por si só, isso tornaria a célula bastante inútil, mas a Célula em
Massa tem uma vantagem-chave: diferente da quantidade finita de cada tipo de item numa célula padrão, uma Célula em
Massa consegue armazenar uma quantidade ***infinita*** daquele único tipo de item. E eu quero dizer *infinita*, pelo menos num
sentido prático. *(veja a seção "Detalhes Técnicos" mais abaixo se estiver curioso)*

Também vale notar que a Célula em Massa não pode ser fabricada com nenhuma das cápsulas de célula existentes oferecidas pelo AE2 ou pelo
MEGA; em vez disso, ela usa sua própria cápsula dedicada de Netherita, sempre fabricada do zero junto com seu
componente dedicado. Por esse motivo, a Célula em Massa também não pode ser desmontada de volta em componente e cápsula — embora
não houvesse muita utilidade nisso de qualquer forma.

<Row>
  <RecipeFor id="bulk_cell_component" />
  <RecipeFor id="bulk_item_cell" />
</Row>

Uma Célula em Massa recém-fabricada ainda não funciona; primeiro ela precisa ser *particionada* (filtrada) para designar qual item
vai armazenar. Isso é feito usando uma <ItemLink id="ae2:cell_workbench" /> ou nossa conveniente
<ItemLink id="portable_cell_workbench" />. Uma vez feito isso, a célula começará a receber o respectivo item,
até se priorizando como o primeiro — e provavelmente único — lugar para onde esse item será enviado a partir do momento em que seu filtro
é definido.

![Célula em Massa vazia](assets/diagrams/bulk_cell_empty.png)
![Célula em Massa particionada](assets/diagrams/bulk_cell_partitioned.png)
![Célula em Massa com conteúdo](assets/diagrams/bulk_cell_with_contents.png)

Depois que a célula começar a receber e armazenar seu respectivo tipo de item, contanto que o filtro permaneça igual ao
item já contido, ela continuará funcionando e permitirá inserção e extração adicionais assim como
uma célula comum faria. Se esse filtro for acidentalmente limpo ou substituído, no entanto, a célula entrará em erro e
ficará incapaz de aceitar novos itens. Ela ainda permitirá a extração do seu conteúdo existente em caso de
emergência e para fins de recuperação e, uma vez que o filtro original tenha sido reposto ou a célula tenha sido
esvaziada (recebendo um novo filtro não vazio), ela voltará a funcionar normalmente.

![Filtro incompatível de Célula em Massa (vazio)](assets/diagrams/bulk_cell_mismatch_1.png)
![Filtro incompatível de Célula em Massa (outro item)](assets/diagrams/bulk_cell_mismatch_2.png)

### Os Detalhes Técnicos Sobre Capacidade:

É comum pensar numa "capacidade infinita" em qualquer mod de Minecraft como sendo apenas o valor máximo possível
de um tipo de dado numérico, como o limite do Java para um "int" (cerca de 2,14 bilhões), um "long" (cerca de
9,2 *quintilhões*, ou 9,2 \* 10^**18**) ou até um "double" (que já alcança *308* ordens de magnitude, embora
não servisse aqui para trabalhar com quantidades inteiras).

A Célula em Massa deixa todos esses tipos primitivos de lado e é projetada de forma a guardar qualquer
quantidade arbitrariamente grande que um usuário possa razoavelmente conceber. De fato, mesmo que qualquer rede ME só
seja capaz de lidar com e exibir até os mencionados 9,2 quintilhões de qualquer tipo de item armazenado, a Célula em
Massa é internamente capaz de ir além desse limite e, no mínimo, de insinuar que o fez.

![Contagem de itens da célula em massa em (Long.MAX_VALUE - 1)](assets/diagrams/bulk_cell_max_count_1.png)
![Contagem de itens da célula em massa exibida além de Long.MAX_VALUE](assets/diagrams/bulk_cell_max_count_2.png)

## Compressão em Massa

<Row>
  <ItemImage id="compression_card" scale="3" />
</Row>

Até aqui, cobrimos bem como uma célula em massa funciona como um poço sem fundo efetivo para qualquer tipo de item.
No entanto, é amplamente entendido entre os jogadores que alguns tipos de itens — a saber, recursos como *lingotes
de metal* — precisam ser tratados de forma diferente para fins de armazenamento. Frequentemente, recursos como lingotes assumem
várias formas para armazenamento e fabricação, como suas contrapartes maiores em "bloco" para economizar
espaço e sua forma menor de "nugget" para fabricação. Embora normalmente seja melhor tratá-los junto com seu
respectivo lingote de alguma forma, uma Célula em Massa, na sua forma padrão, não lidaria facilmente com essa expectativa.

É aqui que entra a mecânica de ***Compressão em Massa*** graças ao **Cartão de Compressão**, um
[cartão de melhoria](ae2:items-blocks-machines/upgrade_cards.md) exclusivo da Célula em Massa para esse propósito.

<RecipeFor id="compression_card" />

Com a *Compressão* ativada por este cartão, uma Célula em Massa pode ser conscientizada das formas variantes do recurso sendo
armazenado, para aceitar igualmente essas variantes e "comprimi-las" automaticamente na variante
imediatamente superior à medida que entram. Essa compressão automática funciona de acordo com as receitas de fabricação associadas a essas variantes: se
uma dessas receitas transformasse algo como um (1) lingote de metal em nove (9) nuggets daquele metal e outra
receita transformasse esses nove nuggets de volta no lingote original, uma Célula em Massa configurada para armazenar aquele metal poderia
aceitar tanto a forma de lingote quanto a de nugget, transformando cada 9 nuggets inseridos em outro lingote na
hora.

Além disso, essa compressão automática se estende a *todas* as variantes superiores, como blocos de metal e versões ainda mais
"comprimidas" desses blocos fornecidas por tais mods, todas tratadas como uma longa "cadeia" de variantes
da menor à maior.

![Célula em massa com compressão ativada](assets/diagrams/bulk_cell_compressed_1.png)

![Conteúdo da célula em massa com compressão](assets/diagrams/bulk_cell_compressed_2.png)
![Conteúdo da célula em massa com compressão (+ AllTheCompressed)](assets/diagrams/bulk_cell_compressed_3.png)

Para que essa mecânica funcione, uma Célula em Massa rastreia internamente sua "quantidade" real apenas como a quantidade
do item de "unidade" mais pequena possível em que o recurso pode ser decomposto — tipicamente um nugget de metal, um
caco de gema, um pó ou outro equivalente. Ao longo da cadeia mais ampla mencionada, uma Célula em Massa com essa mecânica ativada
aceitará de bom grado toda e qualquer dessas variantes, maiores e menores, convertendo-as numa quantidade de "unidades"
quando aplicável, e até permitirá que qualquer uma delas seja *extraída* por meios automatizados — como o
<ItemLink id="ae2:import_bus" /> e o <ItemLink id="ae2:export_bus" /> — ou até um
[terminal](ae2:items-blocks-machines/terminals.md) (ao dar *Shift*-clique para extrair).

No caso de um mod estar presente adicionando versões de bloco muito mais "comprimidas" de um recurso, pode ser desejável
limitar até onde um recurso pode ir com a autocompressão, para rastrear mais facilmente a quantidade daquele
recurso numa forma específica — por exemplo, ao olhar a taxa daquele recurso em forma de lingote. Para esse propósito, uma
Célula em Massa com Compressão ainda dentro de uma Bancada de Células permitirá alternar seu "**corte** de compressão",
determinando a variante mais alta que a célula deve acumular em armazenamento e na qual a
autocompressão deve parar. Clicar com o botão esquerdo nesse botão desce o corte em direção ao item de unidade menor, enquanto
clicar com o botão direito sobe de volta em direção a variantes cada vez mais comprimidas.

![Corte padrão da Célula em Massa](assets/diagrams/bulk_cell_cutoff_1.png)
![Corte inferior da Célula em Massa](assets/diagrams/bulk_cell_cutoff_2.png)

![Conteúdo da célula em massa por corte](assets/diagrams/bulk_cell_cutoff_3.png)

Quando a Compressão está ativada numa célula, o comportamento de "filtro incompatível" fica um pouco mais tolerante: a célula
"lembra" efetivamente com que cadeia precisa trabalhar com base no item que já foi configurada para armazenar e, se seu filtro for
removido acidentalmente, ele pode ser substituído por qualquer uma das variantes associadas em vez da variante específica
usada anteriormente como filtro. Além disso, para fins de correção de erros, no caso de quaisquer receitas de fabricação
de alguma variante menor que o item configurado na célula serem adicionadas, removidas ou substituídas, o "fator
de unidade" atual — isto é, quantas "unidades" cabem no total numa instância do item "variante" configurado — também é armazenado
e rastreado, atualizando de acordo quando a cadeia geral dessas variantes sofre tal mudança.

Como último recurso, se em algum cenário de pior caso uma célula em massa quebrar totalmente independentemente do filtro (re)aplicado
e entrar no modo de "recuperação" mencionado, quaisquer variantes menores residuais poderão ser recuperadas junto com o
item base para o qual a célula foi inicialmente particionada.

## Módulo de Descompressão

<GameScene zoom="8" background="transparent">
  <ImportStructure src="assets/assemblies/decompression_module.snbt" />
  <IsometricCamera yaw="195" pitch="10" />
</GameScene>

Até aqui, tudo bem. Sabemos que com a Compressão ativada, uma Célula em Massa pode trabalhar facilmente com quaisquer variantes correspondentes ao
inserir ou extrair, seja por um jogador ou por dispositivos como o <ItemLink id="ae2:import_bus" /> e o
<ItemLink id="ae2:export_bus" />. Agora, e quanto à autofabricação?

Esta é um pouco mais complicada. No AE2, o sistema de [autofabricação](ae2:ae2-mechanics/autocrafting.md) depende da
premissa de que "o que você vê é o que você tem". Se o sistema de armazenamento só reporta, por exemplo, 5 lingotes de ferro, então o
sistema de fabricação assumirá que, sem um [padrão](ae2:ae2-mechanics/autocrafting.md#patterns) ali para dizer como
fazer mais lingotes de ferro, ele só terá aqueles 5 para trabalhar num dado trabalho de fabricação e será incapaz de executá-lo
se mais lingotes forem necessários. O problema surge, então, que com a Compressão configurada numa Célula em Massa que por acaso
está armazenando lingotes de ferro, o sistema de armazenamento pode muito bem nunca reportar mais que (tipicamente) 8 lingotes em dado momento se
a célula estiver definida para um corte mais alto, deixando o sistema de fabricação incapaz de trabalhar em qualquer trabalho que eventualmente exija
mais lingotes de ferro para cumprir uma etapa anterior.

A solução para esse problema vem na forma do **Módulo de Descompressão MEGA**, uma parte de cabo relativamente simples que
serve quase como uma extensão do sistema de autofabricação e das instalações de uma rede comum.

<RecipeFor id="decompression_module" />

Quando um Módulo de Descompressão é colocado em qualquer ponto da rede, ele varre continuamente a rede em busca de
Células em Massa com Compressão conectadas e gera automaticamente um conjunto de "padrões falsos" especializados para cada célula que
encontra, cobrindo cada item da cadeia de variantes correspondente àquela célula. Esses padrões são então tratados completamente
internamente, sem a necessidade de qualquer configuração dedicada de <ItemLink id="ae2:pattern_provider" /> ou
<ItemLink id="ae2:molecular_assembler" />, permitindo ao sistema de fabricação continuar operando normalmente ao
"fabricar" mais de um item que tecnicamente já está armazenado mesmo.

![Padrões de descompressão](assets/diagrams/bulk_cell_decompression.png)

Esses padrões respondem de acordo com o corte definido numa Célula em Massa individual; padrões gerados para variantes menores
que o item de corte pegam sua variante superior anterior para ser fabricada *para baixo* em várias dessas variantes menores,
enquanto padrões gerados para variantes maiores pegam várias da variante menor anterior para serem fabricadas para cima. Seja qual for a
direção tomada por esses padrões, no entanto, cada variante de ambos os lados do ponto de corte ainda é automaticamente
contabilizada caso um trabalho de fabricação maior precise delas.

O módulo também permite definir uma [prioridade](ae2:ae2-mechanics/autocrafting.md#priority) "global" para todos esses
padrões juntos, relativa a qualquer infraestrutura de fabricação comum, como Provedores de Padrões com seus próprios padrões para
um dado item variante, clicando com o botão direito no módulo para abrir o menu de prioridade.

O Módulo de Descompressão é muito um dispositivo de "configure e esqueça", e você tipicamente só precisa de um módulo numa dada
rede para toda a sua funcionalidade de autofabricação ser ativada. ***TENHA EM MENTE, NO ENTANTO***, que o módulo só
funciona na mesma rede e só pode rastrear células conectadas a Baús e Gabinetes ME na mesma
rede principal que ele. Ele ***NÃO FUNCIONARÁ*** através de [sub-redes](ae2:ae2-mechanics/subnetworks.md), por exemplo, então você deve garantir que seu
armazenamento em Massa permaneça centralizado dentro da sua rede principal para que o módulo o reconheça.
