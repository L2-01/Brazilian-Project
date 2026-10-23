---
navigation:
  title: Salvar e Carregar Redes
  parent: computer/index.md
  position: 4
---

# Salvando e Carregando Redes

O Computador pode gravar toda a configuração de nós de uma rede num arquivo `.lnet` em disco e lê-lo de volta depois. Isso permite manter uma biblioteca de modelos de rede — guarde um setup funcional, copie para outro mundo ou entregue a outra pessoa.

Um arquivo `.lnet` é um retrato em texto puro. Para cada nó da rede ele guarda o **rótulo** do nó, se ele é **visível**, e a **configuração de área de transferência** completa do nó (todos os 9 canais, seus modos, filtros e melhorias). Ele **não** guarda posições de blocos — um arquivo é uma receita para configurar nós, não uma cópia do mundo.

## Onde ficam os arquivos

As redes salvas ficam em:

```
config/logistics-network/networks/
```

dentro da pasta da sua instância. Cada arquivo recebe o nome da rede (higienizado — só letras, números, `.`, `_`, `-`; limitado a 48 caracteres). Você pode copiar esses arquivos entre instâncias ou compartilhá-los como qualquer outro arquivo.

## Salvando uma rede

1. Monte uma rede pelo [Diretório de Redes](network-directory.md).
2. No painel da rede montada, use **Interação Primária** em **SALVAR REDE** (`Write .lnet file`).
3. O Computador exporta a rede montada na hora e informa o resultado naquele painel.

O Computador grava `<network-name>.lnet`. Salvar de novo com o mesmo nome de rede **sobrescreve** o arquivo existente.

### Todo nó precisa de um rótulo

A exportação só funciona se **todos os nós da rede tiverem rótulo**. Os rótulos são como um arquivo associa uma configuração salva de volta a um nó. Rótulos ausentes bloqueiam a exportação e produzem este erro em vez de um arquivo:

- `Missing labels: X nodes` — essa quantidade de nós não tem rótulo. Abra-os e nomeie-os.

Rótulos duplicados após a higienização não bloqueiam a exportação. A primeira entrada encontrada com um rótulo é mantida, e as posteriores com o mesmo rótulo higienizado são ignoradas.

Defina os rótulos pela [Tabela de Nós](node-table.md) ou pela tela de configuração do nó antes de salvar.

## Carregando uma rede

Carregar **não** reconstrói uma rede automaticamente. Ele puxa a configuração de um nó salvo para a [Chave-Inglesa](../wrench/index.md) do Computador, que você então cola num nó de verdade.

1. No [Diretório de Redes](network-directory.md), com **nenhuma rede montada**, use **Interação Primária** em **CARREGAR REDE** (`Read .lnet file`) para abrir a página **ARQUIVOS**.
2. Use Interação Primária num arquivo na coluna **ARQUIVOS**. Os rótulos de nó dele preenchem a coluna **RÓTULOS**.
3. Use Interação Primária num rótulo. A coluna **VISUALIZAR** mostra o resumo daquele nó — contagem de canais, de filtros, melhorias e itens necessários.
4. Use Interação Primária em **COPIAR PARA CHAVE**. A configuração do rótulo selecionado é carregada no espaço de chave do Computador.
5. Feche o Computador para devolver a chave atualizada ao seu inventário. Depois use **Tecla Modificadora 1 + Interação Secundária** (padrão: **Shift + Clique Direito**) para colar a configuração num nó. Veja [Copiar e Colar](../wrench/copy-paste.md) para entender a colagem.

Repita por rótulo para reconstruir cada nó da rede salva.

## A página ARQUIVOS

- **RECARREGAR** — reexamina a pasta se você adicionou ou removeu arquivos fora do jogo.
- **ARQUIVOS** / **RÓTULOS** / **VISUALIZAR** — as três colunas descritas acima. Role a roda do mouse sobre a coluna de arquivos ou de rótulos para paginar listas longas.

Se a pasta estiver vazia a página mostra **Nenhum arquivo .lnet**. Um arquivo que não pode ser interpretado informa **Arquivo .lnet inválido** — o formato é texto, então um arquivo editado à mão com cabeçalho quebrado ou dados de área de transferência ruins é rejeitado.
