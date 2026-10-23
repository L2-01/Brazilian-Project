---
navigation:
  title: Núcleo de Ender
  icon: simpleteleporters:ender_shard
  parent: index.md
  position: 2
item_ids:
  - simpleteleporters:ender_shard
---

# Núcleo de Ender

<Row>
<Column>

O Núcleo de Ender é o componente-chave para vincular blocos de <ItemLink id="simpleteleporters:teleporter" /> entre si.

<ItemImage id="simpleteleporters:ender_shard" scale="4" />

</Column>
<Column>

## Receita

<Recipe id="simpleteleporters:ender_shard" />

</Column>
</Row>

## Como Usar

### Vinculando a um Local

1. Segure o Núcleo de Ender na mão
2. **Agache** e **clique direito** num bloco para vincular o núcleo àquele local
3. O núcleo lembrará as coordenadas exatas e a dimensão

### Informações do Tooltip

- **Núcleos não vinculados** exibem "Não vinculado" em vermelho com instruções de como vincular
- **Núcleos vinculados** mostram as coordenadas exatas X, Y, Z e a dimensão à qual estão vinculados

## Recursos

- **Empilhável**: Até 16 Núcleos de Ender podem se empilhar (somente não vinculados - núcleos vinculados com coordenadas diferentes não empilham)
- **Posicionamento Inteligente**: Ao vincular:
  - Clicar num bloco não sólido vincula àquela posição exata
  - Clicar num Teletransportador vincula a um bloco acima dele (para você aterrissar em cima)
  - Caso contrário, vincula à face clicada do bloco

## Aprimorando

Núcleos de Ender só teleportam dentro da mesma dimensão. Para habilitar **teletransporte entre dimensões**, aprimore seu Núcleo de Ender num <ItemLink id="simpleteleporters:enhanced_ender_shard" /> numa Mesa de Ferraria usando um Fragmento de Eco.

A posição vinculada é preservada durante o aprimoramento!

## Dicas

- Guarde Núcleos de Ender não vinculados de reserva para configurar rápido novos destinos de teleporte
- As coordenadas mostradas no tooltip ajudam a identificar para onde cada núcleo leva
- Para mudar o destino de um núcleo, basta agachar + clicar direito num novo local
