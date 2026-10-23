---
navigation:
  parent: ufo_intro/qmf.md
  title: Automação AE2 e Térmica
  icon: ufo:quantum_pattern_hatch
  position: 30
---

# Automação AE2 e Térmica do QMF

## Contrato de Padrões

O Buffer de Padrões Quântico armazena até **72 padrões de processamento codificados**. O
QMF anuncia esses padrões apenas enquanto formado e conectado. A AE2 continua
dona dos ingredientes entregues por padrão; o controlador não os extrai uma
segunda vez.

Codifique a saída base determinística exibida pelo JEI. Rolagens de bônus/subproduto não
fazem parte da promessa à CPU de fabricação e retornam separadamente quando produzidas.

## Checklist de Rede

- Conecte a escotilha/nó na sua face suportada e verifique a energia da rede.
- Garanta que a CPU de fabricação possa armazenar o resultado requisitado.
- Mantenha carregado durante a operação todo chunk na área de 15×7×7.
- Se um trabalho travar, inspecione sua célula individual antes de enviar outro lote.

## Calor e Resfriamento

Instale a Escotilha de Fluido Massiva ME exigida em qualquer posição de carcaça
e conecte um tubo de fluido compatível com NeoForge. O refrigerante é consumido apenas
do seu tanque local; o armazenamento ME nunca é usado como fallback automático. O Buffer ou Proxy de Padrões Quântico também pode ocupar qualquer posição
de carcaça, mas exatamente um é exigido; nenhuma das escotilhas é válida em Vidro Vibrante.

A carga base é de **1 HU por thread ativa por tick**; a Sobrecarga eleva a base para
**5 HU por thread por tick**. A dissipação ociosa remove 1 HU a cada 40 ticks.

| Refrigerante | Conversão | Fluxo máximo |
|---|---:|---:|
| Criotêmio Gélido | 1 HU / 120 mB | 1000 mB/t |
| Refrigerante Estável | 50 HU / mB | 10 mB/t |
| Condensado de Bose-Einstein | 200 HU / mB | 10 mB/t |

O Modo Seguro interrompe o progresso no teto térmico e limita a concorrência a nove.
Catalisadores podem alterar velocidade, custo de AE, saída de bônus e calor; consulte
[Catalisadores](../catalysts.md) antes de combinar quatro catalisadores de tier alto.
