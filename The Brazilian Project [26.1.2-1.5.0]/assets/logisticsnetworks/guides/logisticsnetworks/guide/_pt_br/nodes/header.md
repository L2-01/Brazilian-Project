---
navigation:
  title: Cabeçalho
  parent: nodes/index.md
  position: 1
---

# Cabeçalho

![Node screen header — Visible toggle, Network pill, Change button, channel selector, and Set Label](images/header-full.png)

O cabeçalho é a linha superior da tela de configuração do nó. Ele cuida de três tarefas: como o nó é renderizado no mundo, a qual rede o nó pertence e qual dos 9 canais você está editando.

## Visível

![Visible toggle button](images/header-visible.png)

**O que é:** um alternador que controla como o nó renderiza no mundo.

**O que faz:**

- **Visível** (o padrão): o nó renderiza **sempre**, com opacidade total, segurando ou não uma chave.
- **Oculto**: o nó **não** renderiza normalmente. Ele só aparece quando você segura uma chave, e enquanto mostrado dessa forma é desenhado a cerca de um terço de opacidade para você ainda poder ver e interagir com ele.

A visibilidade é só cosmética. Nós ocultos ainda transferem recursos exatamente como os visíveis.

**Como mudar:** use **Interação Primária (padrão: Clique Esquerdo)** no botão. O texto alterna entre **Visível** e **Oculto** e a mudança tem efeito instantâneo. Você também pode alternar em massa todos os nós de uma rede usando os botões **MOSTRAR** / **ESCONDER** da Tabela de Nós do Computador.

Use Oculto quando um setup estiver pronto para limpar a vista, e depois saque uma chave quando precisar achar os nós de novo.

## Rede

![Network name pill](images/header-network-pill.png)

**O que é:** a pílula verde no meio do cabeçalho. Ela mostra o nome da rede à qual este nó está anexado.

**O que faz:** exibe o nome da rede atual. O nome padrão de uma rede recém-criada é literalmente **Network**, então uma pílula que lê "Network" significa que você está numa rede com nome padrão. Qualquer outro texto significa que a rede foi renomeada.

**Como mudar:** a pílula em si é um rótulo, não um botão. Para mover o nó para outra rede, use o botão **Mudar** ao lado dela.

Um nó que não está atribuído a uma rede não faz nada — todos os 9 canais ficam inativos até você escolher uma rede.

## Mudar

![Change button](images/header-change.png)

**O que é:** o botão à direita da pílula de Rede.

**O que faz:** abre a tela de seleção de rede. De lá você pode:

- Escolher uma rede existente sua e mover o nó para ela.
- Buscar redes existentes, ou usar **Criar** para abrir um formulário de nome separado (até 32 caracteres) e entrar numa rede nova.
- Ordenar a lista com o botão na ponta direita da linha **Redes Existentes**. A lista começa das mais novas (**Novo→Velho**). Use Interação Primária no botão para percorrer **A-Z**, **Z-A** e **Velho→Novo**, e voltar a **Novo→Velho**. Uma rede feita antes de existir ordenação ganha seu tempo de criação na primeira vez que um de seus nós é aberto, e até lá conta como a mais velha.
- Sair da rede atual para o nó ficar sem atribuição.

**Como mudar de rede:** use Interação Primária em **Mudar**, depois selecione uma rede listada ou abra **Criar**, digite um novo nome e confirme. O nó se move imediatamente e a tela principal volta à visão de configuração de canal.

Use isso para dividir um setup em redes separadas, fundir vários nós numa rede compartilhada ou renomear a rede do nó.

## Seletor de Canais

![Channel selector row (0–8)](images/header-channels.png)

**O que é:** a linha de nove botões numerados de **0** a **8**. Estes são os 9 canais do nó.

**O que faz:** escolhe qual canal está aberto no painel de configurações abaixo. Tudo sob o cabeçalho — Status, Modo, Tipo, Filtros, Melhorias — só se aplica ao canal que você selecionou aqui.

**Indicadores:**

- **Contorno vermelho** ao redor de um número = aquele canal está selecionado (você o está editando).
- **Ponto verde** ao lado de um número = o Status daquele canal não é Desativado (ele está ativado e rodando).
- Sem contorno e sem ponto = o canal existe, mas está desativado e não selecionado.

Todos os 9 canais rodam ao mesmo tempo uma vez ativados. O seletor diz respeito só a qual deles você está *olhando*, não qual está *ativo*.

**Como trocar de canal:**

- Use Interação Primária uma vez num número de canal para selecioná-lo. As configurações abaixo trocam para a config daquele canal.
- Use Interação Primária duas vezes num número de canal já selecionado para renomeá-lo. Uma caixa de texto aparece onde você pode digitar um nome personalizado (até 24 caracteres). Pressione Enter para salvar, ou use Interação Primária fora para cancelar.

**Nomeação de canal:** cada canal pode receber um nome curto próprio, independente do rótulo do nó. O nome só aparece quando você passa o mouse sobre o botão do canal — um tooltip surge com o nome do canal. Se nenhum nome estiver definido, o tooltip sugere usar Interação Primária duas vezes para definir um.

Os nomes são puramente cosméticos — não afetam transferências. Use-os para marcar canais por propósito, por exemplo `in`, `out`, `fuel`, `buffer` ou `overflow`, para lembrar o que cada canal faz quando voltar ao nó depois.

## Definir Rótulo

![Set Label button](images/header-set-label.png)

**O que é:** o botão abaixo da linha do seletor de canais.

**O que faz:** atribui um rótulo de texto ao nó inteiro. Os rótulos são separados tanto do nome da rede quanto dos nomes de canal — são um jeito de agrupar nós idênticos para que suas configurações de canal fiquem em sincronia.

**Como mudar:** use Interação Primária em **Definir Rótulo**. Uma caixa de texto abre com um menu suspenso de todos os rótulos já em uso nesta rede. Ou:

- Escolha um rótulo existente do menu para entrar naquele grupo.
- Digite um novo rótulo (até 48 caracteres) e pressione Enter para criar um grupo novo.

Deixe o campo vazio e confirme para limpar o rótulo.

**Por que importa:** nós na mesma rede com o mesmo rótulo compartilham modos de canal, tipos, filtros, tamanhos de lote, atrasos e preferências de rodízio de recursos. O layout de melhorias também sincroniza usando melhorias físicas do seu inventário ou armazenamento vinculado. Os tamanhos de lote continuam limitados pelas melhorias instaladas.

Use as caixas de seleção da tabela do computador ou a multisseleção do grafo para aplicar um rótulo a vários nós. Um rótulo existente fornece suas configurações de grupo atuais. Para um rótulo novo, o primeiro nó selecionado fornece as configurações. Melhorias faltantes deixam os rótulos e as configurações dos nós selecionados inalterados.

Uso típico: rotule todos os seus 20 nós de fornalha como `furnace`, configure um, e os outros 19 copiam o setup automaticamente. Ajustes posteriores em qualquer um propagam para todos.

Os rótulos também dirigem a Tabela de Nós do Computador, onde os nós são agrupados por rótulo para facilitar a navegação.
