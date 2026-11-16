---
item_ids: [logisticsnetworks:recipe_card]
navigation:
  title: Cartão de Receita
  parent: filters/index.md
  position: 1
---

# Cartão de Receita

Um Cartão de Receita faz um canal enviar conjuntos de receita inteiros em vez de recursos soltos. Um cartão pode misturar itens, fluidos e produtos químicos do Mekanism. Com um cartão para 2 ferros + 1.000 mB de água, os receptores só recebem 2 ferros e 1.000 mB de água juntos, nunca o ferro sozinho.

## Escrevendo uma receita

Fabrique papel, redstone e uma pepita de ferro para obter um cartão em branco. Clique com o botão direito num cartão para abri-lo. Com JEI ou EMI, abra qualquer receita e pressione **+** para copiar seus ingredientes para o cartão, incluindo fluidos e produtos químicos. Você também pode clicar numa célula segurando um item, digitar a quantidade e pressionar **#** para alternar entre o item exato e suas etiquetas. Segure a **Tecla Modificadora 1** (Shift por padrão) ao clicar com um balde ou tanque para adicionar o que está dentro em vez do recipiente. Quantidades de fluidos e produtos químicos são em mB. Clique com o botão direito numa célula para removê-la. Um cartão comporta até 12 ingredientes diferentes.

Com AE2 ou Refined Storage instalado, segure um padrão codificado e clique no espaço de padrão ao lado de **Saída** para copiar os itens, fluidos e produtos químicos do padrão para o cartão. Isso substitui os ingredientes e a saída do cartão e mantém o Bloqueio. O padrão fica na sua mão.

Fabrique um cartão escrito sozinho para limpá-lo, ou junto com cartões em branco para copiá-lo neles.

## Configurações de ingredientes

Pressione o **lápis** ao lado de um ingrediente para abrir a mesma página de entrada avançada usada pelas entradas de filtro normais. O lápis fica verde quando uma configuração difere do padrão. Pressione o botão de voltar ou Esc para retornar ao cartão.

- **Lado**: por qual face do bloco receptor o ingrediente entra. Funciona para itens, fluidos e produtos químicos. **Mesmo do nó** usa a face onde o nó está. Clique com o botão direito para voltar ao início. Uma Fornalha vanilla recebe ferro bruto em **Cima** e carvão em **Norte**, tudo de um único nó.
- **NBT** (somente itens): **Rigoroso** (o padrão) só envia itens com exatamente este NBT, como dano, encantamentos e nomes personalizados. Desligue o Rigoroso para enviar qualquer item deste tipo, ou pressione **Editar** para adicionar regras NBT ou SNBT bruto, como numa entrada de filtro. Ingredientes de etiqueta nunca precisam de NBT exato, mas podem usar regras.
- **Espaços** (somente itens): os espaços do receptor para onde vai, como `0-2, 5`. Os espaços começam em 0, e `!3` significa todos os espaços exceto o 3. Deixe vazio para qualquer espaço. Pressione Enter para salvar. O botão ao lado alterna entre:
  - **Permitido**: o ingrediente pode entrar em qualquer espaço listado e os preenche normalmente.
  - **Dividir**: a quantidade é compartilhada igualmente entre os espaços listados, com sobras para os primeiros. 3 ferros em `0-2` coloca 1 em cada.

O mesmo recurso pode aparecer em várias linhas com configurações diferentes. Para um Fabricador vanilla fazendo uma picareta de ferro, use 3 lingotes de ferro em `0-2` com Dividir e 2 gravetos em `4, 7` com Dividir. Um receptor que não tenha um espaço ou lado listado, ou que não consiga aceitar sua parcela inteira, não recebe nada.

## Usando num filtro

Um cartão é uma entrada num filtro, como qualquer outra entrada, e funciona em qualquer canal que carregue os tipos do cartão. Segure-o e clique numa célula do filtro, ou clique no espaço de filtro de um nó para adicioná-lo ao filtro daquele espaço. O filtro recebe uma cópia e você fica com o cartão. A célula alterna entre os ingredientes do cartão, e seu nome mostra o que a receita produz.

Segure a **Tecla Modificadora 2** (Ctrl por padrão) e clique na célula para editar aquela cópia. Feche o editor para voltar ao filtro. Clique na célula com a mão vazia para limpá-la. Os cartões funcionam em filtros de Lista-Branca e Lista-Negra, na área de transferência da chave e são copiados com os rótulos. Um cartão no filtro de um canal de importação não faz nada. Os cartões não podem ser editados pelo grafo do computador nem por um item de filtro na sua mão.

## Enviando conjuntos

Um canal com um cartão envia conjuntos inteiros: itens, fluidos e produtos químicos juntos. Os tipos do cartão precisam estar ativados em **Recursos** no remetente e em cada receptor. Um receptor só recebe os tipos que aceita, e um cartão que precise de um tipo desligado no remetente não envia nada. Os receptores são os canais de importação com o mesmo número. Um receptor precisa aceitar cada recurso do cartão pelo seu lado, e seu próprio filtro só restringe seu próprio tipo de recurso. Produtos químicos precisam de uma Melhoria Química do Mekanism no nó remetente; sem ela, um cartão que contenha produtos químicos não envia nada.

Defina quantos conjuntos inteiros são movidos por operação na linha **Conjuntos de receitas** do painel Recursos (Máx por padrão, no mínimo um). Os limites de melhoria do nó ainda limitam cada recurso, então um conjunto maior que o limite de uma operação sai de um conjunto por vez. O modo de distribuição decide quem os recebe:

- **Prioridade / Mais Próximo / Mais Distante**: preenche o primeiro receptor, depois o próximo.
- **Rodízio por Prioridade**: um receptor por operação, alternando.
- **Distribuição Igual**: os conjuntos são divididos igualmente; as sobras vão para os primeiros receptores.

Se um receptor não couber um conjunto inteiro, ele não recebe nada. Cada ingrediente entra pelo lado definido no seu lápis, ou pelo lado do nó por padrão, então um nó pode alimentar uma máquina que recebe insumos em faces diferentes.

## Bloqueio

Ative o **Bloqueio** para enviar apenas para receptores que não contenham nenhum ingrediente de receita deste canal, em qualquer espaço ou tanque dos lados usados pelo cartão. Máquinas que recebem várias receitas nunca terão duas receitas misturadas.

## Misturando com filtros normais

Um filtro pode ter cartões e entradas normais juntos. Os conjuntos de receita vão primeiro, depois as entradas normais movem recursos soltos do seu próprio tipo. Com um cartão, o canal envia apenas conjuntos inteiros mais as entradas soltas do filtro, então outros tipos, incluindo Energia e Fonte, não se movem. Conjuntos de receita e entradas soltas usam cotas separadas: a linha Conjuntos de receitas para os cartões e o Lote do tipo para as entradas soltas.
