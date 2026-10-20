---
navigation:
  title: Boas-vindas ao Logistics Network
  position: 0
---

# Logistics Networks

Logistics Networks é um mod de transferência de itens, fluidos e energia construído em torno de nós e canais.

## Conceitos Centrais

- **Nós** são pequenas entidades colocadas em blocos com capacidade de armazenamento (baús, tanques, máquinas etc.)
- **Redes** são grupos lógicos de nós que compartilham recursos
- **Canais** definem o que um nó faz — cada nó tem 9 canais configuráveis
- **Filtros** controlam exatamente o que é transferido

## Começando

1. Crie uma [Chave-Inglesa](wrench/index.md) e um [Nó de Logística](nodes/index.md)
2. Coloque o nó em qualquer bloco com inventário, tanque ou armazenamento de energia
3. Use a **Interação Secundária (padrão: Botão Direito)** no nó com a chave para abrir a configuração
4. Atribua o nó a uma rede (ou crie uma nova)
5. Configure canais para importar ou exportar recursos

## Entendendo a Transferência

Os nós não transferem nada sozinhos. Um nó apenas gruda num bloco. O trabalho real acontece dentro dos **canais** do nó.

Todo canal tem uma direção:

- **Remetente** — tira recursos **de dentro** do bloco em que o nó está preso.
- **Destinatário** — põe recursos **para dentro** do bloco em que o nó está preso.

Uma rede é um grupo de nós que conseguem conversar entre si. Cada nó tem 9 slots de canal, numerados de 1 a 9. **Um Remetente só conversa com um Destinatário no mesmo número de canal**, em toda a rede.

Então um Remetente no canal 3 só envia para Destinatários no canal 3. Um Remetente no canal 7 só envia para Destinatários no canal 7. Os números de canal agem como canos rotulados — números iguais estão conectados, números diferentes não.

### Exemplo Simples

1. Coloque um nó num baú cheio de ferro. Ajuste o **canal 1** para **Remetente — Itens**.
2. Coloque um nó numa fornalha. Ajuste o **canal 1** para **Destinatário — Itens**.
3. Ponha os dois nós na mesma rede.

Os dois nós usam o canal 1, então estão vinculados. O Remetente puxa o ferro do baú. A rede o entrega ao Destinatário no canal 1. O Destinatário empurra o ferro para dentro da fornalha.

Isso é tudo que uma transferência é: um Remetente puxa para fora, um Destinatário no mesmo número de canal empurra para dentro, e a rede os conecta.

## Acesso à Rede

Os donos de servidor escolhem quem pode usar os nós de outro jogador com a configuração **Acesso ao Nó**. O padrão é **Equipes**, que segue a participação no FTB Teams quando esse mod está disponível. **Todos** permite qualquer jogador, enquanto **Aliados** permite colegas de equipe e equipes aliadas do FTB Teams. Sem o FTB Teams, Equipes continua restrita ao dono e Aliados não adiciona jogadores extras.

## Guias

- [Nós](nodes/index.md) — Colocando, configurando e rotulando nós
- [Filtros](filters/index.md) — Controlando o que é transferido
- [Computador](computer/index.md) — Monitoramento de rede e telemetria
- [Melhorias](nodes/upgrades-performance.md) — Níveis de desempenho e melhorias especiais (em Nós)
