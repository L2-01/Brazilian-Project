---
navigation:
  title: Canais
  icon: controller
---

As [Redes ME](../me-network.md) do Applied Energistics 2 exigem
canais para suportar dispositivos que usam armazenamento em rede ou outros serviços
da rede. A maioria dos dispositivos, como cabos comuns e máquinas, só suporta
até 8 canais. Porém, o <ItemLink id="fluix_covered_dense_cable"/> suporta até
32 canais; os únicos outros dispositivos capazes de transmitir 32 são o <ItemLink id="me_p2p_tunnel" />
e a [Ponte de Rede Quântica](quantum-bridge.md).

Uma rede sem um <ItemLink id="controller"/>
é considerada Ad-Hoc e pode suportar até 8 dispositivos que usam canais.
Ao exceder 8 dispositivos, os dispositivos da rede que usam canais desligam;
você pode remover dispositivos ou adicionar um <ItemLink id="controller"/>.

Ao usar redes [Ad-Hoc](ad-hoc-networks.md), cada dispositivo
usa 1 canal na rede inteira; isso é bem diferente de como o <ItemLink
id="controller"/> aloca canais com base na
rota mais curta.

Canais consumirão 1⁄128 AE/t por nó que atravessam; isso significa que, ao
adicionar um <ItemLink id="controller"/> a uma
rede com 8 dispositivos e mais de 96 nós, seu uso de energia pode na verdade
diminuir, porque isso muda como os canais são alocados.

Ao usar um <ItemLink id="controller"/>,
os canais devem ser roteados pelo caminho mais curto do <ItemLink
id="controller"/> até o dispositivo. Se o caminho
já estiver saturado, alguns dispositivos podem não receber os canais necessários; use
cabos coloridos, âncoras para cabos e túneis a seu favor para garantir que seus
canais sigam o caminho desejado.

## Modos de Canal

O AE2 10.0.0 para Minecraft 1.18 introduz novas opções para mudar como os canais do AE2 se comportam no seu mundo.
Há uma nova opção de configuração na seção geral (`channels`) que controla essa opção, e um novo comando no jogo
para operadores mudarem o modo e a configuração de dentro do jogo. O comando é `/ae2 channelmode <mode>`
para mudá-lo e `/ae2 channelmode` para mostrar o modo atual. Quando o modo é mudado no jogo, todas as redes existentes
reiniciam e usam o novo modo imediatamente.

Isso ressuscita e melhora a opção que estava disponível no Minecraft 1.12 e introduz melhores opções para
jogadores que só querem uma jogabilidade um pouco mais tranquila, mas não querem que a mecânica seja removida por completo.

A tabela a seguir lista os modos disponíveis tanto no arquivo de configuração quanto no comando.

| Configuração | Descrição                                                                                                                                                                                                                                  |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `default`  | O modo padrão com as capacidades de canal de cabos e redes ad-hoc como descrito ao longo deste site                                                                                                                                        |
| `x2`       | Todas as capacidades de canal são dobradas (16 em cabo normal, 64 em cabo denso, redes ad-hoc suportam 16 canais)                                                                                                                           |
| `x3`       | Todas as capacidades de canal são triplicadas (24 em cabo normal, 92 em cabo denso, redes ad-hoc suportam 24 canais)                                                                                                                        |
| `x4`       | Todas as capacidades de canal são quadruplicadas (32 em cabo normal, 128 em cabo denso, redes ad-hoc suportam 32 canais)                                                                                                                    |
| `infinite` | Todas as restrições de canal são removidas. Controladores ainda reduzem _significativamente_ o consumo de energia das redes. Cabos inteligentes só alternam entre completamente desligado (nenhum canal transportado) e completamente ligado (1 ou mais canais transportados). |

## Projeto

Projetar seus layouts com canais pode ser complicado por causa da natureza de
rota mais curta deles; se algum ponto específico do seu sistema tiver duas rotas
possíveis, você pode voltar de uma mineração e encontrar metade dos seus
dispositivos offline. Dê uma olhada no exemplo a seguir:

![Diagrama mostrando que dois caminhos de mesmo comprimento são ruins.](../../assets/channels/badLength.png)

---

Rotas de Mesmo Comprimento

Na imagem acima, o controlador é representado pelo bloco verde, cabos e
máquinas por linhas verdes. O quadrado azul indica quais posições têm apenas 1
rota; isso é bom, mas há um bloco vermelho, que indica que existem
duas rotas possíveis — isso pode ser ruim, especialmente se você estiver excedendo 8 canais
num cabo ou em máquinas de um bloco de máquinas específico. Agora que você
entende o problema básico e o diagrama, olhe estes outros diagramas.

<div className="tile"><div className="tile">

![Um exemplo de um bom layout](../../assets/channels/good_split.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split3.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split.png)

</div><div className="tile">

![Um exemplo de um layout ruim](../../assets/channels/bad_split2.png)

</div></div>

Você pode ver que, dependendo de como passa o cabo, pode acabar com
resultados diferentes num bloco de máquinas; também dá para ver que,
usando um controlador, você pode garantir que o equilíbrio dos canais se mantém
em linha reta.

Na segunda configuração, a linha do meio está vermelha; porém, é
importante lembrar que isso só importa se aquela linha de máquinas usa
canais — se aquela linha fosse, por exemplo, de montadores moleculares, não faria
diferença, então aquela poderia ser uma configuração válida.

Nas duas últimas você pode ver que dá para passar um cabo extra até um bloco de
máquinas e parece funcionar, mas dá para ver que pode quebrar com muita
facilidade.

Agora que você entende como isso funciona, deixo uma última informação
útil: se você cair numa situação em que não pode usar um
controlador e seu projeto está desbalanceado, considere usar túneis p2p, já que uma
conexão de túnel conta como um único "salto", você pode fazer o sistema ter
um resultado diferente.

![Diagrama mostrando como corrigir uma configuração anterior com um túnel p2p.](../../assets/channels/p2psplit.png)

## Usando Túneis P2P para ajustar o comprimento das rotas

Uma última nota importante sobre isso: você pode ver que o túnel p2p está
diretamente no controlador e diretamente no bloco de máquinas na
parte de baixo da configuração; isso é feito porque os túneis de entrada e saída são ambos
considerados "um nó", então os dois cabos vindos do controlador e dos túneis de
entrada e saída se equilibram para criar a configuração balanceada final.
