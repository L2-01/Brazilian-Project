---
navigation:
  title: Caminho e Velocidade
  icon: minecraft:dirt_path
  position: 15
---

# Caminho e Velocidade

Todo bloco movido a cavalo (rebolo, cortador, prensa, gerador) precisa de uma área de trabalho de 7x7 ao redor. O trabalhador anda num caminho circular no anel externo dessa área, e os blocos por onde o caminho passa podem acelerar ou atrasar o trabalhador.

## Área de Trabalho

- Um anel de 7x7 (o centro 3x3 é ocupado pelo bloco e uma pequena margem) deve estar livre na altura do bloco e um bloco acima.
- O quadrado de 7x7 um bloco abaixo deve ser piso firme. Caminhos de terra e qualquer outro bloco listado na configuração de velocidade de caminho também contam como piso.
- Alavancas colocadas dentro do anel são sempre permitidas, úteis para ter controles de redstone bem no piso (prático para o Gerador).
- Shift + clique direito em qualquer bloco movido a cavalo com a mão vazia para visualizar a área. Verde = livre, Vermelho = obstruído.

## Tolerância a Obstruções

Uma pequena quantidade de blocos não substituíveis (baús, funis, tubos, engrenagens etc.) pode ficar dentro do anel sem quebrar a validação. A tolerância padrão é **2 blocos**, configurável em `config/horsepowered-common.toml` em `[horse_path]`.

## Velocidade do Caminho

Os blocos de piso sob o caminho circular do trabalhador contribuem cada um com um multiplicador de velocidade. O multiplicador final é a média dos blocos únicos ao longo do caminho, e escala a velocidade de movimento do trabalhador, o que escala diretamente a velocidade das receitas.

Padrões: terra, grama, terra grossa e terra enraizada rodam a 0,5x; caminhos de terra rodam a 1,0x; gelo compactado roda a 2,0x. Qualquer outra coisa fica em 1,0x por padrão. Caminhos mistos fazem média.

As entradas de velocidade e o multiplicador padrão são configuráveis em `config/horsepowered-common.toml` em `[horse_path]`.

## Observações

- O multiplicador de velocidade é recalculado a cada passagem de validação (mais ou menos a cada 11 segundos), então você pode trocar os blocos sob um trabalhador em atividade sem prender o cavalo de novo.
- Só os blocos de piso diretamente sob o caminho são amostrados.
