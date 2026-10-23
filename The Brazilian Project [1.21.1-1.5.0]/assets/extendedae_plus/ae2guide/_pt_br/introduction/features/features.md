---
navigation:
  title: Visão Geral dos Recursos
  parent: introduction/index.md
  position: 0
categories:
  - extendedae_plus features
---

# Visão Geral dos Recursos do Mod

## I. Aprimoramentos do Provedor de Padrões

Salvo indicação em contrário, os recursos a seguir suportam apenas **Provedores de Padrões do AE2** e **Provedores de Padrões do ExtendedAE**.

### 1. Modo de Bloqueio Inteligente

Aprimorado a partir do mecanismo de bloqueio original do AE2. Quando materiais de padrão idênticos são despachados continuamente, isso evita o desperdício causado pela execução concorrente de receitas. (Suporta provedores da série AdvancedAE)

> Requer que o recurso de bloqueio original esteja ativado.

<br/>

### 2. Modo de Multiplicação Inteligente

Calcula automaticamente o total de materiais necessários para um pedido de fabricação no AE2.
Esse mecanismo equivale a duplicar manualmente o padrão para a quantidade correspondente. (Suporta provedores da série AdvancedAE)

As opções configuráveis incluem:
- Limite máximo de multiplicação
- Despacho por rodízio entre múltiplos provedores de padrões (melhora a concorrência e a eficiência de distribuição)
- Fator mínimo de rendimento

**Exemplo:**

Padrão: 1 Pedregulho + 2 Lava → 1 Pedra

Ao pedir 1000 Pedras, o sistema despacha 1000 Pedregulhos e 2000 Lava de uma vez.

**Configuração Adicional:**

Defina manualmente o limite de despacho por item na caixa de entrada à esquerda do provedor de padrões.

Exemplo: Padrão 1 Pedregulho + 2 Lava → 1 Pedra, limite 64; pedir 1000 Pedras despachará apenas 32 Pedregulhos e 64 Lava por vez.

Tipos suportados: Itens, Fluidos, produtos químicos do Mekanism.

<br/>

### 3. Botão de Multiplicação Manual

Um botão de controle de multiplicação é adicionado à GUI do provedor de padrões, permitindo definir multiplicadores de padrão rapidamente sem edição repetida.

---

## II. Recursos Relacionados ao AE2

### 1. Operações Rápidas Aprimoradas

- **Clique do meio para puxar blocos:** Clicar com o botão do meio em qualquer bloco o puxa automaticamente da rede AE, se disponível (requer um terminal sem fio).
- **Preenchimento automático de padrões vazios:** Abrir o Terminal de Codificação de Padrões preenche automaticamente os padrões vazios com padrões da rede AE nos espaços.

<br/>

### 2. Aprimoramentos da Interface de Monitoramento de Fabricação

- **Shift + Clique no Material:** Abre rapidamente a interface da máquina correspondente.
- **Shift + Botão direito no Material:** Abre a UI do provedor correspondente e destaca o espaço do padrão correspondente. O provedor alvo também é destacado no mundo.
- **Shift + Clique no Botão Cancelar:** Adiciona automaticamente os materiais faltantes aos favoritos do JEI.

<br/>

### 3. Aprimoramentos do Terminal de Codificação de Padrões

- **Recurso de Envio:** Envie padrões diretamente ao provedor de padrões da máquina correspondente pelo botão de envio. Receitas puxadas do JEI detectam o nome da máquina e buscam provedores correspondentes automaticamente. A busca automática usa uma tabela de mapeamento; chaves de mapeamento podem ser adicionadas na interface de envio.
- **Limpeza Rápida:** Clique com o botão direito na caixa de busca de envio para limpar a entrada rapidamente.

<br/>

### 4. Exibição de Quantidade de Padrões e Otimização de Nomes

- Adiciona a exibição de "Quantidade de Fabricação do Padrão" nos terminais de gerenciamento de padrões e provedores do AE2 e do ExtendedAE.
- O título da UI do provedor de padrões exibe nomes personalizados pelo jogador.

<br/>

### 5. Otimização de Desempenho do AE

- Nova opção de configuração **Limite de Pausa de Fabricação** (padrão: 100000) ajusta o comportamento de pausa da thread do AE durante o cálculo do plano de fabricação, melhorando significativamente a velocidade de planos grandes.

<br/>

### 6. Extensão de Função do Cortador de Quartzo

- **Shift + Botão direito em Bloco ou Componente AE:** Copia o nome exibido ou personalizado dele.

---

## III. Aprimoramentos do ExtendedAE

### 1. Envio Rápido de Padrões

- **Detecção automática da Matriz de Montagem:** Se existir uma matriz de montagem na rede, padrões concluídos no Terminal de Codificação de Padrões (de fabricação, ferraria ou corte) são enviados automaticamente. Padrões idênticos existentes são detectados e devolvidos, evitando duplicatas. (Pressionar shift não aciona o envio automático)

<br/>

### 2. Propriedades Configuráveis

- Os multiplicadores de espaços do provedor de padrões estendido podem ser ajustados pelo arquivo de configuração.

<br/>

### 3. Aprimoramentos de Interação do Terminal

- **Destaque de Busca:** Adiciona um recurso de destaque de busca aos terminais de gerenciamento de padrões do ExtendedAE (borda 18x18 + destaque fluido em arco-íris).

---

## IV. Integração Profunda JEI & AE2

### 1. Interação Bidirecional

- **Shift + Clique esquerdo (JEI → Rede AE):** Puxa o item diretamente se disponível na rede AE; se faltar, salta para a interface de pedido.
> Requer um terminal sem fio (também pode estar no espaço de acessório).

- **Clique do meio no item do JEI:** Se existir um plano de fabricação automatizado no AE, salta para a interface de pedido.

<br/>

### 2. Sincronização JEI & Terminal

- **Tecla F:** Sincroniza o nome do item do JEI com a barra de busca do AE2 e a interface de gerenciamento de padrões do ExtendedAE.
- **Prioridade de Padrões:** Prioriza os favoritos do JEI ao escrever padrões.

---

## V. Outras Melhorias e Utilidades

### Exibição de Informações do Padrão

- Mostra informações de autoria em padrões concluídos: `Escrito por <NomeDoJogador>`
