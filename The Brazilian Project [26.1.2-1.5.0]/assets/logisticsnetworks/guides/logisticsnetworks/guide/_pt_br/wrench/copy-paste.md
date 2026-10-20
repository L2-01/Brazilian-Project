---
navigation:
  title: Copiar / Colar
  parent: wrench/index.md
  position: 2
---

# Modo Copiar / Colar

Este modo transforma a chave numa ferramenta de área de transferência. Você copia um nó totalmente configurado para a chave e depois cola aquele ajuste em outros nós — um de cada vez, ou em massa por todos os blocos conectados correspondentes. O Copiar/Colar também tem uma tela de editor dedicada se você quiser montar um template direto na chave sem tocar num nó real.

Mude para Copiar/Colar com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. A sobreposição da interface confirma o modo.

## Copiar um Nó

Use a **Interação Secundária (padrão: Botão Direito)** num nó configurado com a chave. A área de transferência da chave é substituída por uma cópia completa do ajuste do nó:

- Todos os 9 canais (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome do canal).
- Cada item de filtro na grade de filtros de cada canal.
- Cada melhoria instalada no nó.
- O rótulo do nó.
- A rede atribuída ao nó.
- O estado de visibilidade de renderização do nó.

Nada é removido do nó — copiar não é destrutivo. A área de transferência fica guardada no próprio item da chave e **persiste entre sessões de jogo**, então você pode criar uma chave, copiar um template, guardá-la num baú e pegá-la de volta semanas depois.

## Colar num Nó

Use **Tecla Modificadora 1 + Interação Secundária** num nó com a chave. A chave tenta aplicar sua área de transferência ao nó-alvo. Três coisas acontecem numa colagem bem-sucedida:

1. Os canais, filtros e melhorias do nó-alvo são sobrescritos com o ajuste da área de transferência.
2. Quaisquer itens de filtro ou melhoria que o alvo precise e não tenha são **puxados do seu inventário automaticamente**. A chave descobre o que precisa consumir.
3. Quaisquer itens de filtro ou melhoria que o alvo tinha **antes** da colagem são devolvidos ao seu inventário. Se seu inventário estiver cheio, eles caem no chão ao seu lado, então nada se perde.

### Quando uma colagem falha

- **Itens faltantes** — você não tem os itens de filtro ou melhoria que o template da área de transferência exige. A colagem é abortada; nada no nó-alvo muda. Pegue os itens faltantes e tente de novo.
- **Sem mudanças** — a área de transferência está vazia ou é exatamente igual ao alvo; nada a fazer.

A chave imprime uma mensagem curta no chat dizendo o que aconteceu.

### O Copiar/Colar também copia o rótulo

Colar **mantém o rótulo da área de transferência** no nó-alvo. Isso significa que o alvo entra na hora no grupo de rótulo da origem e fica sincronizado com ele — qualquer ajuste futuro num membro do rótulo se aplica a todo nó com o mesmo rótulo.

Se você não quiser que o rótulo venha junto, edite a área de transferência (veja abaixo) e limpe o campo de rótulo antes de colar.

## Colagem em Massa em Blocos Conectados

Use **Tecla Modificadora 2 (padrão: Ctrl) + Interação Secundária** num nó no modo Copiar/Colar. A chave faz um preenchimento em cadeia a partir daquele nó por todo **bloco conectado do mesmo tipo** (varrendo até 16.384 blocos) e cola a área de transferência em cada nó que encontra naquela sequência conectada.

Uso típico: você tem uma fileira longa de 20 fornalhas com um nó em cada uma. Configure um nó de fornalha, copie-o, e use Tecla Modificadora 2 + Interação Secundária em qualquer uma das 20 — as outras 19 são atualizadas de uma vez.

As regras de consumo do inventário ainda valem por nó: se você ficar sem itens de filtro ou melhoria no meio da colagem, os nós restantes são pulados e a chave informa quantos foram aplicados.

## Editor de Área de Transferência

Em vez de copiar de um nó real, você pode montar um template direto na chave.

Use a **Interação Secundária** no ar (sem bloco à sua frente) no modo Copiar/Colar. A tela do Editor de Área de Transferência abre. Nela você pode:

- Editar cada configuração de canal (estado, modo, tipo, lado, redstone, distribuição, prioridade, lote, atraso, nome) exatamente como faria num nó real.
- Arrastar itens de filtro do seu inventário para os slots de filtro; arraste-os de volta para remover.
- Arrastar itens de melhoria para os slots de melhoria.
- Limpar toda a área de transferência com o botão **Limpar Área de Transferência**.

As mudanças são salvas no NBT da chave quando o menu fecha, então o template persiste.

O Editor de Área de Transferência é útil para desenhar um ajuste uma vez e colocá-lo em massa em blocos novos sem nunca configurar um nó de referência físico antes.
