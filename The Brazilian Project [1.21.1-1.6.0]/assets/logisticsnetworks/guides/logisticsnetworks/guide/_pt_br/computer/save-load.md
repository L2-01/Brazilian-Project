---
navigation:
  title: Salvar e Carregar Redes
  parent: computer/index.md
  position: 4
---

# Salvando e Carregando Redes

O Computador pode gravar a configuração de nós de uma rede inteira num arquivo `.lnet` em disco e lê-la de volta depois. Isso permite manter uma biblioteca de projetos de rede — faça backup de uma configuração funcional, copie-a para outro mundo ou entregue-a a outra pessoa.

Um arquivo `.lnet` é um instantâneo em texto puro. Para cada nó da rede ele grava o **rótulo** do nó, se ele está **visível** e sua **configuração de área de transferência** completa (todos os 9 canais, seus modos, filtros e melhorias). Ele **não** grava posições de blocos — um arquivo é uma receita para configurar nós, não uma cópia do mundo.

## Onde os Arquivos Ficam

As redes salvas vão para:

```
config/logistics-network/networks/
```

dentro da pasta da sua instância. Cada arquivo recebe o nome da rede (higienizado — só letras, números, `.`, `_`, `-`; limitado a 48 caracteres). Você pode copiar esses arquivos entre instâncias ou compartilhá-los como qualquer outro arquivo.

## Salvando uma Rede

1. Monte uma rede pelo [Diretório de Redes](network-directory.md).
2. No painel da rede montada, use **SAVE NETWORK** (`Write .lnet file`).
3. O Computador exporta a rede montada imediatamente e informa o resultado naquele painel.

O Computador grava `<network-name>.lnet`. Salvar de novo com o mesmo nome de rede **sobrescreve** o arquivo existente.

### Todo Nó Precisa de um Rótulo

A exportação só funciona se **todo nó da rede tiver um rótulo**. Rótulos são como um arquivo casa uma configuração salva de volta a um nó. Rótulos faltantes bloqueiam a exportação e produzem este erro em vez de um arquivo:

- `Missing labels: X nodes` — essa quantidade de nós não tem rótulo. Abra-os e nomeie-os.

Rótulos duplicados após o corte de caracteres não bloqueiam a exportação. A primeira entrada encontrada com um rótulo é mantida, e entradas posteriores com o mesmo rótulo cortado são ignoradas.

Defina rótulos pela [Tabela de Nós](node-table.md) ou pela tela de configuração do nó antes de salvar.

## Carregando uma Rede

Carregar **não** reconstrói uma rede automaticamente. Ele puxa a configuração salva de um nó para a [Chave-Inglesa](../wrench/index.md) do Computador, que você então cola em um nó de verdade.

1. No [Diretório de Redes](network-directory.md), com **nenhuma rede montada**, clique em **LOAD NETWORK** (`Read .lnet file`) para abrir a página **FILES**.
2. Escolha um arquivo na coluna **FILES**. Seus rótulos de nó preenchem a coluna **LABELS**.
3. Escolha um rótulo. A coluna **PREVIEW** mostra o resumo daquele nó — contagem de canais, contagem de filtros, melhorias e quaisquer itens necessários.
4. Clique em **COPY TO WRENCH**. A configuração do rótulo selecionado é carregada no espaço de chave do Computador.
5. Pegue a chave. Use a **Tecla Modificadora 1 + Interação Secundária** (padrão: **Shift + Botão Direito**) para colar a configuração em um nó. Veja [Copiar e Colar](../wrench/copy-paste.md) para como a colagem funciona.

Repita por rótulo para reconstruir cada nó da rede salva.

## A Página FILES

- **REFRESH** — reexamina a pasta se você adicionou ou removeu arquivos fora do jogo.
- **FILES** / **LABELS** / **PREVIEW** — as três colunas descritas acima. Role a roda sobre a coluna de arquivos ou de rótulos para paginar listas longas.

Se a pasta estiver vazia, a página mostra **Sem arquivos .lnet**. Um arquivo que não pode ser interpretado informa **Arquivo .lnet inválido** — o formato é texto, então um arquivo editado à mão com cabeçalho quebrado ou dados de área de transferência ruins será rejeitado.
