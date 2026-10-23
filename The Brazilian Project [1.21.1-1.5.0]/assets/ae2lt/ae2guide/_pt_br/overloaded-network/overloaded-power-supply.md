---
navigation:
  title: Fonte de Energia de Sobrecarga
  icon: ae2lt:overloaded_power_supply
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_power_supply
---

# Fonte de Energia de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overloaded_power_supply" scale="4" />
</Row>

A **Fonte de Energia de Sobrecarga** é uma distribuidora de FE sem fio para a rede ME de Sobrecarga. Ela puxa a energia FE armazenada na rede ME e a entrega a até **64 máquinas vinculadas sem fio** de uma vez, sem cabos de FE dedicados. Com uma **Célula de Fluxo do AppFlux** instalada, ela também pode alternar para um **Modo Sobrecarga** de alta vazão que faz buffer e rajadas de energia diretamente da célula.

> Requer **Applied Flux**. O bloco só é registrado quando o AppFlux está presente.

## Recursos Centrais

* **Distribuição de FE sem fio** para até 64 máquinas vinculadas
* **Dois modos de energia**: Normal (contínuo, alimentado pela rede ME) e Sobrecarga (com buffer na célula, em rajadas)
* **Slot para uma Célula de Fluxo**: a célula vira o buffer / cache do Modo Sobrecarga (padrão do Baú ME do AE2)
* **Agendamento adaptativo**: compartilha a mesma roda de agendamento sem fio por alvo da Interface ME de Sobrecarga
* **Visuais de estado do bloco ao vivo**: o cristal acende ao transferir; a textura anima enquanto a fonte está em sobrecarga ativa

## Modos de Energia

### Modo Normal

No Modo Normal, a fonte puxa FE diretamente da rede ME a cada tick e o distribui entre todos os alvos vinculados usando um agendador adaptativo compartilhado. Este modo fica habilitado independentemente de uma Célula de Fluxo estar instalada.

* Entrega contínua de baixo custo
* Não requer célula
* Compartilha a roda de agendamento sem fio com a Interface ME de Sobrecarga e o Fornecedor de Padrões ME de Sobrecarga

### Modo Sobrecarga

O Modo Sobrecarga exige uma Célula de Fluxo no slot de célula. A célula torna-se o buffer ativo: o FE é puxado da rede ME para a célula e despachado aos alvos em **rajadas de até 64 chamadas por alvo por tick**, com um **multiplicador de custo de 2×** aplicado para equilibrar a vazão.

* Até **64 chamadas por alvo por tick** para largura de banda extrema
* **Rotação de tickets** (~tickets de 20 ticks) mantém alvos ativos prontos sem reexaminar a cada tick
* **Multiplicador de custo de 2×** no FE com buffer na célula — a energia por FE entregue é dobrada
* Recusa-se a funcionar sem uma Célula de Fluxo instalada (status: *Célula ausente*)
* Se a célula for removida no meio do tick, qualquer FE em buffer ainda não entregue é devolvido à rede ME — nenhum FE é perdido

## Configuração

1. Coloque a **Fonte de Energia de Sobrecarga** em algum ponto da sua rede ME
2. (Opcional) Insira uma Célula de Fluxo no slot de célula para desbloquear o Modo Sobrecarga
3. Use a **Ferramenta de Conexão Sem Fio de Sobrecarga**:
   1. **Clique com o botão direito** na Fonte de Energia de Sobrecarga para selecioná-la
   2. **Clique com o botão direito na face** de cada máquina alvo para vinculá-la como receptora de FE
4. Abra a GUI da fonte e escolha o Modo Normal ou Sobrecarga

Vínculos sem fio devem estar na mesma dimensão e dentro de **128 blocos** por padrão. O limite de distância é configurável; defini-lo como 0 desativa o limite. Uma fonte pode armazenar até **64** conexões sem fio. Segure **Ctrl** ao clicar com o botão direito num alvo para alternar em lote máquinas contíguas do mesmo tipo.

## Dicas

* Para a maioria das bases, o Modo Normal basta — ele roda continuamente e não tem multiplicador de custo extra
* Use o Modo Sobrecarga para conjuntos de máquinas de alto consumo, como estruturas de fabricação em massa, quando o custo 2× for aceitável
* Uma Célula de Fluxo de tier mais alto dá um buffer de rajada maior, que suaviza curtas faltas de FE na rede ME
* A fonte pode ser usada junto com a Interface ME de Sobrecarga e o Fornecedor de Padrões ME de Sobrecarga

> Nota: o Modo Sobrecarga pode causar lag considerável. Evite rodar várias fontes sob carga pesada a menos que necessário, pois isso pode travar o jogo.
