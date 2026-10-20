---
navigation:
  title: Núcleos Principais, Unidades de Computação e Desempenho
  icon: ae2lt:tianshu_baseline_main_core
  parent: tianshu/tianshu-index.md
  position: 20
item_ids:
  - ae2lt:tianshu_baseline_main_core
  - ae2lt:tianshu_quantum_main_core
  - ae2lt:tianshu_overload_main_core
  - ae2lt:tianshu_multidimensional_main_core
  - ae2lt:tianshu_blank_unit
  - ae2lt:storage_supercomputing_unit
  - ae2lt:parallel_supercomputing_unit
  - ae2lt:tianshu_amplifier_unit
  - ae2lt:closed_loop_pattern_storage
  - ae2lt:closed_loop_seed_storage
---

# Núcleos Principais, Unidades de Computação e Desempenho

A câmara do núcleo ocupa o volume central 3×3×3. Seu centro exato requer um Núcleo Principal, enquanto as 26 células restantes aceitam apenas Unidades Tianshu em Branco, de Armazenamento, Paralelas ou Amplificadoras. O Armazenamento de Padrões de Circuito Fechado e o Armazenamento de Sementes de Circuito Fechado são instalados nas posições compatíveis com resfriamento da carcaça, que compartilham as regras de colocação das Unidades de Resfriamento de Mudança de Fase. O nível de Núcleo Principal selecionado determina quais combinações são válidas. A cena abaixo remove a carcaça para mostrar a posição central do Núcleo Principal.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/tianshu_supercomputer_core.snbt" />
  <BoxAnnotation min="3 3 3" max="4 4 4" color="#f2d37a" alwaysOnTop={true}>Única Posição de Núcleo Principal</BoxAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Em Resumo

### Câmara do Núcleo e Unidades

O volume central 3×3×3 contém Unidades de Armazenamento, Paralelas, Amplificadoras e em Branco Tianshu, com um Núcleo Principal fixo no centro exato.

O Núcleo Principal tem armazenamento de fabricação interno; Unidades de Armazenamento adicionam capacidade, como o Armazenamento de Fabricação de AE2.
O Núcleo Principal tem 128 pontos base de despacho; Unidades Paralelas estendem esse orçamento, como as Unidades de Co-Processamento de AE2.
Unidades Amplificadoras escalam despacho, armazenamento externo e capacidade de cópias em lote para núcleos suportados; no máximo 15 podem ser instaladas.
Unidades em Branco Tianshu são espaços reservados estruturais e não fornecem benefício de desempenho.

> Um Núcleo Principal Multidimensional não aceita unidades periféricas funcionais: todas as 26 células ao redor devem conter Unidades em Branco Tianshu. Um Núcleo Principal Básico não aceita Unidades Amplificadoras.

Todas as 27 células do volume central 3×3×3 devem estar preenchidas para a estrutura se formar. Núcleos Principais de nível mais alto fornecem limites maiores; a tabela abaixo é apenas um resumo rápido, com fórmulas detalhadas mais adiante nesta página.

| Núcleo Principal | Armazenamento Interno | Teto de Despachos Bem-Sucedidos/t | Unidades Amplificadoras |
|-----------|-----------------:|----------------------------:|-----------------|
| <ItemLink id="ae2lt:tianshu_baseline_main_core" /> | 1 MiB | 512 | Não suportadas |
| <ItemLink id="ae2lt:tianshu_quantum_main_core" /> | 256 MiB | 6.144 | 0–15 |
| <ItemLink id="ae2lt:tianshu_overload_main_core" /> | 64 GiB | 16.384 | 0–15 |
| <ItemLink id="ae2lt:tianshu_multidimensional_main_core" /> | Infinito | 16.384 | Não suportadas |

### Posições da Carcaça e Substituições

