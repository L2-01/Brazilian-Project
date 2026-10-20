---
navigation:
  title: Salvar e Carregar Redes
  parent: computer/index.md
  position: 4
---

# Salvando e Carregando Redes

O Computador pode escrever todo o ajuste de nós de uma rede num arquivo `.lnet` no disco e lê-lo de volta depois. Isso deixa você manter uma biblioteca de projetos de rede — faça backup de um ajuste funcional, copie-o para outro mundo ou entregue-o a outra pessoa.

Um arquivo `.lnet` é uma fotografia em texto puro. Para cada nó da rede ele guarda o **rótulo** do nó, se ele está **visível** e a **config de área de transferência** completa do nó (todos os 9 canais, seus modos, filtros e melhorias). Ele **não** guarda posições de bloco — um arquivo é uma receita para configurar nós, não uma cópia do mundo.

## Onde os Arquivos Ficam

As redes salvas vão para:

```
config/logistics-network/networks/
```

dentro da pasta da sua instância. Cada arquivo é nomeado pela rede (higienizado — só letras, números, `.`, `_`, `-`; cortado em 48 caracteres). Você pode copiar esses arquivos entre instâncias ou compartilhá-los como qualquer outro arquivo.

## Salvando uma Rede

1. Monte uma rede a partir do [Diretório de Redes](network-directory.md).
2. No painel da rede montada, use a **Interação Primária** em **SALVAR REDE** (`Escrever arquivo .lnet`).
3. O Computador exporta a rede montada na hora e informa o resultado naquele painel.

O Computador escreve `<nome-da-rede>.lnet`. Salvar de novo com o mesmo nome de rede **sobrescreve** o arquivo existente.

### Todo Nó Precisa de um Rótulo

A exportação só funciona se **todo nó da rede tiver um rótulo**. Os rótulos são como um arquivo associa uma config salva de volta a um nó. Rótulos faltantes bloqueiam a exportação e produzem este erro em vez de um arquivo:

- `Missing labels: X nodes` — essa quantidade de nós está sem rótulo. Abra-os e nomeie-os.

Rótulos duplicados cortados não bloqueiam a exportação. A primeira entrada encontrada com um rótulo é mantida, e entradas posteriores com o mesmo rótulo cortado são puladas.

Defina os rótulos pela [Tabela de Nós](node-table.md) ou pela tela de config do nó antes de salvar.

## Carregando uma Rede

Carregar **não** constrói uma rede automaticamente. Ele puxa a config salva de um nó para a [Chave](../wrench/index.md) do Computador, que você então cola num nó real.

1. No [Diretório de Redes](network-directory.md) com **nenhuma rede montada**, use a **Interação Primária** em **CARREGAR REDE** (`Ler arquivo .lnet`) para abrir a página **FILES**.
2. Use a Interação Primária num arquivo na coluna **FILES**. Os rótulos de nó dele preenchem a coluna **LABELS**.
3. Use a Interação Primária num rótulo. A coluna **VISUALIZAR** mostra o resumo daquele nó — contagem de canais, contagem de filtros, melhorias e quaisquer itens necessários.
4. Use a Interação Primária em **COPIAR PARA CHAVE**. A config do rótulo selecionado é carregada no slot de chave do Computador.
5. Feche o Computador para devolver a chave atualizada ao seu inventário. Depois use **Tecla Modificadora 1 + Interação Secundária** (padrão: **Shift + Botão Direito**) para colar a config num nó. Veja [Copiar e Colar](../wrench/copy-paste.md) para como a colagem funciona.

Repita por rótulo para reconstruir cada nó da rede salva.

## A Página FILES

- **RECARREGAR** — revarre a pasta se você adicionou ou removeu arquivos fora do jogo.
- **FILES** / **LABELS** / **VISUALIZAR** — as três colunas descritas acima. Role a roda sobre a coluna de arquivos ou de rótulos para folhear listas longas.

Se a pasta estiver vazia, a página diz **Nenhum arquivo .lnet**. Um arquivo que não puder ser lido informa **Arquivo .lnet inválido** — o formato é texto, então um arquivo editado à mão com cabeçalho quebrado ou dados de área de transferência ruins será rejeitado.
