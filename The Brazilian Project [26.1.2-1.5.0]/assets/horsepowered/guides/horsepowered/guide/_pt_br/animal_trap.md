---
navigation:
  title: Armadilha de Animais
  position: 8
item_ids:
  - horsepowered:animal_trap
---

# Armadilha de Animais

A Armadilha de Animais é uma jaula de madeira passiva que atrai e captura animais pacíficos usando isca. Uma vez capturado, o animal fica dentro da armadilha como NBT armazenado (não como entidade viva) e produz seus drops normais de morte a cada poucos minutos no inventário interno da armadilha. Funis abaixo da armadilha puxam os drops para processamento, automação ou armazenamento.

<Row>
<ItemImage id="horsepowered:animal_trap" scale="4" />
</Row>

## Uso

1. Coloque a Armadilha de Animais no chão. Ela pode ficar alagada para receitas de peixe.
2. Clique com o botão direito na armadilha com um item de isca válido (trigo para vaca, algas para salmão e assim por diante). A isca cai no slot de isca da armadilha e começa a girar dentro da jaula.
3. Aguarde. Toda receita tem um tempo mínimo de captura. O Jade mostra a contagem regressiva.
4. Quando o tempo mínimo passa, a armadilha faz uma rolagem de 5% de chance por segundo para capturar o animal alvo. A espera extra média é de cerca de 20 segundos.
5. Numa captura bem-sucedida, a isca é consumida e o animal aparece girando dentro da jaula.
6. Mantenha isca correspondente na armadilha. A armadilha produz drops a cada 2,5 minutos, e cada ciclo tem uma pequena chance de consumir uma isca (as receitas embutidas consomem cerca de uma isca a cada dez drops). Quando o slot de isca fica vazio, o temporizador de drops pausa até que isca correspondente seja fornecida, então um funil alimentando mantém tudo funcionando sem supervisão.
7. Puxe os drops com um funil abaixo da armadilha, ou quebre a armadilha e leve tudo com você.

## Receitas de Isca

As receitas de captura padrão que vêm com o mod podem ser vistas no JEI/EMI.

## Drops

Quando o animal capturado está definido, a armadilha rola a tabela de itens de morte vanilla da entidade a cada 2,5 minutos. Os drops caem nos cinco slots de saída dentro da armadilha. Se esses slots encherem, os itens da próxima rolagem saltam para cima da armadilha como entidades de item.

Exemplos do que cada animal capturado produz com o tempo:

* Vaca: carne bovina e couro
* Porco: costeleta de porco
* Galinha: frango e penas
* Ovelha: carneiro e lã quando tosquiada
* Coelho: coelho, pele de coelho e, ocasionalmente, pé de coelho
* Cabra: nada em sua tabela de itens por padrão (cabras vanilla só derrubam chifres ao investir contra um bloco, o que a armadilha não consegue reproduzir)
* Coguvaca: carne bovina e couro, igual à vaca
* Lavagante: linha e a ocasional sela rolando na tabela de itens
* Salmão: salmão cru

## Interações do Jogador

* Clique direito com isca: insere isca no slot de isca.
* Clique direito com a mão vazia: joga no chão todo item da armadilha (a isca, se houver, mais todos os slots de saída). O animal capturado permanece dentro.
* Agachar + clique direito: solta o animal capturado de volta no mundo. A armadilha volta a ficar vazia.
* Minerar a armadilha com um machado de nível pedra ou superior: a armadilha cai como item com todo o seu NBT preservado, incluindo qualquer animal capturado e os itens ainda nos slots de saída. Coloque-a de novo em qualquer lugar e ela continua exatamente de onde parou, incluindo o temporizador de drops.

## Automação com Funis

* Funis alimentando a armadilha só podem inserir isca válida no slot de isca. Itens aleatórios são rejeitados pela verificação de validade do slot. Armadilhas com animais capturados continuam aceitando isca correspondente, então um funil pode sustentar os ciclos de drops sem supervisão.
* Funis abaixo da armadilha puxam apenas dos cinco slots de drops. O slot de isca fica travado para extração mesmo quando vazio, então não é possível automatizar a retirada de isca.
* O bloco pode ficar totalmente alagado, então um funil ou cano pode ficar em água corrente sob uma armadilha de peixes sem quebrar a coluna de água.

## Condições de Bioma e Alagamento

Quando uma receita especifica uma tag de bioma ou um requisito de alagamento, a armadilha só conta as rolagens quando essas condições são atendidas. A isca permanece, o temporizador continua correndo, mas nenhum animal é capturado até você mover ou alagar a armadilha.

O Jade exibe em vermelho `Wrong biome` ou `Needs water` quando há isca carregada mas as condições não estão satisfeitas.

## Receita de Fabricação

<RecipeFor id="horsepowered:animal_trap" />

## Observações

* O animal capturado é renderizado dentro da jaula como a criatura de um gerador vanilla, girando lentamente. O mesmo renderizador é usado para o item de isca antes da captura.
* Minerar preserva a entidade capturada.
* O Jade mostra o progresso ao vivo, o nome do animal capturado e a contagem regressiva até o próximo drop. Ele também lista o conteúdo do inventário da armadilha.
* O JEI tem uma categoria de Captura mostrando todas as receitas registradas com sua isca, tempo, condições e o animal esperado, nomeado em texto e renderizado como o ovo gerador correspondente. As receitas podem substituir ambos com os campos opcionais `title` e `icon`, o que é útil em packs que escondem ovos geradores da lista de itens.