Cada uma das 17 posições compatíveis com resfriamento da carcaça aceita uma Unidade de Resfriamento de Mudança de Fase, Armazenamento de Padrões de Circuito Fechado ou Armazenamento de Sementes de Circuito Fechado. Exatamente um dos dois candidatos a porta deve conter a Porta Tianshu que conecta a estrutura à rede ME; o outro permanece uma posição compatível com resfriamento.

> Veja as seções detalhadas abaixo para os parâmetros completos.

~~Mas eu sei que você não vai lê-las.~~

## Núcleos Principais

O Núcleo Principal fornece armazenamento de fabricação interno e define os tetos dos orçamentos de despachos bem-sucedidos e de cópias em lote. Cada um dos três parâmetros governa uma coisa — o armazenamento de fabricação decide quantos trabalhos podem ser mantidos de uma vez, os despachos bem-sucedidos decidem quantas máquinas podem ser postas para trabalhar a cada tique, e as cópias em lote decidem quantas execuções um alvo compatível com lotes pode receber numa única chamada — e nenhum pode substituir outro.

| Núcleo Principal | Armazenamento Interno | Teto de Despachos Bem-Sucedidos/t | Máximo de Cópias/t | Unidades Amplificadoras |
|-----------|-----------------:|----------------------------:|-----------------:|-----------------|
| <ItemLink id="ae2lt:tianshu_baseline_main_core" /> | 1 MiB | 512 | 1.024 | Não suportadas |
| <ItemLink id="ae2lt:tianshu_quantum_main_core" /> | 256 MiB | 6.144 | 20.480 | 0–15 |
| <ItemLink id="ae2lt:tianshu_overload_main_core" /> | 64 GiB | 16.384 | 4.194.304 | 0–15 |
| <ItemLink id="ae2lt:tianshu_multidimensional_main_core" /> | Infinito | 16.384 | Infinito | Não suportadas |

Básico, Quântico e Sobrecarga têm despacho interno e funcionam sem unidades funcionais; Unidades de Armazenamento e Paralelas são opcionais. O Multidimensional usa apenas o orçamento do seu núcleo principal: suas 26 células periféricas não podem conter Unidades de Armazenamento, Paralelas ou Amplificadoras e devem ser todas preenchidas com Unidades em Branco.

## Começando Antes da Câmara de Montagem de Raios

Fabrique o Núcleo Principal Básico numa bancada de trabalho com 4 blocos de Armazenamento de Fabricação 64k de AE, 2 Processadores de Sobrecarga, 2 Blocos de Cristal de Sobrecarga e 1 Revestimento do Vetor de Supercomputação Tianshu. O processamento básico de raios e um Inscritor de AE fornecem os processadores; esta rota inicial não precisa de Câmara de Montagem de Raios, Fábrica de Processamento de Sobrecarga ou rede topológica.

Instale o Núcleo Principal Básico e preencha as outras 26 células com Unidades em Branco Tianshu para obter **1 MiB de armazenamento, 128 despachos bem-sucedidos/t e 256 cópias máximas/t**. O despacho interno não é contado como uma Unidade Paralela instalada. Uma Unidade Paralela eleva o despacho para 256/t; três atingem o teto Básico de 512/t.

Unidades em Branco são a base de fabricação compartilhada das duas estruturas e não consomem mais Revestimentos do Supercomputador. Cada Unidade Amplificadora consome um Núcleo de Sobrecarga Ultimate na Câmara de Montagem de Raios, junto com uma Unidade em Branco, Processadores de Sobrecarga, Chapas de Liga de Sobrecarga, Redes Topológicas Densas e Singularidades. Unidades Paralelas e de Armazenamento mantêm suas etapas avançadas de fabricação como expansões posteriores.

## Parâmetros de Desempenho

### Armazenamento de Fabricação

O armazenamento de fabricação guarda planos de fabricação, resultados intermediários e estado de tarefas. O Tianshu pode rodar vários trabalhos de fabricação ao mesmo tempo. Cada trabalho reserva seus bytes necessários ao iniciar e os libera quando conclui ou é cancelado.

