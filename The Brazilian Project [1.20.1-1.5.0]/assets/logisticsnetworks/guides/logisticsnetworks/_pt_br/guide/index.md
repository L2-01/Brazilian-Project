---
navigation:
  title: Bem-vindo à Logistics Network
  position: 0
---

# Logistics Networks

Logistics Networks é um mod de transferência de itens, fluidos, energia e produtos químicos construído em torno de nós e canais.

## Conceitos Centrais

- **Nós** são pequenas entidades colocadas em blocos com capacidade de armazenamento (baús, tanques, máquinas, etc.)
- **Redes** são grupos lógicos de nós que compartilham recursos
- **Canais** definem o que um nó faz — cada nó tem 9 canais configuráveis
- **Filtros** controlam exatamente o que é transferido

## Começando

1. Fabrique uma [Chave-Inglesa](wrench/index.md) e um [Nó Logístico](nodes/index.md)
2. Coloque o nó em qualquer bloco com inventário, tanque ou armazenamento de energia
3. Clique com o botão direito no nó com a chave-inglesa para abrir a configuração
4. Atribua o nó a uma rede (ou crie uma nova)
5. Configure canais para importar ou exportar recursos

## Entendendo a Transferência

Os nós não transferem nada sozinhos. Um nó apenas se prende a um bloco. O trabalho real acontece dentro dos **canais** do nó.

Todo canal tem uma direção:

- **Emissor** — tira recursos **do** bloco ao qual o nó está preso.
- **Receptor** — coloca recursos **dentro** do bloco ao qual o nó está preso.

Uma rede é um grupo de nós que podem conversar entre si. Cada nó tem 9 espaços de canal, numerados de 1 a 9. **Um Emissor só conversa com um Receptor no mesmo número de canal**, em toda a rede.

Então um Emissor no canal 3 só envia para Receptores no canal 3. Um Emissor no canal 7 só envia para Receptores no canal 7. Os números de canal funcionam como tubos rotulados — números iguais estão conectados, números diferentes não estão.

### Exemplo Simples

1. Coloque um nó em um baú cheio de ferro. Defina o **canal 1** como **Emissor — Itens**.
2. Coloque um nó em uma fornalha. Defina o **canal 1** como **Receptor — Itens**.
3. Coloque os dois nós na mesma rede.

Ambos os nós usam o canal 1, então estão vinculados. O Emissor puxa ferro do baú. A rede o entrega ao Receptor no canal 1. O Receptor empurra o ferro para dentro da fornalha.

Isso é tudo o que uma transferência é: um Emissor puxa para fora, um Receptor no mesmo número de canal empurra para dentro, e a rede os conecta.

## Guias

- [Nós](nodes/index.md) — Colocando, configurando e rotulando nós
- [Filtros](filters/index.md) — Controlando o que é transferido
- [Computador](computer/index.md) — Monitoramento de rede e telemetria
- [Melhorias](nodes/upgrades-performance.md) — Níveis de desempenho e melhorias especiais (dentro de Nós)
