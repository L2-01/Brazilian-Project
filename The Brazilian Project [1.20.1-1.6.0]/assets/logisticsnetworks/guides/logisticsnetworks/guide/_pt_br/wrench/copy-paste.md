---
navigation:
  title: Copiar / Colar
  parent: wrench/index.md
  position: 2
---

# Modo Copiar / Colar

Este modo transforma a chave em uma ferramenta de área de transferência. Você copia um nó totalmente configurado para a chave e depois cola aquela configuração em outros nós — um de cada vez, ou em massa por todos os blocos conectados correspondentes. Copiar/Colar também tem uma tela de edição dedicada se você quiser montar um modelo direto na chave sem tocar em um nó ativo.

Troque para Copiar/Colar com **Shift + roda do mouse**. A sobreposição do HUD confirma o modo.

## Copiar um Nó

**Clique com o botão direito num nó configurado** com a chave. A área de transferência da chave é substituída por uma cópia completa da configuração do nó:

- Todos os 9 canais (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome do canal).
- Todo item de filtro na grade de filtros de cada canal.
- Toda melhoria instalada no nó.
- O rótulo do nó.
- A atribuição de rede do nó.
- O estado de visibilidade de renderização do nó.

Nada é removido do nó — copiar não é destrutivo. A área de transferência fica gravada no próprio item da chave e **persiste entre sessões de jogo**, então você pode fabricar uma chave, copiar um modelo, guardá-la num baú e pegá-la de volta semanas depois.

## Colar num Nó

**Shift + botão direito num nó** com a chave. A chave tenta aplicar sua área de transferência ao nó alvo. Três coisas acontecem numa colagem bem-sucedida:

1. Os canais, filtros e melhorias do nó alvo são sobrescritos com a configuração da área de transferência.
2. Quaisquer itens de filtro ou melhoria que o alvo precise e não tenha são **puxados do seu inventário automaticamente**. A chave descobre o que precisa consumir.
3. Quaisquer itens de filtro ou melhoria que o alvo tinha **antes** da colagem são devolvidos ao seu inventário. Se seu inventário estiver cheio, eles caem no chão ao seu lado para nada se perder.

### Quando uma colagem falha

- **Itens faltando** — você não tem os itens de filtro ou melhoria que o modelo da área de transferência exige. A colagem é abortada; nada no nó alvo muda. Pegue os itens faltantes e tente de novo.
- **Sem mudanças** — a área de transferência está vazia ou é idêntica ao alvo; nada a fazer.

A chave imprime uma mensagem curta no chat dizendo o que aconteceu.

### Copiar/Colar também copia o rótulo

Colar **mantém o rótulo da área de transferência** no nó alvo. Isso significa que o alvo entra instantaneamente no grupo de rótulo da origem e fica sincronizado com ele — qualquer ajuste futuro num colega de rótulo se aplica a todo nó com o mesmo rótulo.

Se você não quiser que o rótulo venha junto, edite a área de transferência (veja abaixo) e limpe o campo de rótulo antes de colar.

## Colagem em Massa em Blocos Conectados

**Ctrl + botão direito num nó** no modo Copiar/Colar. A chave faz um preenchimento em varredura a partir daquele nó por todo **bloco conectado do mesmo tipo** (examinando até 16.384 blocos) e cola a área de transferência em todo nó que encontrar naquela sequência conectada.

Uso típico: você tem uma fileira longa de 20 fornalhas com um nó em cada uma. Configure um nó de fornalha, copie-o, depois Ctrl + botão direito em qualquer uma das 20 — todas as outras 19 são atualizadas de uma vez.

As regras de consumo de inventário ainda valem por nó: se você ficar sem itens de filtro ou melhoria no meio da colagem, os nós restantes são ignorados e a chave informa quantos foram aplicados.

## Editor da Área de Transferência

Em vez de copiar de um nó ativo, você pode montar um modelo direto na chave.

**Clique com o botão direito no ar** (sem bloco à sua frente) no modo Copiar/Colar. A tela do Editor da Área de Transferência abre. Nela você pode:

- Editar toda configuração de canal (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome) exatamente como faria num nó de verdade.
- Arrastar itens de filtro do seu inventário para os espaços de filtro; arrastá-los de volta para remover.
- Arrastar itens de melhoria para os espaços de melhoria.
- Limpar a área de transferência inteira com o botão **Limpar**.

As mudanças são salvas no NBT da chave quando o menu fecha, então o modelo persiste.

O Editor da Área de Transferência é útil para projetar uma configuração uma vez e posicioná-la em massa em blocos novos sem nunca configurar um nó de referência físico antes.
