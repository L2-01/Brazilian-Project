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

O **Controlador ME de Sobrecarga** é a versão melhorada do <ItemLink id="ae2:controller" /> do vanilla e o dispositivo central da rede de Sobrecarga. Cada controlador de Sobrecarga fornece canais extras à rede ME e oferece um buffer de energia interno maior com injeção passiva de energia.

## Recursos Centrais

* **Fornecimento de canais extras**: cada controlador de Sobrecarga fornece **128 canais** à rede (padrão, configurável)
* **Capacidade de energia interna**: 16.000.000 AE
* **Injeção passiva de energia**: injeta automaticamente 100 AE por tick na rede (padrão, configurável) — mantém parte da rede funcionando mesmo sem fonte externa de energia
* **Conexões de cabo**: usa o tipo de conexão de cabo Denso Inteligente

## Mecânica de Fornecimento de Canais

A alocação de canais numa rede de Sobrecarga difere fundamentalmente do AE2 vanilla:

* **AE2 vanilla**: usa um algoritmo BFS, com canais descontados segmento a segmento ao longo do caminho. Cada cabo denso carrega no máximo 32 canais.
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

O Controlador ME de Sobrecarga segue as mesmas regras de posicionamento e multibloco do controlador do vanilla.

Para o efeito completo, combine-o com o [Cabo ME de Sobrecarga](overloaded-cable.md).

## Comparado ao Controlador do Vanilla

| Recurso | Controlador do Vanilla | Controlador ME de Sobrecarga |
|---------|--------------------|--------------------------|
| Fornecimento de canais | 32 canais por face de controlador (roteados pelo cabo denso) | 128 canais por controlador (alocação global por fluxo máximo) |
| Capacidade de energia interna | Menor | 16.000.000 AE |
| Injeção passiva de energia | Nenhuma | 100 AE por tick |
| Algoritmo de alocação de canais | BFS, segmento a segmento | Fluxo máximo, global |

> O Controlador ME de Sobrecarga mantém todo o comportamento básico do controlador do vanilla (multibloco, gerenciamento de rede etc.), e apenas aprimora as camadas de canais e energia.
