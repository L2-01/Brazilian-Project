---
navigation:
  title: Copiar / Colar
  parent: wrench/index.md
  position: 2
---

# Modo Copiar / Colar

Este modo transforma a chave-inglesa numa ferramenta de área de transferência. Você copia um nó totalmente configurado para a chave-inglesa, depois cola aquela configuração em outros nós — um de cada vez, ou em massa em todo bloco conectado correspondente. Copiar/Colar também tem uma tela de editor dedicada se você quiser montar um modelo direto na chave-inglesa sem tocar num nó real.

Troque para Copiar/Colar com **Shift + roda do mouse**. A sobreposição do HUD confirma o modo.

## Copiar um Nó

**Clique com o botão direito num nó configurado** com a chave-inglesa. A área de transferência da chave é substituída por uma cópia completa da configuração do nó:

- Todos os 9 canais (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome do canal).
- Cada item de filtro na grade de filtros de cada canal.
- Cada melhoria instalada no nó.
- O rótulo do nó.
- A atribuição de rede do nó.
- O estado de visibilidade de renderização do nó.

Nada é removido do nó — copiar é não-destrutivo. A área de transferência é armazenada no próprio item da chave-inglesa e **persiste entre sessões de jogo**, então você pode fabricar uma chave, copiar um modelo, guardá-la num baú e pegá-la de volta semanas depois.

## Colar num Nó

**Shift + clique direito num nó** com a chave-inglesa. A chave tenta aplicar sua área de transferência ao nó alvo. Três coisas acontecem numa colagem bem-sucedida:

1. Os canais, filtros e melhorias do nó alvo são sobrescritos com a configuração da área de transferência.
2. Quaisquer itens de filtro ou melhoria que o alvo precisa e não tem são **retirados do seu inventário automaticamente**. A chave descobre o que tem que consumir.
3. Quaisquer itens de filtro ou melhoria que o alvo tinha **antes** da colagem são devolvidos ao seu inventário. Se seu inventário estiver cheio, eles caem no chão ao seu lado para que nada seja perdido.

### Quando a colagem falha

- **Itens faltando** — você não tem os itens de filtro ou melhoria que o modelo da área de transferência exige. A colagem é abortada; nada no nó alvo muda. Pegue os itens faltantes e tente de novo.
- **Sem mudanças** — a área de transferência está vazia ou corresponde exatamente ao alvo; nada a fazer.

A chave imprime uma mensagem curta no chat dizendo o que aconteceu.

### Copiar/Colar também copia o rótulo

Colar **mantém o rótulo da área de transferência** no nó alvo. Isso significa que o alvo entra instantaneamente no grupo de rótulo da origem e permanece sincronizado com ele — qualquer ajuste futuro num membro do rótulo se aplica a todo nó com o mesmo rótulo.

Se você não quiser que o rótulo seja transferido, edite a área de transferência (veja abaixo) e limpe o campo de rótulo antes de colar.

## Colagem em Massa em Blocos Conectados

**Ctrl + clique direito num nó** no modo Copiar/Colar. A chave faz um preenchimento a partir daquele nó por todo **bloco conectado do mesmo tipo de bloco** (varrendo até 16.384 blocos) e cola a área de transferência em todo nó que encontrar naquela sequência conectada.

Uso típico: você tem uma fileira longa de 20 fornalhas com um nó em cada uma. Configure um nó de fornalha, copie-o, depois Ctrl + clique direito em qualquer uma das 20 — todas as outras 19 são atualizadas de uma vez.

As regras de consumo de inventário ainda se aplicam por nó: se seus itens de filtro ou melhoria acabarem no meio da colagem, os nós restantes são pulados e a chave informa quantos foram aplicados.

## Editor da Área de Transferência

Em vez de copiar de um nó real, você pode montar um modelo direto na chave-inglesa.

**Clique com o botão direito no ar** (sem bloco na sua frente) no modo Copiar/Colar. A tela do Editor da Área de Transferência abre. Dentro dela você pode:

- Editar toda configuração de canal (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome) exatamente como faria num nó real.
- Arrastar itens de filtro do seu inventário para os espaços de filtro; arrastá-los de volta para remover.
- Arrastar itens de melhoria para os espaços de melhoria.
- Limpar a área de transferência inteira com o botão **Limpar**.

As mudanças são salvas no NBT da chave-inglesa quando o menu fecha, então o modelo persiste.

O Editor da Área de Transferência é útil para projetar uma configuração uma vez e colocá-la em massa em blocos novos sem nunca configurar um nó de referência físico primeiro.
