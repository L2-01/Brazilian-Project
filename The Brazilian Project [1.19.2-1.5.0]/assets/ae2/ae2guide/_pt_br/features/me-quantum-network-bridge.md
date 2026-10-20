---
navigation:
  title: Ponte de Rede Quântica ME
---

# Ponte de Rede Quântica

![Uma Ponte de Rede Quântica](../assets/large/quantum_network_bridge.png)

Uma estrutura multibloco que conecta 2 fragmentos de rede potencialmente distantes
entre si. É criada fabricando 8 <ItemLink
id="quantum_ring"/> e uma <ItemLink
id="quantum_link"/>, colocando a <ItemLink
id="quantum_link"/> no centro e
cercando-a com os 8 <ItemLink
id="quantum_ring"/>.

Cada Ponte de Rede Quântica exige energia para funcionar. Essa
energia deve ser fornecida pelo fragmento de rede ao qual ela está conectada até a
ponte ser vinculada; a partir daí, energia de qualquer lado estará disponível.
Porém, se a energia acabar, a conectividade falhará e energia será drenada
do lado em que a ponte está, na tentativa de restaurar a conexão.

Quando a Ponte de Rede Quântica está energizada, as várias luzes azuis da estrutura acendem e brilham.
A Ponte de Rede Quântica consome 200 AE/t ( 100 EU/t, 400 RF/t )

Para estabelecer um vínculo entre 2 Pontes de Rede Quântica, você deve
criar um par de <ItemLink
id="quantum_entangled_singularity"/>. Uma de cada
par será colocada dentro de uma conexão específica. Cada Ponte só pode se
conectar a uma outra ponte.

Considere renomear suas <ItemLink
id="quantum_entangled_singularity"/> para
identificar melhor a conexão.

### Lista de Verificação

1. Os dois lados da Ponte de Rede Quântica estão energizados? As luzes acendem se estiverem.
2. O par correspondente de <ItemLink id="quantum_entangled_singularity"/> está em cada ponte?
3. Os dois lados estão com chunks carregados?
4. Garanta que você só tem 1 controlador; o outro lado da ponte ainda é a mesma rede.
5. Energia e conectividade de rede devem conectar nas 4 laterais, não nos cantos.
