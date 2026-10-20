---
navigation:
  title: Armadilha de Animais
  position: 8
item_ids:
  - horsepowered:animal_trap
---

# Armadilha de Animais

A Armadilha de Animais é uma jaula de madeira passiva que atrai e captura animais passivos usando isca. Uma vez capturado, o animal fica dentro da armadilha como NBT armazenado (não como entidade viva) e produz seus itens largados normais de morte a cada dois minutos e meio no inventário interno da armadilha. Funis embaixo da armadilha puxam os itens largados para processamento, automação ou armazenamento.

<Row>
<ItemImage id="horsepowered:animal_trap" scale="4" />
</Row>

## Uso

1. Coloque a Armadilha de Animais no chão. Ela pode ficar alagada para receitas de peixe.
2. Clique com o botão direito na armadilha com um item de isca válido (trigo para uma vaca, alga para salmão, e assim por diante). A isca cai no espaço de isca da armadilha e começa a girar dentro da jaula.
3. Espere. Cada receita tem um tempo mínimo de captura. O Jade mostra a contagem regressiva.
4. Passado o tempo mínimo, a armadilha rola uma chance de 5% por segundo para capturar o animal-alvo. A espera extra média é de uns 20 segundos.
5. Numa captura bem-sucedida a isca é consumida e o animal aparece girando dentro da jaula.
6. Mantenha a isca certa na armadilha. Ela produz itens largados a cada 2,5 minutos, e cada ciclo tem uma pequena chance de consumir uma isca (as receitas embutidas consomem cerca de uma isca a cada dez itens largados). Quando o espaço de isca esvazia, o temporizador de itens largados pausa até uma isca compatível ser fornecida, então uma alimentação por funil mantém tudo rodando sem supervisão.
7. Puxe os itens largados com um funil embaixo da armadilha, ou quebre a armadilha e leve tudo com você.

## Receitas de Isca

As receitas de captura padrão que vêm com o mod podem ser vistas no JEI/EMI

## Itens Largados

Quando o animal capturado está definido, a armadilha rola a tabela de saque de morte vanilla da entidade a cada 2,5 minutos. Os itens largados caem nos cinco espaços de saída dentro da armadilha. Se esses espaços encherem, os itens da próxima rolagem saltam para cima da armadilha como entidades de item.

Exemplos do que cada animal capturado produz ao longo do tempo:

* Vaca: carne e couro
* Porco: carne de porco
* Galinha: frango e penas
* Ovelha: carneiro, mais lã quando tosquiada
* Coelho: coelho, pele de coelho e, ocasionalmente, pé de coelho
* Cabra: nada na sua tabela de saque por padrão (cabras vanilla só largam chifres ao dar uma cabeçada num bloco, o que a armadilha não consegue reproduzir)
* Mooshroom: carne e couro, igual à vaca
* Marchador: linha e uma ocasional re-rolagem de sela na tabela de saque
* Salmão: salmão cru

## Interações do Jogador

* Clique direito com isca: insere a isca no espaço de isca.
* Clique direito com a mão vazia: larga todo item da armadilha no chão (a isca, se houver, mais todos os espaços de saída). O animal capturado fica dentro.
* Agache + clique direito: larga o animal capturado de volta no mundo. A armadilha volta a ficar vazia.
* Minere a armadilha com um machado de nível pedra ou melhor: a armadilha larga como item com o NBT inteiro preservado, incluindo qualquer animal capturado e itens ainda nos espaços de saída. Coloque-a de novo em qualquer lugar e ela continua exatamente de onde parou, incluindo o temporizador de itens largados.

## Automação com Funis

* Funis alimentando a armadilha só conseguem inserir isca válida no espaço de isca. Itens aleatórios são rejeitados pela verificação de validade do espaço. Armadilhas com animal continuam aceitando a isca certa, então um funil sustenta os ciclos de itens largados sem supervisão.
* Funis embaixo da armadilha puxam apenas dos cinco espaços de itens largados. O espaço de isca é travado para extração mesmo enquanto vazio, então uma configuração automática para puxar isca não é possível.
* O bloco é totalmente alagável, então um funil ou tubo pode ficar em água corrente embaixo de uma armadilha de peixe sem quebrar a coluna d'água.

## Condições de Bioma e Alagamento

Quando uma receita especifica uma tag de bioma ou um requisito de alagamento, a armadilha só conta as rolagens quando essas condições são atendidas. A isca fica, o temporizador continua rodando, mas nenhum animal é capturado até você realocar ou alagar a armadilha.

O Jade exibe em vermelho `Bioma errado` ou `Precisa de água` quando a isca está carregada mas as condições não estão satisfeitas.

## Receita de Fabricação

<RecipeFor id="horsepowered:animal_trap" />

## Observações

* O animal capturado é renderizado dentro da jaula como uma criatura de gerador de monstros vanilla, girando devagar. O mesmo renderizador é usado para o item de isca antes da captura.
* Minerar preserva a entidade capturada
* O Jade mostra o progresso ao vivo, o nome do animal capturado e uma contagem regressiva até o próximo item largado. Ele também lista o conteúdo do inventário da armadilha.
* O JEI tem uma categoria Captura mostrando cada receita registrada junto da isca, tempo, condições e do animal esperado, nomeado em texto e renderizado como o ovo gerador correspondente. As receitas podem sobrescrever ambos com os campos opcionais `title` e `icon`, o que é útil em pacotes que escondem ovos geradores da lista de itens.
