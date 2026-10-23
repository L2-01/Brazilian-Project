---
navigation:
  title: Módulo de Teletransporte
  icon: nautec:teleport_module
  position: 14
  parent: submarine/submarine-index.md
item_ids:
  - nautec:teleport_module
---

# <Color id="light_purple">Módulo de Teletransporte</Color>

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="teleport_module" scale="2"/>
  Salta o casco para um ponto salvo.
</Column>

O Módulo de Teletransporte salta o casco e sua tripulação para um ponto de âncora que você salvou no módulo, em qualquer dimensão.

***

## <Color id="gold">Vinculando uma Âncora</Color>

Segure o módulo, fique na água e clique com o botão direito agachado. Ele salva o bloco em que você está, a dimensão e a direção para a qual olha, e confirma com "Âncora vinculada a" e as coordenadas. O casco chega voltado para aquele lado. Vincular de novo substitui a âncora antiga.

A dica mostra a âncora e sua dimensão, e quando você seleciona o módulo na barra do piloto suas coordenadas aparecem acima do nome. Cada Módulo de Teletransporte guarda sua própria âncora, então dois módulos em dois espaços lhe dão dois destinos. Eles dividem uma recarga: após um salto, todo Módulo de Teletransporte no compartimento espera os 30 segundos completos.

Escolha uma âncora em água aberta com bastante espaço ao redor. O casco é grande, e precisa de água no bloco da âncora e espaço para o casco inteiro ali.

***

## <Color id="gold">Saltando</Color>

| | Padrão |
|---|---|
| Energia por salto | 200.000 |
| Energia armazenada para começar | 200.000 (um quinto da célula) |
| Tempo de carga | 2,5 segundos |
| Recarga | 30 segundos |

Dispare-o do assento do piloto. O casco é atraído para dentro de um portal que se abre à frente da proa e, após 2,5 segundos, sai na âncora com a tripulação ainda a bordo e desliza um pouco para a frente. A condução e os outros módulos ficam travados enquanto ele carrega.

O salto é recusado, sem custo, com uma mensagem se o módulo não tiver âncora ("Esse módulo de teletransporte não tem âncora vinculada"), se a célula tiver menos de 200.000 ou se a âncora estiver fora d'água ou apertada demais para o casco ("A âncora está bloqueada ou seca"). A âncora é verificada de novo ao fim da carga. Se algo a tiver preenchido enquanto isso, o salto é cancelado com a mesma mensagem, a energia volta à célula e nenhuma recarga começa, então você pode tentar de novo na hora.

É a coisa mais cara que o casco pode fazer. Complete a carga antes de contar com ele para voltar para casa. Todos os valores são configuráveis.

***

### <Color id="aqua">Receita do Módulo de Teletransporte</Color>

<Recipe id="nautec:teleport_module"/>
