---
navigation:
  title: Caminho e Velocidade
  icon: minecraft:dirt_path
  position: 15
---

# Caminho e Velocidade

Todo bloco movido a cavalo (rebolo, cortador, prensa, gerador) precisa de uma área de trabalho de 7x7 ao redor. O trabalhador caminha num trajeto circular no anel externo dessa área, e os blocos que o trajeto atravessa podem acelerar ou desacelerar o trabalhador.

## Área de Trabalho

- Um anel de 7x7 (o centro 3x3 é ocupado pelo bloco e uma pequena margem) deve estar livre na altura do bloco e um bloco acima.
- O quadrado de 7x7 um bloco abaixo deve ser piso firme. Caminhos de terra e qualquer outro bloco listado na config de velocidade de caminho também contam como piso.
- Alavancas colocadas dentro do anel são sempre permitidas, úteis para colocar interruptores de redstone direto no piso (prático para o Gerador).
- Shift + clique direito em qualquer bloco movido a cavalo com a mão vazia para visualizar a área. Verde = livre, Vermelho = obstruído.

## Tolerância a Obstruções

Um pequeno número de blocos não substituíveis (baús, funis, canos, engrenagens etc.) pode ficar dentro do anel sem invalidar a verificação. A tolerância padrão é de **2 blocos**, configurável em `config/horsepowered-common.toml` em `[horse_path]`.

## Velocidade do Caminho

Os blocos de piso sob o trajeto circular do trabalhador contribuem cada um com um multiplicador de velocidade. O multiplicador final é a média entre os blocos únicos ao longo do trajeto e escala a velocidade do trabalhador, o que escala diretamente a velocidade das receitas.

Padrões: terra, grama, terra grossa e terra enraizada andam a 0,5x; caminhos de terra a 1,0x; gelo compacto a 2,0x. Qualquer outro bloco usa 1,0x. Caminhos mistos fazem a média.

As entradas de velocidade e o multiplicador padrão são configuráveis em `config/horsepowered-common.toml` em `[horse_path]`.

## Velocidade do Trabalhador

A força de salto do trabalhador também muda a velocidade com que ele anda, além da velocidade do caminho. A maioria das criaturas tem força de salto 0,42 e anda em velocidade normal, e cada ponto acima ou abaixo disso adiciona ou remove a mesma quantidade de velocidade, então um cavalo com 0,7 anda a cerca de 1,3x e um cavalo com 1,0 a cerca de 1,6x.

Os dois se multiplicam: um cavalo de 1,6x em um caminho de 2,0x trabalha a 3,2x. O Jade mostra ambos em qualquer máquina com um trabalhador acoplado, e olhar para uma criatura que pode ser trabalhadora mostra sua força de salto e velocidade.

A linha de base e a escala são `workerJumpSpeedBaseline` (padrão 0,42) e `workerJumpSpeedScale` (padrão 1,0) em `[horse_path]`. Defina a escala como `0` para que todo trabalhador ande na mesma velocidade.

Criadores de pacotes podem definir uma força de salto fixa para qualquer tipo de entidade com o data map `horsepowered:horse_engine_jump_strength`, em um arquivo de datapack em `data/<namespace>/data_maps/entity_type/horse_engine_jump_strength.json`:

```json
{
  "values": {
    "minecraft:cow": 0.6,
    "#horsepowered:valid_worker": 0.5
  }
}
```

Um valor listado substitui o atributo da própria criatura. O valor é lido quando o trabalhador é acoplado, então recople o trabalhador depois de alterar o arquivo.

## Observações

- O multiplicador de velocidade é recalculado a cada verificação (a cada ~11 segundos), então você pode trocar os blocos sob um trabalhador em atividade sem prender o cavalo de novo.
- Só os blocos de piso diretamente sob o trajeto são avaliados.
