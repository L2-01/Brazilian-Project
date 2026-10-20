---
navigation:
  parent: introduction/index.md
  title: Transceptor Sem Fio
  position: 1
  icon: extendedae_plus:wireless_transceiver
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:wireless_transceiver
---

# Transceptor Sem Fio

<BlockImage id="extendedae_plus:wireless_transceiver" scale="5" />

O **Transceptor Sem Fio** é um dispositivo sem fio avançado do AE que combina a conveniência dos conectores sem fio com as capacidades interdimensionais dos Anéis Quânticos, permitindo que canais da Rede ME sejam transmitidos sem fio para múltiplos locais.

## Mecanismo de Funcionamento

### Conceito Básico
O Transceptor Sem Fio usa uma arquitetura **mestre-escravo**:
- **Mestre:** Conectado à Rede ME de origem que fornece o canal.
- **Escravo:** Colocado onde o canal é necessário, recebendo-o de um mestre. **Um mestre pode servir a múltiplos escravos.**

### Transmissão Interdimensional
Suporta transmissão de canais entre dimensões.  
**Requisito:** Os chunks do mestre e do escravo devem permanecer carregados.

## Guia de Operação

### Configurações de Modo e Frequência

- **Botão direito com a mão vazia:** Alterna o modo **Mestre/Escravo** do dispositivo.
- **Shift + Botão direito:** **Aumenta** a frequência de pareamento do dispositivo.
- **Shift + Botão esquerdo:** **Diminui** a frequência de pareamento do dispositivo.
- **Segurar Chave-Inglesa + Botão esquerdo:** Ajusta rapidamente a frequência do transceptor.
- **Chave-Inglesa + Botão direito:** **Trava** o modo e a frequência atuais para evitar alterações acidentais.
- **Faca de Quartzo:** Renomeia o transceptor. A interface Jade do escravo exibirá o nome do mestre conectado para facilitar a identificação e o gerenciamento.

### Propriedade e Segurança (v1.4.4+)

A partir da versão 1.4.4, o Transceptor Sem Fio suporta vinculação de propriedade para maior segurança e isolamento de canais:
- **Propriedade Padrão:** Transceptores colocados antes da 1.4.4 são considerados **dispositivos públicos**.
- **Vinculação Automática:** A partir da 1.4.4, transceptores recém-colocados são automaticamente vinculados ao jogador que os colocou.
- **Suporte ao FTB Teams:** Os dispositivos podem ser vinculados a equipes do FTB. **Transceptores de equipes ou jogadores diferentes não podem se comunicar mesmo que as frequências coincidam**, garantindo o isolamento dos canais.

> **Aviso Importante de Atualização:**  
> Ao atualizar de uma versão antiga para a 1.4.4 ou superior:
> - Se o **mestre público** antigo for removido, você deve quebrar e recolocar os **dispositivos escravos** correspondentes para concluir a vinculação de propriedade; caso contrário, eles falharão ao conectar.
