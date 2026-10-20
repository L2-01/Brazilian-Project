---
navigation:
  title: Cabeçalho
  parent: nodes/index.md
  position: 1
---

# Cabeçalho

![Cabeçalho da tela do nó — alternância Visível, pílula de Rede, botão Alterar, seletor de canais e Definir Rótulo](images/header-full.png)

O cabeçalho é a linha superior da tela de configuração do nó. Ele cuida de três tarefas: como o nó é renderizado no mundo, a qual rede o nó pertence e qual dos 9 canais você está editando no momento.

## Visível

![Botão de alternância Visível](images/header-visible.png)

**O que é:** uma alternância que controla como o nó é renderizado no mundo.

**O que faz:**

- **Visível** (o padrão): o nó é renderizado **sempre**, com opacidade total, esteja você segurando uma chave-inglesa ou não.
- **Oculto**: o nó **não** é renderizado normalmente. Ele só aparece quando você segura uma chave-inglesa, e enquanto exibido desse jeito é desenhado com cerca de um terço de opacidade para que você ainda possa ver e clicar nele.

A visibilidade é apenas cosmética. Nós ocultos ainda transferem recursos exatamente como os visíveis.

**Como mudar:** clique esquerdo no botão. O texto alterna entre **Visível** e **Oculto** e a mudança tem efeito instantâneo. Você também pode alternar em massa todos os nós de uma rede usando os botões **SHOW** / **HIDE** na Tabela de Nós do Computador.

Use Oculto quando uma configuração estiver pronta para limpar a visão, depois pegue uma chave-inglesa quando precisar encontrar os nós de novo.

## Rede

![Pílula de nome da rede](images/header-network-pill.png)

**O que é:** a pílula verde no meio do cabeçalho. Mostra o nome da rede à qual este nó está atualmente preso.

**O que faz:** exibe o nome da rede atual. O nome padrão de uma rede recém-criada é literalmente **Network**, então uma pílula dizendo "Network" significa que você está numa rede com nome padrão. Qualquer outro texto significa que a rede foi renomeada.

**Como mudar:** a pílula em si é um rótulo, não um botão. Para mover o nó para outra rede, use o botão **Alterar** ao lado dela.

Um nó que não está atribuído a uma rede não faz nada — todos os 9 canais ficam inativos até você escolher uma rede.

## Alterar

![Botão Alterar](images/header-change.png)

**O que é:** o botão à direita da pílula de Rede.

**O que faz:** abre a tela de seleção de rede. A partir dela você pode:

- Escolher uma rede existente sua e mover o nó para ela.
- Digitar um novo nome (até 32 caracteres) para criar uma rede nova e entrar nela.
- Sair da rede atual para que o nó fique sem atribuição.

**Como trocar de rede:** clique em **Alterar**, depois selecione uma rede listada ou digite um novo nome e confirme. O nó se move imediatamente e a tela principal volta à visão de configuração de canais.

Use isso para dividir uma configuração em redes separadas, juntar vários nós numa rede compartilhada ou renomear a rede em que o nó está.

## Seletor de Canais

![Linha do seletor de canais (0–8)](images/header-channels.png)

**O que é:** a fileira de nove botões numerados de **0** a **8**. Esses são os 9 canais do nó.

**O que faz:** escolhe qual canal está aberto no painel de configurações abaixo. Tudo sob o cabeçalho — Estado, Modo, Tipo, Filtros, Melhorias — só se aplica ao canal que você selecionou aqui.

**Indicadores:**

- **Contorno vermelho** ao redor de um número = aquele canal está selecionado no momento (você está editando-o).
- **Ponto verde** ao lado de um número = o Estado daquele canal não está Desativado (ele está ativado e rodando).
- Sem contorno e sem ponto = o canal existe, mas está desativado e não selecionado.

Todos os 9 canais rodam ao mesmo tempo uma vez ativados. O seletor é só sobre qual você está *olhando*, não qual está *ativo*.

**Como trocar de canal:**

- **Clique único** num número de canal para selecioná-lo. As configurações abaixo trocam para a config daquele canal.
- **Clique duplo** num número de canal já selecionado para renomeá-lo. Uma caixa de texto aparece onde você pode digitar um nome personalizado (até 24 caracteres). Pressione Enter para salvar, clique fora para cancelar.

**Nome de canal:** cada canal pode receber seu próprio nome curto, independente do rótulo do nó. O nome só aparece quando você passa o mouse sobre o botão do canal — uma tooltip aparece com o nome do canal. Se nenhum nome estiver definido, a tooltip sugere dar um clique duplo para definir um.

Os nomes são puramente cosméticos — não afetam as transferências. Use-os para marcar canais por propósito, por exemplo `in`, `out`, `fuel`, `buffer` ou `overflow`, para lembrar o que cada canal faz quando você voltar ao nó depois.

## Definir Rótulo

![Botão Definir Rótulo](images/header-set-label.png)

**O que é:** o botão abaixo da linha do seletor de canais.

**O que faz:** atribui um rótulo de texto ao nó inteiro. Rótulos são separados tanto do nome da rede quanto dos nomes de canais — são uma forma de agrupar nós idênticos para que suas configurações de canal fiquem sincronizadas.

**Como mudar:** clique em **Definir Rótulo**. Uma caixa de texto abre com um item largadodown de todos os rótulos já em uso nesta rede. Ou:

- Escolha um rótulo existente no item largadodown para entrar naquele grupo.
- Digite um novo rótulo (até 48 caracteres) e pressione Enter para criar um grupo novo.

Deixe o campo vazio e confirme para limpar o rótulo.

**Por que importa:** quando dois ou mais nós na mesma rede compartilham o mesmo rótulo, qualquer mudança em um deles é automaticamente copiada para todos os outros nós do grupo. Isso cobre modos de canal, tipos, filtros, tamanhos de lote, atrasos, itens de filtro e configurações de filtro. As melhorias ficam por nó, e os tamanhos de lote são limitados ao que as melhorias de cada nó permitem.

Uso típico: rotule todos os seus 20 nós de fornalha como `furnace`, configure um, e os outros 19 copiam a configuração automaticamente. Ajustes posteriores em qualquer um deles se propagam para todos.

Os rótulos também alimentam a Tabela de Nós do Computador, onde os nós são agrupados por rótulo para navegação mais fácil.
