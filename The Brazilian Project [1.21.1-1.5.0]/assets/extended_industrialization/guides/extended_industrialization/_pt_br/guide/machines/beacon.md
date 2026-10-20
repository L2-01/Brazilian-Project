---
navigation:
  title: "Sinalizador Elétrico"
  icon: "electric_beacon"
  parent: extended_industrialization:machines.md
categories:
  - Máquinas
item_ids:
  - extended_industrialization:electric_beacon
---

# Sinalizador Elétrico

<RecipeFor id="extended_industrialization:electric_beacon" />

O Sinalizador Elétrico consome poções e fornece o efeito a todos os jogadores próximos ao custo de 256 EU/t por efeito.
A duração que uma poção dura no sinalizador é determinada pelo seu efeito mais curto, que é então dividido pela metade. Na
maioria dos casos, uma poção terá apenas um efeito. Por exemplo, uma poção de velocidade de 8 minutos pode ser consumida pelo
sinalizador, que então fornecerá o efeito na área por um total de 4 minutos ao custo de 256 EU/t. Da mesma forma, uma poção
de mestre tartaruga de 40 segundos durará apenas 20 segundos, mas custará 512 EU/t, já que tem dois efeitos (lentidão e
resistência). Como as poções são consumidas pelo sinalizador, é recomendado criar algum tipo de loop de automação usando a
[Cervejaria](brewery.md) para manter o sinalizador funcionando indefinidamente.

O alcance do sinalizador é maior que o de um sinalizador normal, conforme determinado pela quantidade de camadas sob ele,
excluindo a carcaça de aço.

| Camadas | Alcance |
|---------|---------|
| 1       | 30      |
| 2       | 50      |
| 3       | 70      |
| 4       | 90      |

<GameScene zoom="1.5" interactive={true} fullWidth={true}>
    <MultiblockShape controller="extended_industrialization:electric_beacon" />
    <MultiblockShape controller="extended_industrialization:electric_beacon" useBigShape={true} x="-9" y="2" z="-9" />
</GameScene>