O armazenamento determina se um trabalho pode ser aceito e quantos trabalhos podem permanecer ativos. Ele não aumenta a velocidade de despacho de padrões nem reduz o tempo de processamento das máquinas.

### Despachos Bem-Sucedidos

Um despacho bem-sucedido é um despacho de padrão por tique efetivamente aceito por um Fornecedor de Padrões; ele determina diretamente quantas máquinas de processamento o Tianshu pode colocar para trabalhar a cada tique. O paralelismo mostrado na lista de seleção de CPU da tela de confirmação de fabricação vem deste parâmetro e exclui o orçamento de cópias em lote descrito abaixo.

Um orçamento de despacho maior nunca faz uma máquina individual trabalhar mais rápido. Quando fornecedores, máquinas, materiais ou a capacidade de transferência da rede faltam, chamadas de despacho rejeitadas não contam como despachos bem-sucedidos, e o orçamento excedente simplesmente fica ocioso.

### Cópias em Lote

Uma cópia significa uma execução de uma receita de padrão. O orçamento de cópias em lote limita o número total de execuções de padrão que caminhos de execução compatíveis podem submeter por tique. Por exemplo, uma chamada de fornecedor que submete 32 execuções do mesmo padrão consome um despacho bem-sucedido e 32 cópias.

Cópias em lote não duplicam itens: cada execução ainda consome entradas, energia, tempo de processamento e espaço de saída exatamente como o padrão declara.

**Máquinas de processamento comuns aceitam apenas uma cópia por chamada**: para elas, a taxa de transferência é determinada inteiramente pelos despachos bem-sucedidos, e o orçamento excedente de cópias não é convertido em despachos adicionais. Os únicos alvos que aceitam várias cópias de uma vez — e portanto realmente usam o orçamento de cópias — são padrões de fabricação compatíveis com Montador Molecular, a Matriz de Deformação da Matéria Tianshu, padrões de circuito fechado suportados e outros dispositivos que explicitamente suportam execução em lote.

## Contagens de Unidades e Fórmulas

Sejam **S**, **P** e **A** as contagens de Unidades de Armazenamento, Paralelas e Amplificadoras. Cada Unidade de Armazenamento fornece 64 MiB de armazenamento externo, e cada Unidade Paralela fornece 128 pontos de capacidade base de despacho. O Núcleo Principal contribui outros 128 pontos base de despacho sem ocupar um espaço periférico. Os níveis finitos permitem `P = 0`; Quântico e Sobrecarga também exigem `0 ≤ A ≤ 15`.

| Núcleo Principal | Ganho de Despacho | Ganho de Armazenamento Externo | Ganho de Cópias por Despacho Bem-Sucedido |
|-----------|--------------:|----------------------:|----------------------------------:|
| Básico | ×1 | ×1 | ×2 |
| Quântico | `×2(1+A)` | `×2(1+A)` | `×(1+A)` |
| Sobrecarga | `×2(1+A)` | `×[2(1+A)]²` | `×(1+A)²` |

Os parâmetros resultantes são calculados da seguinte forma:

* Despachos bem-sucedidos igualam `128 × (1 + P) × ganho de despacho`, limitados pelo Núcleo Principal.
* O armazenamento de fabricação total é o armazenamento interno mais `64 MiB × S × ganho de armazenamento externo`.
* O máximo de cópias é igual aos despachos bem-sucedidos vezes o ganho de cópias, limitado pelo teto de cópias do Núcleo Principal.

Por exemplo, um núcleo Quântico com 3 Unidades Paralelas, 5 Unidades Amplificadoras, 1 Unidade de Armazenamento e 17 Unidades em Branco: o ganho de despacho é ×12, então a fórmula dá `128 × (1 + 3) × 12 = 6.144` despachos, atingindo exatamente o teto Quântico de **6.144**; o armazenamento externo é `64 MiB × 1 × 12 = 768 MiB`, dando **1 GiB** com os 256 MiB de armazenamento interno; o ganho de cópias é ×6, então a fórmula dá `6.144 × 6 = 36.864` cópias, limitado a **20.480**. A tela do controlador indica quando um parâmetro atingiu seu teto.

