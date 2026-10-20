---
navigation:
  title: Controlador ME de Sobrecarga
  icon: ae2lt:overloaded_controller
  parent: overloaded-network/overloaded-network-index.md
item_ids:
  - ae2lt:overloaded_controller
---

# Controlador ME de Sobrecarga

<Row>
  <BlockImage id="ae2lt:overloaded_controller" scale="4" />
</Row>

O **Controlador ME de Sobrecarga** é a versão aprimorada do <ItemLink id="ae2:controller" /> vanilla e o dispositivo central da rede de Sobrecarga. Cada controlador de Sobrecarga fornece canais extras à rede ME, além de um buffer interno de energia maior com injeção passiva de energia.

## Recursos Centrais

* **Fornecimento extra de canais**: cada controlador de Sobrecarga fornece **128 canais** à rede (padrão, configurável)
* **Capacidade interna de energia**: 16.000.000 AE
* **Injeção passiva de energia**: gera 100 AE por tique (padrão, configurável) e os armazena no próprio controlador, mantendo parte da rede funcionando mesmo sem fonte de energia externa
* **Conexões de cabo**: usa o tipo de conexão de Cabo Inteligente Denso

## Mecânica de Fornecimento de Canais

A alocação de canais numa rede de Sobrecarga difere fundamentalmente do AE2 vanilla:

* **AE2 vanilla**: usa um algoritmo BFS, com canais deduzidos segmento a segmento ao longo do caminho. Cada cabo denso carrega no máximo 32 canais.
* **Rede de Sobrecarga**: usa um **algoritmo de fluxo máximo** para alocar canais globalmente.

O que isso significa para o jogador:

* **Total de canais da rede = quantidade de controladores de Sobrecarga × 128**
* O cabo de Sobrecarga não tem gargalo de canais por cabo — um único cabo pode carregar qualquer número de canais
* Colocar mais controladores de Sobrecarga escala linearmente o teto de canais da rede

### Exemplos

| Controladores de Sobrecarga | Total de Canais da Rede |
|------------------------|------------------------|
| 1 | 128 |
| 2 | 256 |
| 4 | 512 |
| 8 | 1.024 |

## Como Usar

O Controlador ME de Sobrecarga segue as mesmas regras de colocação e multibloco do controlador vanilla.

Para dar transmissão sem fio a um multibloco de controladores, substitua apenas **um** bloco de controlador por um [Controlador Sobrecarregado Sem Fio](wireless-network.md) ou Controlador Sobrecarregado Sem Fio Avançado. Ele transmite a rede ME à qual todo o multibloco de controladores pertence, então os blocos restantes podem continuar sendo Controladores ME de Sobrecarga comuns.

Para efeito completo, combine-o com o [Cabo de Sobrecarga](overloaded-cable.md).

## Comparado ao Controlador Vanilla

| Recurso | Controlador Vanilla | Controlador ME de Sobrecarga |
|---------|--------------------|--------------------------|
| Fornecimento de canais | 32 canais por face do controlador (roteados por cabo denso) | 128 canais por controlador (alocação global por fluxo máximo) |
| Capacidade interna de energia | Menor | 16.000.000 AE |
| Injeção passiva de energia | Nenhuma | 100 AE por tique |
| Algoritmo de alocação de canais | BFS, segmento a segmento | Fluxo máximo, global |

> O Controlador ME de Sobrecarga mantém todo o comportamento básico do controlador vanilla (multibloco, gerenciamento de rede, etc.) e só aprimora as camadas de canais e energia.
