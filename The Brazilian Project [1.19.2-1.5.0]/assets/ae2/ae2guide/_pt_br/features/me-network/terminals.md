---
item_ids:
  - ae2:crafting_terminal
  - ae2:terminal
  - ae2:pattern_access_terminal
  - ae2:pattern_encoding_terminal
navigation:
  title: Terminais
---

## Terminal de Itens

![Uma imagem de 3 terminais.](../../assets/large/terminal.png)

O <ItemLink id="terminal"/> é uma interface que dá acesso
aos itens armazenados na sua [Rede ME](../me-network.md). Isso também inclui
itens acessíveis através do <ItemLink id="storage_bus" />.

Ele pode ordenar e pesquisar, além de filtrar usando a <ItemLink
id="view_cell"/>. Exige um [canal](channels.md) para funcionar.

Pode ser aprimorado para um <ItemLink id="crafting_terminal"/>.

<RecipeFor id="terminal" />

## Terminal de Fabricação de Itens

![Uma imagem de 3 terminais de fabricação.](../../assets/large/crafting_terminal.png)

O <ItemLink id="crafting_terminal"/> é a versão aprimorada do <ItemLink
id="terminal"/>, com uma grade de fabricação integrada e acesso ao
Armazenamento em Rede da [Rede ME](../me-network.md).

Assim como o <ItemLink id="terminal"/>, ele também exige um [canal](channels.md) para funcionar.

<RecipeFor id="crafting_terminal" />

## Terminal de Acesso aos Padrões

Dá acesso remoto a todos os espaços de padrão dos provedores de padrões da sua rede, separados
pelo tipo de máquina em que estão. Ele mostra o tipo da máquina no
terminal, mas você pode nomear o <ItemLink id="pattern_provider"/> no <ItemLink
id="inscriber"/> ou numa Bigorna para alterar o nome
exibido no <ItemLink id="pattern_access_terminal"/>.

Somado ao fato de que você pode alternar se o provedor de padrões sequer aparece,
isso dá controle sobre a exibição do seu terminal de padrões.

Você também pode ocultar provedores de padrões cujo inventário de padrões já está cheio.

<RecipeFor id="pattern_access_terminal" />

## Terminal de Codificação de Padrões

Uma versão especializada do <ItemLink id="crafting_terminal"/> projetada para
codificar o <ItemLink id="blank_pattern"/> em <ItemLink id="crafting_pattern"/>
ou <ItemLink id="processing_pattern"/>.

Veja [fabricação automática](../auto-crafting.md) para mais detalhes sobre fabricação automatizada em geral.

Permite navegar pelo conteúdo da sua rede como os outros terminais, mas também
contém uma área para projetar padrões. Há dois modos de
codificação de padrão: Padrões de Fabricação e Padrões de Processamento. Os padrões de processamento são
projetados para máquinas que não usam receitas de fabricação padrão, como
fornalhas ou outras máquinas. Para alternar entre os modos, clique no botão à
direita da interface; quando mostrar uma bancada de trabalho comum, ele
criará Padrões de Fabricação, e quando mostrar uma fornalha, criará
Padrões de Processamento.

Para Padrões de Fabricação ("Crafts..."), você especifica os materiais de entrada
numa grade de fabricação 3x3 comum, e os materiais de saída são determinados
automaticamente.

Para Padrões de Processamento ("Creates..."), você especifica os materiais de entrada e
saída, incluindo quantidade, colocando pilhas de itens na
interface. Se uma operação de processamento não tiver sucesso garantido (como
produtos secundários de algumas máquinas), ela não funcionará corretamente como
Padrão de Processamento.

<RecipeFor id="pattern_encoding_terminal" />
