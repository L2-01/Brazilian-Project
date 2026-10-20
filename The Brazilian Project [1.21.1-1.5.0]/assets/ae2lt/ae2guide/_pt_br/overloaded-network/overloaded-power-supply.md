---
navigation:
  title: Fonte de Energia de Sobrecarga
  icon: ae2lt:overload_crystal
  parent: overloaded-network/overloaded-network-index.md
---

# Fonte de Energia de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overloaded_power_supply" scale="4" />
</Row>

A **Fonte de Energia de Sobrecarga** é um distribuidor sem fio de FE para a rede ME de Sobrecarga. Ela puxa energia FE armazenada na rede ME e a entrega a até **64 máquinas vinculadas sem fio** de uma vez, sem cabos de FE dedicados. Com uma **Célula Flux do AppFlux** instalada, ela também pode alternar para um **Modo de Sobrecarga** de alta taxa que armazena em buffer e dispara energia diretamente da célula.

> Requer **Applied Flux**. O bloco só é registrado quando o AppFlux está presente.

## Recursos Centrais

* **Distribuição sem fio de FE** para até 64 máquinas vinculadas
* **Dois modos de energia**: Normal (contínuo, alimentado pela rede ME) e Sobrecarga (com buffer na célula, em rajadas)
* **Espaço para uma Célula Flux**: a célula se torna o buffer / cache do Modo de Sobrecarga (padrão do Baú ME de AE2)
* **Agendamento adaptativo**: compartilha a mesma roda de agendamento sem fio por alvo da Interface ME de Sobrecarga
* **Visuais de estado de bloco ao vivo**: o cristal acende ao transferir; a textura anima enquanto a fonte está em sobrecarga ativa

## Modos de Energia

### Modo Normal

No Modo Normal, a fonte puxa FE diretamente da rede ME a cada tique e o distribui por todos os alvos vinculados usando um agendador adaptativo compartilhado. Este modo fica ativado independentemente de uma Célula Flux estar instalada.

* Entrega contínua de baixo overhead
* Não requer célula
* Compartilha a roda de agendamento sem fio com a Interface ME de Sobrecarga e o Fornecedor de Padrões ME de Sobrecarga

### Modo de Sobrecarga

O Modo de Sobrecarga exige uma Célula Flux no espaço de célula. A célula se torna o buffer ativo: FE é puxado da rede ME para a célula e despachado aos alvos em **rajadas de até 64 chamadas por alvo por tique**, com um **multiplicador de custo de 2×** aplicado para equilibrar a taxa de transferência.

* Até **64 chamadas por alvo por tique** para largura de banda extrema
* A **rotação de tickets** (tickets de ~20 tiques) mantém os alvos ativos preparados sem reescanear a cada tique
* **Multiplicador de custo de 2×** no FE com buffer na célula — a energia por FE entregue é dobrada
* Recusa funcionar se nenhuma Célula Flux estiver instalada (status: *Célula ausente*)
* Se a célula for removida no meio do tique, qualquer FE em buffer ainda não entregue é devolvido à rede ME — nenhum FE é perdido

## Configurando

1. Coloque a **Fonte de Energia de Sobrecarga** em algum lugar da sua rede ME
2. (Opcional) Insira uma Célula Flux no espaço de célula para desbloquear o Modo de Sobrecarga
3. Use a **Ferramenta de Conexão Sem Fio de Sobrecarga**:
   1. **Clique com o botão direito** na Fonte de Energia de Sobrecarga para selecioná-la
   2. **Clique com o botão direito na face** de cada máquina alvo para vinculá-la como receptora de FE
4. Abra a GUI da fonte e escolha o Modo Normal ou de Sobrecarga

Os vínculos sem fio precisam estar na mesma dimensão e a até **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Uma fonte pode armazenar até **64** conexões sem fio. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

## Dicas

* Para a maioria das bases, o Modo Normal basta — ele roda continuamente e não tem multiplicador de custo extra
* Use o Modo de Sobrecarga para aglomerados de máquinas de alto consumo, como setups de fabricação em massa, quando o custo de 2× for aceitável
* Uma Célula Flux de nível mais alto dá um buffer de rajada maior, que suaviza curtas faltas de FE na rede ME
* A fonte pode ser usada junto com a Interface ME de Sobrecarga e o Fornecedor de Padrões ME de Sobrecarga

> Nota: o Modo de Sobrecarga pode causar lag considerável. Evite rodar várias fontes sob carga pesada a menos que necessário, pois isso pode travar o jogo.
