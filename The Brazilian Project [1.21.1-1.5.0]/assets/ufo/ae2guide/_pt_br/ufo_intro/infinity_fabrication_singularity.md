---
navigation:
  parent: ufo_intro/infrastructure.md
  title: Singularidade de Fabricação Infinita
  position: 57
item_ids:
  - ufo:infinity_fabrication_singularity_controller
---

# Singularidade de Fabricação Infinita

<BlockImage id="ufo:infinity_fabrication_singularity_controller" scale="4"></BlockImage>

A **Singularidade de Fabricação Infinita** é a substituta de fim de jogo do UFO para
máquinas de fabricação cópia por cópia. Ela transforma uma receita homogênea numa única rota
agregada, então fabricar bilhões de itens idênticos não executa um bilhão
de ciclos de máquina.

Ela combina dois serviços dentro de um multibloco:

- sua própria biblioteca de padrões de fabricação escalada por campo;
- seu próprio executor de fabricação agregada que mantém a rede abastecida.

Ela não exige um Nexus de Computação Quântica separado. Apenas a
Singularidade formada e seu Vínculo de Grade Quântico precisam estar conectados à rede ME.

<GameScene zoom="1.75" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/infinity_fabrication_singularity.snbt" />
  <IsometricCamera yaw="35" pitch="25" />
</GameScene>

## Estrutura exata

A estrutura é um cubo de **7 × 7 × 7**. Ela exige:

- 1 Controlador da Singularidade de Fabricação Infinita;
- 1 Vínculo de Grade Quântico;
- 51 Carcaças Hiper Mecânicas Quânticas;
- 1 Escotilha de Entrada de Energia AE, substituindo a carcaça ao lado do controlador marcada pelo scanner;
- 25 Geradores de Campo Estelar, todos do mesmo tier: MK1, MK2 ou MK3;
- 36 Vidros Vibrantes de Quartzo;
- 12 Blocos de Quartzo;
- 12 Blocos de Fluix;
- 8 Carcaças com Chapa de Grávitons.

As 196 posições restantes são ignoradas pela validação e podem ser ar. Conecte um
cabo AE2 à face externa do Vínculo de Grade Quântico. O Vínculo consome um
canal e pelo menos 32 AE/t.

Alimente a escotilha de energia com um cabo de FE em qualquer face. Seu reservatório local é a
única fonte de combustível de fabricação: a Singularidade nunca tira energia de fabricação da
rede AE2 nem do armazenamento do Applied Flux. Escotilhas de energia adicionais podem substituir
Carcaças Hiper Mecânicas Quânticas para mais armazenamento local e conexões de suprimento.
Um reservatório vazio pausa novas rodadas até ser recarregado externamente; as saídas
enfileiradas são retidas. Estruturas existentes precisam substituir a carcaça destacada pela
Varredura de Estrutura pela escotilha exigida.

## Páginas de padrões

Abra o controlador para inserir padrões codificados diretamente na fileira de nove espaços,
usando os botões de seta para mudar de página. Cada posição de campo adiciona páginas conforme
o tier instalado: **MK1 adiciona 1 página**, **MK2 adiciona 2 páginas** e **MK3 adiciona 4
páginas**. Com 25 campos, a capacidade total vai de 25 páginas / 225 padrões a 100
páginas / 900 padrões. Toda posição de campo precisa usar o mesmo tier; misturar tiers
invalida a estrutura.

Se os campos forem rebaixados, padrões acima da nova capacidade são preservados e permanecem
acessíveis para remoção; nenhum padrão codificado é apagado automaticamente.

## Fabricação agregada

A Singularidade é uma produtora de estoque, não um alvo de fabricação: seus padrões
nunca são publicados ao serviço de fabricação do AE2, então não aparecem como fabricáveis
no terminal e não podem roubar planejamento das suas receitas. A fabricação sob demanda
desses itens continua fluindo pela sua cadeia normal de fabricação automática.

Para cada padrão ativado a Singularidade valida uma cópia da receita, extrai
tantas cópias quanto seus ingredientes e o FE armazenado localmente permitem em massa, e insere os resultados
como uma rota limitada. As quantidades usam contadores de 64 bits, então uma única rota pode cobrir
bilhões de cópias sem um loop item a item. Até **128 rotas** podem estar
pendentes de uma vez; rotas e suas saídas persistem através de recarregamentos do mundo.
Quebrar o Vínculo de Grade Quântico primeiro devolve os resultados pendentes à rede ME
conectada. Qualquer quantidade que a rede não consiga aceitar é larga como um pacote de recuperação
AE2 exato, incluindo catalisadores reservados. Descarregar chunk não ejeta esses pacotes;
as rotas pendentes ficam salvas em vez disso.
Padrões de fabricação de ferraria e de corte de pedra são suportados junto dos padrões
de fabricação normais; padrões de processamento continuam usando suas máquinas
de processamento reais.

Ingredientes devolvidos com exatamente o mesmo item e componentes, como o Cristal
Mestre de Infusão, são reservados uma vez para o lote inteiro e devolvidos uma vez. Um
único cristal reutilizável pode portanto processar um lote inteiro de essência. Ingredientes
consumidos e restos alterados, como baldes vazios ou ferramentas danificadas, ainda
são contados para cada cópia da receita.

Padrões duplicados armazenados em páginas diferentes colapsam numa única rota
deduplicada.

Enquanto um padrão está ativado, a Singularidade o repete continuamente, como o
Quantum Crafter: enquanto os ingredientes permanecerem na rede, cada rodada
consome de uma vez toda cópia pagável pelo seu suprimento local de FE em vez de iterar uma cópia por vez.
Desativar o padrão para novas rodadas sem descartar saídas que
já estão esperando por espaço na rede.

## Modos de operação

| Modo | Orçamento de rotas | Custo de combustível (equivalente AE) | Caso de uso |
| --- | ---: | ---: | --- |
| Equilibrado | 64/tique | 1× | Operação geral |
| Velocidade | 128/tique | 2× | Rendimento máximo em rajada |
| Eficiência | 32/tique | 0.5× | Redes com energia limitada |

Os campos selecionam o modo automaticamente: **Mk.I usa Eficiência**, **Mk.II usa
Equilibrado** e **Mk.III usa Velocidade**. Tiers misturados invalidam a formação,
então Velocidade exige todos os 25 campos em Mk.III. Substituir campos afeta novos
despachos imediatamente sem cancelar trabalhos nem descartar saídas enfileiradas.

## Painel e solução de problemas

A interface mostra as páginas de padrões mais o status de estrutura, rede, trabalhos ativos e
rotas enfileiradas. **Escanear Estrutura** destaca blocos divergentes;
**Construção Automática** coloca apenas blocos faltantes para os quais o jogador tem materiais.

- **Estrutura incompleta:** repare a posição destacada pelo scanner.
- **Rede ME offline:** energize a rede, libere um canal e ligue um cabo na face externa do Vínculo de Grade.
- **Esperando padrões:** insira um padrão codificado suportado numa das páginas do controlador.
- **Padrões ativados mas sem novas rodadas:** verifique o FE armazenado na escotilha de energia e seu fornecimento externo de energia.
- **Rotas continuam enfileiradas:** garanta que a rede ME tenha espaço de armazenamento para as saídas prometidas.