Para ilustrar como os dois orçamentos se relacionam, considere uma configuração com 512 despachos bem-sucedidos e 1.024 cópias máximas por tique: enviar apenas padrões de cópia única usa no máximo 512 dessas cópias por tique, enquanto alvos compatíveis com lotes podem combinar várias execuções do mesmo padrão dentro das mesmas 512 chamadas aceitas e usar as 1.024 cópias completas. O fornecedor e a máquina alvo determinam o agrupamento real; uma única máquina não é garantida de aceitar o orçamento completo.

## Guia de Configuração

* **Trabalhos rejeitados por capacidade insuficiente:** Adicione Unidades de Armazenamento ou troque para um Núcleo Principal de nível mais alto
* **Muitos fornecedores e máquinas, mas poucos trabalhando de uma vez:** Adicione Unidades Paralelas; núcleos Quântico e de Sobrecarga também podem adicionar Unidades Amplificadoras
* **Unidades Amplificadoras escalam despacho, armazenamento externo e cópias em lote simultaneamente** e são a principal alavanca dos núcleos Quântico e de Sobrecarga; note que qualquer resultado de fórmula além do teto do Núcleo Principal é desperdiçado
* **Multidimensional** fornece cada parâmetro a partir do próprio núcleo principal; basta preencher a periferia com Unidades em Branco — sem proporções para equilibrar

## Armazenamento de Amplificadoras, em Branco e de Circuito Fechado

A <ItemLink id="ae2lt:tianshu_amplifier_unit" /> é compartilhada pelo Vetor de Supercomputação Tianshu e pela Matriz de Deformação da Matéria Tianshu. Num Supercomputador, ela aumenta a capacidade de despacho, armazenamento externo e cópias em lote para núcleos Quântico e de Sobrecarga. Básico e Multidimensional rejeitam Unidades Amplificadoras; Quântico e Sobrecarga aceitam no máximo 15.

A <ItemLink id="ae2lt:tianshu_blank_unit" /> é o espaço reservado neutro compartilhado pelo Vetor de Supercomputação Tianshu e pela Matriz de Deformação da Matéria Tianshu. Ela mantém uma célula periférica estruturalmente válida, mas não contribui armazenamento de fabricação, capacidade de despacho, amplificação, espaços de padrões ou capacidade de sementes.

A análise e execução de circuito fechado são embutidas no Núcleo Principal e não exigem um núcleo de computação de circuito fechado separado. O Armazenamento de Padrões de Circuito Fechado e o Armazenamento de Sementes de Circuito Fechado continuam sendo armazenamento físico externo instalado nas posições compatíveis com resfriamento da carcaça, onde cada um substitui uma Unidade de Resfriamento de Mudança de Fase. Eles fornecem capacidade de padrões ou armazenamento de sementes, mas não ocupam as 26 células periféricas da câmara do núcleo e não contam para **S**, **P** ou **A**. Use Unidades em Branco para células da câmara do núcleo que não precisam de atributo de computação.

O Armazenamento de Sementes de Circuito Fechado contém 10 espaços de células e só pode guardar sementes depois que uma **Célula de Armazenamento ME** compatível com o tipo de semente é instalada. Jogadores não podem colocar itens de semente diretamente nesses espaços. Abra a página de circuito fechado do Terminal de Codificação de Padrões Tianshu e selecione **Reabastecer Sementes** para transferir sementes automaticamente da rede ME atual. Se o terminal reportar que o armazenamento de sementes não pode aceitar itens, verifique as células instaladas, os bytes livres, a capacidade de tipos e as partições das células.
