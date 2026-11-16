---
navigation:
  title: "Introdução"
  parent: little_big_redstone:logic.md
  position: 0
---

# Introdução à Lógica

<FloatingColumn align="right">
	### Índice
	<LogicIndex />
</FloatingColumn>

Os componentes lógicos, também chamados às vezes de portas lógicas, são o que movimenta o seu circuito. Todo
componente lógico terá portas de entrada ou de saída. Essas portas são como você passa e modifica sinais para obter
os resultados desejados. Os componentes lógicos se comportam de forma analógica, parecido com o pó de redstone —
ou seja, os sinais podem ser qualquer valor de 0 (desligado) a 15. Valores de 1 para cima são considerados ligados.
Alguns componentes lógicos simplesmente deixam o valor do sinal passar. Por exemplo, passar um valor de entrada 10
num componente produzirá um valor 10 na saída, desde que a saída esteja ligada. Há exceções a esse comportamento,
indicadas na página do guia de cada componente lógico.

<br />

### Tabelas-Verdade

A lógica se comporta de maneira diferente dependendo dos sinais de entrada, normalmente de forma determinística.
Por isso, a maioria dos componentes lógicos tem o que se chama de tabela-verdade associada. Uma tabela-verdade é uma
tabela que mostra o estado da saída para cada combinação de entradas do componente lógico. A página correspondente
de cada componente lógico que possa ser descrito por uma tabela-verdade terá uma presente nela.

As entradas são representadas por letras em ordem sequencial. Por exemplo, a primeira entrada seria A, a segunda
B, e assim por diante. As saídas são representadas por Q. Se houver várias saídas, o Q é seguido de um subscrito que
denota a saída específica. Por exemplo, Q₁, Q₂, e assim por diante. Na maioria dos casos, porém, haverá apenas uma
saída numa porta.

<br />

### Usando a Lógica

A lógica pode ser colocada ou recolhida na interface de um [Microchip](../microchips.md) usando o botão esquerdo.
Enquanto segura a lógica no cursor, você pode segurar a tecla ctrl para encaixar o posicionamento numa grade.

Para configurar um componente lógico (se houver algo a configurar), você pode usar o botão direito sobre ele. Isso
abrirá um menu onde você pode alterar as configurações do componente. As configurações de cada componente estão
descritas na sua página correspondente.

Para informações sobre como conectar a lógica usando suas portas, veja a página sobre [fios](../redstone_bits.md).

Os componentes lógicos podem ser tingidos separadamente do microchip, mas por padrão herdam a cor do microchip em
que são colocados. Para tingir componentes lógicos, você pode fazê-lo na sua grade de fabricação como de costume, ou
clicar com o botão direito na lógica no menu segurando o corante para aplicá-lo.

Da mesma forma, você pode usar um balde de água ou bolas de neve para remover a cor do componente lógico. Note
que as bolas de neve são consumidas, enquanto os baldes de água não.