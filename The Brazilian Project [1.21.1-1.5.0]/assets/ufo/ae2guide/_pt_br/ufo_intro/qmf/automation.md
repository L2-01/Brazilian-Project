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
QMF anuncia esses padrões apenas enquanto formado e conectado. O AE2 continua sendo o
dono dos ingredientes entregues por padrão; o controlador não os extrai uma
segunda vez.

Codifique a saída base determinística exibida pelo JEI. Rolagens de bônus/subproduto não
fazem parte da promessa à CPU de fabricação e voltam separadamente quando produzidas.

## Checklist de Rede

- Conecte a escotilha/nó na sua face suportada e verifique a energia da rede.
- Garanta que a CPU de fabricação consegue armazenar o resultado pedido.
- Mantenha todo chunk dentro da área de 15×7×7 carregado durante a operação.
- Se um trabalho travar, inspecione sua célula individual antes de mandar outro lote.

## Calor e Resfriamento

Instale a Escotilha de Fluido Massiva ME exigida em qualquer posição de carcaça
e conecte um tubo de fluido compatível com NeoForge. O refrigerante é consumido apenas
do seu tanque local; o armazenamento ME nunca é usado como fallback automático. O Buffer ou Proxy de Padrões Quântico pode igualmente ocupar qualquer posição
de carcaça, mas exatamente um é exigido; nenhuma escotilha é válida em Vidro Vibrante.

A carga base é **1 UC por thread ativa por tique**; o Overclock sobe a base para
**5 UC por thread por tique**. A dissipação ociosa remove 1 UC a cada 40 tiques.

| Refrigerante | Conversão | Fluxo máximo |
|---|---:|---:|
| Criotêmio Gélido | 1 UC / 120 mB | 1000 mB/t |
| Refrigerante Estável | 50 UC / mB | 10 mB/t |
| Condensado de Bose-Einstein | 200 UC / mB | 10 mB/t |

O Modo Seguro para o progresso no teto térmico e limita a concorrência a nove.
Catalisadores podem alterar velocidade, custo de AE, saída bônus e calor; consulte
[Catalisadores](../catalysts.md) antes de combinar quatro catalisadores de tier alto.
