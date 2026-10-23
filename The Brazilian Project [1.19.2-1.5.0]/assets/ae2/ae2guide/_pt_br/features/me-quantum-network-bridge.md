---
navigation:
  title: Ponte de Rede Quântica ME
---

# Ponte de Rede Quântica

![Uma Ponte de Rede Quântica](../assets/large/quantum_network_bridge.png)

Uma estrutura multibloco que conecta dois fragmentos de rede potencialmente distantes.
Criada fabricando 8 <ItemLink
id="quantum_ring"/> e uma <ItemLink
id="quantum_link"/>, colocando a <ItemLink
id="quantum_link"/> no centro e
cercando-a com os 8 <ItemLink
id="quantum_ring"/>.

Cada Ponte de Rede Quântica exige energia para funcionar. Essa
energia deve vir do fragmento de rede ao qual ela está acoplada até a
ponte ser vinculada; a partir daí, a energia de qualquer lado fica disponível.
Porém, se a energia for perdida, a conectividade falha e a energia é drenada
do lado em que a ponte está, na tentativa de restaurar a conexão.

Quando a Ponte de Rede Quântica está energizada, as várias luzes azuis da estrutura acendem e brilham.
A Ponte de Rede Quântica exige 200 AE/t ( 100 EU/t, 400 RF/t )

Para estabelecer um vínculo entre 2 Pontes de Rede Quântica, você precisa
criar um par de <ItemLink
id="quantum_entangled_singularity"/>. Um de
cada par vai dentro de uma conexão específica. Cada Ponte só pode se
conectar a uma única outra ponte.

Considere renomear suas <ItemLink
id="quantum_entangled_singularity"/> para
identificar melhor a conexão.

### Checklist

1. Os dois lados da Ponte de Rede Quântica estão energizados? As luzes acendem quando estão.
2. O par correspondente de <ItemLink id="quantum_entangled_singularity"/> está em cada ponte?
3. Os dois lados estão com chunks carregados?
4. Confirme que você tem apenas 1 controlador; o outro lado da ponte ainda é a mesma rede.
5. A energia e a conectividade de rede devem se conectar às 4 arestas, não às quinas.
