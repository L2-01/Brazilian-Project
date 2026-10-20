---
navigation:
  title: Cabeçalho
  parent: nodes/index.md
  position: 1
---

# Cabeçalho

![Cabeçalho da tela do nó — botão Visível, selo de Rede, botão Mudar, seletor de canais e Definir Rótulo](images/header-full.png)

O cabeçalho é a linha superior da tela de configuração do nó. Ele cuida de três tarefas: como o nó é renderizado no mundo, a qual rede o nó pertence e qual dos 9 canais você está editando no momento.

## Visível

![Botão de alternância Visível](images/header-visible.png)

**O que é:** um botão que controla como o nó é renderizado no mundo.

**O que faz:**

- **Visível** (o padrão): o nó é renderizado **sempre**, com opacidade total, segurando uma chave ou não.
- **Oculto**: o nó **não** é renderizado normalmente. Ele só aparece quando você segura uma chave, e enquanto exibido assim é desenhado a cerca de um terço da opacidade, então você ainda consegue ver e interagir com ele.

A visibilidade é só cosmética. Nós ocultos ainda transferem recursos exatamente como os visíveis.

**Como mudar:** use a **Interação Primária (padrão: Botão Esquerdo)** no botão. O texto alterna entre **Visível** e **Oculto** e a mudança vale na hora. Você também pode alternar em massa todos os nós de uma rede usando os botões **SHOW** / **HIDE** na Tabela de Nós do Computador.

Use Oculto quando um ajuste estiver pronto para limpar a visão, e saque uma chave quando precisar encontrar os nós de novo.

## Rede

![Selo com o nome da rede](images/header-network-pill.png)

**O que é:** o selo verde no meio do cabeçalho. Ele mostra o nome da rede a que este nó está vinculado no momento.

**O que faz:** exibe o nome atual da rede. O nome padrão de uma rede recém-criada é literalmente **Network**, então um selo que diz "Network" significa que você está numa rede com nome padrão. Qualquer outro texto significa que a rede foi renomeada.

**Como mudar:** o selo em si é um rótulo, não um botão. Para mover o nó para outra rede, use o botão **Mudar** ao lado dele.

Um nó que não está atribuído a uma rede não faz nada — todos os 9 canais ficam inativos até você escolher uma rede.

## Mudar

![Botão Mudar](images/header-change.png)

**O que é:** o botão à direita do selo de Rede.

**O que faz:** abre a tela de seleção de rede. A partir dela você pode:

- Escolher uma rede existente sua e mover o nó para ela.
- Buscar redes existentes, ou usar **Criar** para abrir um formulário de nome separado (até 32 caracteres) e entrar numa rede nova.
- Ordenar a lista com o botão na ponta direita da linha **Redes Existentes**. A lista começa com as mais novas primeiro (**Novas→Antigas**). Use a Interação Primária no botão para alternar entre **A-Z**, **Z-A** e **Antigas→Novas**, e de volta a **Novas→Antigas**. Uma rede feita antes de a ordenação existir ganha seu tempo de criação na primeira vez que um de seus nós é aberto, e até lá conta como a mais antiga.
- Sair da rede atual para o nó ficar sem atribuição.

**Como mudar de rede:** use a Interação Primária em **Mudar**, depois selecione uma rede listada ou abra **Criar**, digite um nome novo e confirme. O nó se move na hora e a tela principal volta à visão de configuração de canal.

Use isso para dividir um ajuste em redes separadas, juntar vários nós numa rede compartilhada ou renomear a rede em que o nó está.

## Seletor de Canal

![Linha do seletor de canais (0–8)](images/header-channels.png)

**O que é:** a fileira de nove botões numerados de **0** a **8**. Estes são os 9 canais do nó.

**O que faz:** escolhe qual canal está aberto no painel de configurações abaixo. Tudo sob o cabeçalho — Estado, Modo, Tipo, Filtros, Melhorias — só se aplica ao canal que você selecionou aqui.

**Indicadores:**

- **Contorno vermelho** ao redor de um número = aquele canal está selecionado (você o está editando).
- **Ponto verde** ao lado de um número = o Estado daquele canal não é Desativado (ele está ativado e rodando).
- Sem contorno e sem ponto = o canal existe, mas está desativado e não selecionado.

Todos os 9 canais rodam ao mesmo tempo uma vez ativados. O seletor só diz qual você está *olhando*, não qual está *ativo*.

**Como mudar de canal:**

- Use a Interação Primária uma vez num número de canal para selecioná-lo. As configurações abaixo trocam para a config daquele canal.
- Use a Interação Primária duas vezes num número de canal já selecionado para renomeá-lo. Uma caixa de texto aparece para você digitar um nome personalizado (até 24 caracteres). Pressione Enter para salvar, ou use a Interação Primária fora dela para cancelar.

**Nomes de canal:** cada canal pode ter seu próprio nome curto, independente do rótulo do nó. O nome só aparece quando você passa o mouse sobre o botão do canal — uma dica surge com o nome do canal. Se nenhum nome estiver definido, a dica pede para usar a Interação Primária duas vezes para definir um.

Os nomes são puramente cosméticos — não afetam transferências. Use-os para marcar canais por propósito, por exemplo `in`, `out`, `fuel`, `buffer` ou `overflow`, para lembrar o que cada canal faz quando voltar ao nó depois.

## Definir Rótulo

![Botão Definir Rótulo](images/header-set-label.png)

**O que é:** o botão abaixo da linha do seletor de canais.

**O que faz:** atribui um rótulo de texto ao nó inteiro. Os rótulos são separados tanto do nome da rede quanto dos nomes de canal — são uma forma de agrupar nós idênticos para que suas configurações de canal fiquem sincronizadas.

**Como mudar:** use a Interação Primária em **Definir Rótulo**. Uma caixa de texto abre com uma lista suspensa de todos os rótulos já em uso nesta rede. Ou:

- Escolha um rótulo existente da lista para entrar naquele grupo.
- Digite um rótulo novo (até 48 caracteres) e pressione Enter para criar um grupo novo.

Deixe o campo vazio e confirme para limpar o rótulo.

**Por que importa:** nós na mesma rede com o mesmo rótulo compartilham modos de canal, tipos, filtros, tamanhos de lote, atrasos e preferências de rotação de recursos. Seu layout de melhorias também sincroniza usando melhorias físicas do seu inventário ou do armazenamento vinculado. Os tamanhos de lote continuam limitados pelas melhorias instaladas.

Use as caixas de seleção da tabela do computador ou a multi-seleção do grafo para aplicar um rótulo a vários nós. Um rótulo existente fornece as configurações atuais do seu grupo. Para um rótulo novo, o primeiro nó selecionado fornece as configurações. Suprimentos de melhoria faltantes deixam os rótulos e configurações dos nós selecionados inalterados.

Uso típico: rotule todos os seus 20 nós de fornalha como `furnace`, configure um, e os outros 19 copiam o ajuste automaticamente. Ajustes posteriores em qualquer um deles se propagam a todos.

Os rótulos também alimentam a Tabela de Nós do Computador, onde os nós são agrupados por rótulo para facilitar a navegação.
