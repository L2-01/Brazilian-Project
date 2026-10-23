---
navigation:
  title: Boas-vindas ao Logistics Network
  position: 0
---

# Logistics Networks

Logistics Networks é um mod de transferência de itens, fluidos e energia construído em torno de nós e canais.

## Conceitos centrais

- **Nós** são pequenas entidades colocadas em blocos com capacidade de armazenamento (baús, tanques, máquinas etc.)
- **Redes** são grupos lógicos de nós que compartilham recursos
- **Canais** definem o que um nó faz — cada nó tem 9 canais configuráveis
- **Filtros** controlam exatamente o que é transferido

## Primeiros passos

1. Fabrique uma [Chave-Inglesa](wrench/index.md) e um [Nó Logístico](nodes/index.md)
2. Posicione o nó em qualquer bloco com inventário, tanque ou armazenamento de energia
3. Use **Interação Secundária (padrão: Clique Direito)** no nó com a chave para abrir a configuração
4. Atribua o nó a uma rede (ou crie uma nova)
5. Configure canais para importar ou exportar recursos

## Entendendo a transferência

Nós não transferem nada por conta própria. Um nó apenas gruda num bloco. O trabalho real acontece dentro dos **canais** do nó.

Cada canal tem uma direção:

- **Emissor** — tira recursos **do** bloco ao qual o nó está anexado.
- **Receptor** — coloca recursos **no** bloco ao qual o nó está anexado.

Uma rede é um grupo de nós que pode se comunicar. Cada nó tem 9 espaços de canal, numerados de 1 a 9. **Um Emissor só fala com um Receptor no mesmo número de canal**, em toda a rede.

Então um Emissor no canal 3 só envia para Receptores no canal 3. Um Emissor no canal 7 só envia para Receptores no canal 7. Os números de canal agem como canos rotulados — números iguais estão conectados, números diferentes não.

### Exemplo simples

1. Posicione um nó num baú cheio de ferro. Defina o **canal 1** como **Emissor — Itens**.
2. Posicione um nó numa fornalha. Defina o **canal 1** como **Receptor — Itens**.
3. Coloque os dois nós na mesma rede.

Os dois nós usam o canal 1, então estão vinculados. O Emissor puxa ferro do baú. A rede entrega ao Receptor no canal 1. O Receptor empurra o ferro para dentro da fornalha.

Isso é tudo o que uma transferência é: um Emissor puxa para fora, um Receptor no mesmo número de canal empurra para dentro, e a rede os conecta.

## Acesso à Rede

Donos de servidor escolhem quem pode usar os nós de outro jogador com a configuração **Acesso ao Nó**. O padrão é **Equipes**, que segue a filiação do FTB Teams quando esse mod está disponível. **Todos** permite qualquer jogador, enquanto **Aliados** permite colegas de equipe e equipes FTB aliadas. Sem o FTB Teams, Equipes continua restrito ao dono e Aliados não adiciona ninguém.

## Guias

- [Nós](nodes/index.md) — Posicionar, configurar e rotular nós
- [Filtros](filters/index.md) — Controlar o que é transferido
- [Computador](computer/index.md) — Monitoramento e telemetria de rede
- [Melhorias](nodes/upgrades-performance.md) — Níveis de desempenho e melhorias especiais (em Nós)
