---
navigation:
  parent: example-setups/example-setups-index.md
  title: Tipos de Armazenamento e Organização da Rede
  icon: drive
---

# Vários Tipos de Armazenamento e Como Manter Sua Rede Organizada

Usando filtros, [partições](../items-blocks-machines/cell_workbench.md) e [prioridade de armazenamento](../ae2-mechanics/import-export-storage.md#storage-priority),
você pode montar vários níveis de armazenamento para vários tipos de coisas.

Os tipos de armazenamento costumam ser:
* Armazenamento geral, para todas as coisas aleatórias que você tem de algumas a alguns milhares. Ele usa [células](../items-blocks-machines/storage_cells.md) pequenas,
como 4k ou 16k.
* Armazenamento em massa, para tudo que você tem mais de alguns milhares, como pedregulho ou ferro. Ele usa células grandes como 256k
ou as células do addon MEGA.
* Armazenamento local em farms, como descrito em [Armazenamento Local Especializado](specialized-local-storage.md) e nas
[várias](simple-certus-farm.md) [farms de](semiauto-certus-farm.md) [certus](advanced-certus-farm.md).

As prioridades são configuradas para que, quando itens são despejados na rede principal, ela primeiro tente armazená-los no armazenamento
especializado em massa ou local e, se isso não for possível (devido a filtros e partições), ela então coloca os itens no armazenamento geral.
Isso significa que os itens NÃO SE MOVEM ATIVAMENTE de um armazenamento para outro, mas "migram" à medida que entram e saem da rede.
Para mover itens ativamente, use um <ItemLink id="io_port" />.

<GameScene zoom="3" interactive={true}>
  <ImportStructure src="../assets/assemblies/network_storage_types.snbt" />

    <BoxAnnotation color="#33dd33" min="11 0 1" max="12 1.3 2" thickness="0.05">
        Armazenamento em Massa. Neste caso, um ponto de armazenamento filtrado em um armazenamento de grande capacidade como uma gaveta. Este ponto de armazenamento está filtrado para
        carvão. Ele tem alta prioridade, então sempre que carvão entra na rede, ele vai para este ponto de armazenamento, e sempre que carvão é
        puxado da rede, ele é puxado de *qualquer lugar menos daqui*, então o carvão "migra" para esta gaveta.

        NOTA IMPORTANTE: Inventários grandes otimizados como gavetas funcionam bem para isso, mas inventários grandes *não* otimizados com muitos slots, como
        baús colossais, são péssimos para o desempenho quando usados com pontos de armazenamento.
    </BoxAnnotation>

    <BoxAnnotation color="#33dd33" min="11 0 3" max="12 1 4" thickness="0.05">
        Armazenamento em Massa. Neste caso, uma célula de 256k particionada em um gabinete com alta prioridade. Esta célula está particionada para
        pedregulho e ferro. Ela tem um Cartão de Distribuição Igualitária, então não será completamente preenchida com pedregulho, não deixando
        espaço para o ferro. O gabinete tem alta prioridade, então sempre que pedregulho ou ferro entra na rede, ele vai para este armazenamento,
        e sempre que pedregulho ou ferro é puxado da rede, ele é puxado de *qualquer lugar menos daqui*, então o pedregulho e o ferro "migram" para esta célula.
    </BoxAnnotation>

    <BoxAnnotation color="#33dddd" min="11 0 5" max="12 1 6" thickness="0.05">
        Armazenamento Geral. Neste caso, um gabinete cheio de células de 16k. Estas células não são particionadas. O gabinete tem prioridade neutra
        (neste caso 0), então sempre que algo entra na rede, ele vai primeiro para o armazenamento especializado em massa ou local,
        e sempre que algo é puxado da rede, é puxado daqui primeiro, então itens que têm armazenamento especializado naturalmente
        "migram" para fora do armazenamento geral.
    </BoxAnnotation>

    <BoxAnnotation color="#88ff88" min="11 0 8" max="12 1 9" thickness="0.05">
        Este Porto de E/S tem um papel importante em manter a rede organizada. Como a prioridade de armazenamento não move itens *ativamente*,
        as células usadas no Armazenamento Geral devem ser periodicamente "embaralhadas" por um porto de E/S para mover itens que têm
        lugar no armazenamento especializado para esse armazenamento especializado. Isso "desfragmenta" o armazenamento, garantindo que as coisas não
        fiquem armazenadas em vários lugares.
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 0 11" max="15 1 12" thickness="0.05">
        Armazenamento Local em uma farm de mobs. Este gabinete tem células particionadas para os drops que você quer manter, como ossos e flechas.
        O gabinete em si não recebe prioridade, porque o que afeta a prioridade é o ponto de armazenamento que acessa a sub-rede
        a partir da rede principal. As células têm cartões de distribuição igualitária e cartões de destruição de sobras.
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 1 10" max="15 2.3 11" thickness="0.05">
        Armazenamento Local em uma farm de mobs. Esta configuração de ponto de armazenamento - interface permite à rede principal acessar o armazenamento desta sub-rede.
        O ponto de armazenamento recebe alta prioridade e é filtrado para as coisas armazenadas nas células da sub-rede.

        IMPORTANTE: Devido à configuração de lixeira na sub-rede, certifique-se de filtrar este ponto de armazenamento ou ele começará a jogar fora
        *cada item, fluido etc. que entrar na rede*!
    </BoxAnnotation>

    <BoxAnnotation color="#dd3333" min="14 0 9" max="15 1.3 10" thickness="0.05">
        Armazenamento Local em uma farm de mobs. Este ponto de armazenamento em um condensador de matéria está definido com prioridade menor que o gabinete. Isso significa
        que os drops de mobs que não podem entrar nas células do gabinete transbordarão para cá e serão descartados. Isso é importante
        para evitar que a sub-rede fique entupida de lixo aleatório como arcos quase quebrados.
    </BoxAnnotation>

    <BoxAnnotation color="#dd33dd" min="8 1 11.7" max="9 2.3 13" thickness="0.05">
        Armazenamento Local em uma farm de melancia. Esta configuração usa um método semelhante ao dos vários exemplos de farms de certus. Um ponto de armazenamento
        na sub-rede insere o item produzido em um barril. Outro ponto de armazenamento na rede principal (filtrado para fatias
        de melancia e com alta prioridade) dá à rede principal acesso aos itens produzidos.
    </BoxAnnotation>

  <IsometricCamera yaw="270" pitch="30" />
</GameScene>
