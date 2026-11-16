---
navigation:
  title: Cabeçalho
  parent: nodes/index.md
  position: 1
---

# Cabeçalho

![Cabeçalho da tela do nó — alternância de Visível, pílula da Rede, botão Alterar, seletor de canais e Definir Rótulo](images/header-full.png)

O cabeçalho é a linha superior da tela de configuração do nó. Ele cuida de três tarefas: como o nó é renderizado no mundo, a qual rede o nó pertence e qual dos 9 canais você está editando no momento.

## Visível

![Botão de alternância Visível](images/header-visible.png)

**O que é:** uma alternância que controla como o nó é renderizado no mundo.

**O que faz:**

- **Visível** (o padrão): o nó é renderizado **sempre**, com opacidade total, esteja você segurando uma chave ou não.
- **Oculto**: o nó **não** é renderizado normalmente. Ele só aparece quando você segura uma chave e, enquanto exibido assim, é desenhado com cerca de um terço de opacidade para que você ainda possa vê-lo e interagir com ele.

A visibilidade é apenas cosmética. Nós ocultos transferem recursos exatamente iguais aos visíveis.

**Como alterar:** use a **Interação Primária (padrão: Botão Esquerdo)** no botão. O texto alterna entre **Visível** e **Oculto** e a mudança tem efeito instantâneo. Você também pode alternar em massa todos os nós de uma rede usando os botões **SHOW** / **HIDE** na Tabela de Nós do Computador.

Use Oculto depois que uma configuração estiver pronta para limpar a vista, e depois pegue uma chave quando precisar encontrar os nós de novo.

## Rede

![Pílula do nome da rede](images/header-network-pill.png)

**O que é:** a pílula verde no meio do cabeçalho. Ela mostra o nome da rede à qual este nó está atualmente anexado.

**O que faz:** exibe o nome da rede atual. O nome padrão de uma rede recém-criada é literalmente **Network**, então uma pílula que mostra "Network" significa que você está em uma rede com nome padrão. Qualquer outro texto significa que a rede foi renomeada.

**Como alterar:** a pílula em si é um rótulo, não um botão. Para mover o nó para outra rede, use o botão **Alterar** ao lado dela.

Um nó que não está atribuído a uma rede não faz nada — todos os 9 canais ficam inativos até você escolher uma rede.

## Alterar

![Botão Alterar](images/header-change.png)

**O que é:** o botão à direita da pílula da Rede.

**O que faz:** abre a tela de seleção de rede. De lá você pode:

- Escolher uma rede existente sua e mover o nó para ela.
- Pesquisar redes existentes, ou usar **Criar** para abrir um formulário de nome separado (até 32 caracteres) e entrar em uma nova rede.
- Ordenar a lista com o botão na extremidade direita da linha **Redes Existentes**. A lista começa com as mais novas primeiro (**Novas→Antigas**). Use a Interação Primária no botão para alternar entre **A-Z**, **Z-A** e **Antigas→Novas**, voltando a **Novas→Antigas**. Uma rede feita antes de a ordenação existir recebe sua data de criação na primeira vez que um de seus nós é aberto; até lá, ela conta como a mais antiga.
- Sair da rede atual para que o nó fique sem atribuição.

**Como trocar de rede:** use a Interação Primária em **Alterar**, depois selecione uma rede listada ou abra **Criar**, digite um novo nome e confirme. O nó se move imediatamente e a tela principal volta à visão de configuração de canal.

Use isso para dividir uma configuração em redes separadas, juntar vários nós em uma rede compartilhada ou renomear a rede em que o nó está.

## Seletor de Canais

![Linha do seletor de canais (0–8)](images/header-channels.png)

**O que é:** a linha de nove botões numerados de **0** a **8**. Esses são os 9 canais do nó.

**O que faz:** escolhe qual canal está aberto no painel de configurações abaixo. Tudo sob o cabeçalho — Status, Modo, Tipo, Filtros, Melhorias — só se aplica ao canal que você selecionou aqui.

**Indicadores:**

- **Contorno vermelho** ao redor de um número = aquele canal está selecionado no momento (você está editando-o).
- **Ponto verde** ao lado de um número = o Status daquele canal não está Desabilitado (está ativado e rodando).
- Sem contorno e sem ponto = o canal existe, mas está desabilitado e não selecionado.

Todos os 9 canais rodam ao mesmo tempo uma vez ativados. O seletor só define qual deles você está *olhando*, não qual está *ativo*.

**Como trocar de canal:**

- Use a Interação Primária uma vez em um número de canal para selecioná-lo. As configurações abaixo trocam para as daquele canal.
- Use a Interação Primária duas vezes em um número de canal já selecionado para renomeá-lo. Uma caixa de texto aparece onde você pode digitar um nome personalizado (até 24 caracteres). Pressione Enter para salvar, ou use a Interação Primária fora dela para cancelar.

**Nomeação de canais:** cada canal pode receber seu próprio nome curto, independente do rótulo do nó. O nome só aparece quando você passa o cursor sobre o botão do canal — um tooltip surge com o nome do canal. Se nenhum nome estiver definido, o tooltip sugere usar a Interação Primária duas vezes para definir um.

Nomes são puramente cosméticos — não afetam as transferências. Use-os para marcar canais por propósito, por exemplo `in`, `out`, `fuel`, `buffer` ou `overflow`, para lembrar o que cada canal faz quando voltar ao nó depois.

## Definir Rótulo

![Botão Definir Rótulo](images/header-set-label.png)

**O que é:** o botão abaixo da linha do seletor de canais.

**O que faz:** atribui um rótulo de texto ao nó inteiro. Rótulos são separados tanto do nome da rede quanto dos nomes de canais — eles são uma forma de agrupar nós idênticos para que suas configurações de canal fiquem sincronizadas.

**Como alterar:** use a Interação Primária em **Definir Rótulo**. Uma caixa de texto abre com uma lista suspensa de todos os rótulos já em uso nesta rede. Você pode:

- Escolher um rótulo existente da lista para entrar naquele grupo.
- Digitar um novo rótulo (até 48 caracteres) e pressionar Enter para criar um grupo novo.

Deixe o campo vazio e confirme para limpar o rótulo.

**Por que importa:** nós na mesma rede com o mesmo rótulo compartilham modos de canal, tipos, filtros, tamanhos de lote, atrasos e preferências de rodízio de recursos. O layout de melhorias deles também se sincroniza usando melhorias físicas do seu inventário ou do armazenamento vinculado. Os tamanhos de lote continuam limitados pelas melhorias instaladas.

Use as caixas de seleção da tabela do computador ou a multisseleção do grafo para aplicar um rótulo a vários nós. Um rótulo existente fornece as configurações atuais de seu grupo. Para um rótulo novo, escolha a origem das configurações na sua seleção. Se faltarem suprimentos de melhoria, os rótulos e configurações dos nós selecionados ficam inalterados.

Uso típico: rotule todos os seus 20 nós de fornalha como `furnace`, configure um, e os outros 19 copiam a configuração automaticamente. Ajustes posteriores em qualquer um deles se propagam para todos.

Os rótulos também alimentam a Tabela de Nós do Computador, onde os nós são agrupados por rótulo para facilitar a navegação.
