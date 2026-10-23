---
navigation:
  title: Canais
  icon: controller
---

As [Redes ME](../me-network.md) do Applied Energistics 2 exigem
Canais para suportar dispositivos que usam armazenamento em rede ou outros
serviços de rede. A maioria dos dispositivos, como cabos comuns e máquinas, suporta apenas
até 8 canais. Porém, o <ItemLink id="fluix_covered_dense_cable"/> suporta até
32 canais; os únicos outros dispositivos capazes de transmitir 32 são o <ItemLink id="me_p2p_tunnel" />
e a [Ponte de Rede Quântica](quantum-bridge.md).

Uma Rede sem um <ItemLink id="controller"/>
é considerada Ad Hoc e pode suportar até 8 dispositivos usando canais.
Quando você excede 8 dispositivos, os dispositivos que usam canais desligam;
você pode remover dispositivos ou adicionar um <ItemLink id="controller"/>.

Em redes [Ad Hoc](ad-hoc-networks.md), cada dispositivo
usa 1 canal na rede inteira — muito diferente de como o <ItemLink
id="controller"/> aloca canais com base na
rota mais curta.

Os canais consomem 1⁄128 AE/t por nó que atravessam; isso significa que
adicionar um <ItemLink id="controller"/> numa
rede com 8 dispositivos e mais de 96 nós pode, na verdade,
diminuir o consumo de energia, pois muda a forma como os canais são alocados.

Ao usar um <ItemLink id="controller"/>,
os Canais precisam rotear pelo caminho mais curto do <ItemLink
id="controller"/> até o dispositivo. Se o caminho
já estiver saturado, alguns dispositivos podem não receber os canais necessários; use
cabos coloridos, âncoras de cabo e túneis a seu favor para garantir que seus
canais sigam o caminho desejado.

## Modos de Canal

O AE2 10.0.0 para Minecraft 1.18 introduz novas opções para mudar o comportamento dos canais do AE2 no seu mundo.
Há uma nova opção na seção geral da configuração (`channels`) que controla isso, e um novo comando
no jogo para operadores alterarem o modo e a config de dentro do jogo. O comando é `/ae2 channelmode <mode>`
para mudar e `/ae2 channelmode` para mostrar o modo atual. Quando o modo é alterado no jogo, todas as redes
reiniciam e passam a usar o novo modo imediatamente.

Isso ressuscita e melhora a opção que existia no Minecraft 1.12 e apresenta opções melhores para
jogadores que só querem uma jogabilidade mais tranquila, sem remover a mecânica por completo.

A tabela a seguir lista os modos disponíveis tanto no arquivo de configuração quanto no comando.

| Opção      | Descrição                                                                                                                                                                                                                              |
| ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default`  | O modo padrão com as capacidades de canal de cabos e redes ad hoc descritas neste guia                                                                                                                                                    |
| `x2`       | Todas as capacidades de canal são dobradas (16 no cabo normal, 64 no cabo denso, redes ad hoc suportam 16 canais)                                                                                                                        |
| `x3`       | Todas as capacidades de canal são triplicadas (24 no cabo normal, 92 no cabo denso, redes ad hoc suportam 24 canais)                                                                                                                     |
| `x4`       | Todas as capacidades de canal são quadruplicadas (32 no cabo normal, 128 no cabo denso, redes ad hoc suportam 32 canais)                                                                                                                 |
| `infinite` | Todas as restrições de canal são removidas. Os controladores ainda reduzem o consumo de energia das redes _significativamente_. Os cabos inteligentes só alternam entre totalmente desligado (nenhum canal) e totalmente ligado (1+ canais). |

## Design

Projetar seus layouts com canais pode ser complicado por causa da natureza de
rota mais curta: se algum ponto específico do seu sistema tiver duas rotas possíveis, você
pode voltar de uma mineração e encontrar metade dos seus dispositivos offline. Veja o exemplo a seguir:

![Diagrama mostrando que dois caminhos de mesmo comprimento são ruins.](../../assets/channels/badLength.png)

---

Rota de Comprimento Igual

Na imagem acima, o controlador é representado pelo Bloco Verde; cabos ou
máquinas, por linhas verdes. O quadrado azul indica locais que só têm 1
rota; isso é bom, mas há um bloco vermelho indicando que existem
duas rotas possíveis, o que pode ser ruim — especialmente se você exceder 8 canais
num cabo ou nas máquinas de um bloco específico de máquinas. Agora que você
entende o problema básico e o diagrama, veja estes outros diagramas.

<div className="tile"><div className="tile">

![Um exemplo de um bom layout](../../assets/channels/good_split.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split3.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split2.png)

</div></div>

Você pode ver que, dependendo de como passa o cabo, pode obter
resultados diferentes num bloco de máquinas. Também pode ver que,
usando um controlador, é possível garantir o equilíbrio dos canais a partir de uma
linha reta.

Na segunda montagem, a linha do meio está vermelha; porém, é
importante lembrar que isso só importa se aquela linha de máquinas usar
canais. Se aquela linha fosse, por exemplo, de montadores moleculares, não faria
diferença — então seria uma montagem válida.

Nos dois últimos casos, você pode passar um cabo extra por um bloco de
máquinas e ele pode até parecer funcionar, mas dá para ver que pode quebrar com
bastante facilidade.

Agora que você entende como isso funciona, deixo uma última
informação útil: se encontrar uma situação em que não pode usar um
controlador e seu design está desequilibrado, considere usar túneis p2p. Como a
conexão do túnel conta como um único "salto", você consegue fazer o sistema
apresentar um resultado diferente.

![Diagrama mostrando como consertar uma montagem anterior com um túnel p2p.](../../assets/channels/p2psplit.png)

## Usando Túneis P2P para ajustar comprimentos de rota

Uma última observação importante sobre isso: o túnel p2p fica
diretamente sobre o controlador e diretamente sobre o bloco de máquinas na
parte de baixo da montagem. Isso acontece porque os túneis de entrada e saída são
considerados "um nó", então os dois cabos vindos do controlador e os túneis de entrada e saída
se equilibram para criar a montagem balanceada final.
