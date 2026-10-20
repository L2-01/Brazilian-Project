---
navigation:
  title: Salvar e Carregar Redes
  parent: computer/index.md
  position: 4
---

# Salvando e Carregando Redes

O Computador pode gravar toda a configuração de nós de uma rede em um arquivo `.lnet` no disco e lê-lo de volta depois. Isso permite manter uma biblioteca de projetos de rede — faça backup de uma configuração que funciona, copie-a para outro mundo ou entregue-a para outra pessoa.

Um arquivo `.lnet` é um retrato em texto puro. Para cada nó da rede, ele armazena o **rótulo** do nó, se ele está **visível** e a **configuração da área de transferência** completa do nó (todos os 9 canais, seus modos, filtros e melhorias). Ele **não** armazena posições de blocos — um arquivo é uma receita para configurar nós, não uma cópia do mundo.

## Onde os Arquivos Ficam

As redes salvas ficam em:

```
config/logistics-network/networks/
```

dentro da pasta da sua instância. Cada arquivo recebe o nome da rede (sanitizado — apenas letras, números, `.`, `_`, `-`; limitado a 48 caracteres). Você pode copiar esses arquivos entre instâncias ou compartilhá-los como qualquer outro arquivo.

## Salvando uma Rede

1. Monte uma rede pelo [Diretório de Redes](network-directory.md).
2. No painel da rede montada, use **SALVAR REDE** (`Escrever arquivo .lnet`).
3. O Computador exporta a rede montada imediatamente e relata o resultado naquele painel.

O Computador grava `<nome-da-rede>.lnet`. Salvar de novo com o mesmo nome de rede **sobrescreve** o arquivo existente.

### Todo Nó Precisa de um Rótulo

A exportação só funciona se **todo nó da rede tiver um rótulo**. Os rótulos são como um arquivo associa uma configuração salva de volta a um nó. Rótulos ausentes bloqueiam a exportação e produzem este erro em vez de um arquivo:

- `Rótulos ausentes: X nós` — essa quantidade de nós não tem rótulo. Abra-os e dê nomes a eles.

Rótulos duplicados após o corte não bloqueiam a exportação. A primeira entrada encontrada com um rótulo é mantida, e entradas posteriores com o mesmo rótulo cortado são ignoradas.

Defina rótulos pela [Tabela de Nós](node-table.md) ou pela tela de configuração do nó antes de salvar.

## Carregando uma Rede

Carregar **não** constrói uma rede automaticamente. Ele puxa a configuração de um nó salvo para a [Chave-Inglesa](../wrench/index.md) do Computador, que você então cola num nó real.

1. No [Diretório de Redes](network-directory.md), com **nenhuma rede montada**, clique em **CARREGAR REDE** (`Ler arquivo .lnet`) para abrir a página **ARQUIVOS**.
2. Escolha um arquivo na coluna **ARQUIVOS**. Os rótulos de nó dele preenchem a coluna **RÓTULOS**.
3. Escolha um rótulo. A coluna **VISUALIZAR** mostra o resumo daquele nó — contagem de canais, contagem de filtros, melhorias e quaisquer itens necessários.
4. Clique em **COPIAR PARA CHAVE**. A configuração do rótulo selecionado é carregada no espaço de chave do Computador.
5. Pegue a chave. Use **Tecla Modificadora 1 + Interação Secundária** (padrão: **Shift + Botão Direito**) para colar a configuração num nó. Veja [Copiar / Colar](../wrench/copy-paste.md) para como a colagem funciona.

Repita por rótulo para reconstruir cada nó da rede salva.

## A Página ARQUIVOS

- **RECARREGAR** — reexamina a pasta se você adicionou ou removeu arquivos fora do jogo.
- **ARQUIVOS** / **RÓTULOS** / **VISUALIZAR** — as três colunas descritas acima. Role a roda do mouse sobre a coluna de arquivos ou de rótulos para paginar listas longas.

Se a pasta estiver vazia, a página mostra **Nenhum arquivo .lnet**. Um arquivo que não pode ser interpretado reporta **Arquivo .lnet inválido** — o formato é texto, então um arquivo editado à mão com cabeçalho quebrado ou dados de área de transferência inválidos será rejeitado.
