---
navigation:
  title: Estrutura e Construção Automática
  icon: ae2lt:tianshu_supercomputer_casing
  parent: tianshu/tianshu-index.md
  position: 10
item_ids:
  - ae2lt:tianshu_supercomputer_casing
  - ae2lt:phase_change_cooling_unit
  - ae2lt:tianshu_supercomputer_glass
---

# Estrutura e Construção Automática

O Vetor de Supercomputação Tianshu ocupa um volume fixo de **7×7×7**. Seu controlador fica no centro da borda inferior de um dos lados. A partir do controlador, a estrutura se estende seis blocos para frente, seis blocos para cima e três blocos para cada lado.

A cena abaixo mostra uma estrutura completa usando um Núcleo Principal Básico Tianshu. Arraste para girar a cena. Os centros das faces inferior e superior são as duas posições possíveis da porta.

<GameScene zoom="2.8" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/tianshu_supercomputer.snbt" />
  <DiamondAnnotation pos="6.5 0.5 3.5" color="#f2d37a">Controlador Tianshu</DiamondAnnotation>
  <DiamondAnnotation pos="3.5 0.5 3.5" color="#85f29e">Posição Padrão da Porta</DiamondAnnotation>
  <DiamondAnnotation pos="3.5 6.5 3.5" color="#80c6ff">Posição Alternativa da Porta</DiamondAnnotation>
  <DiamondAnnotation pos="2.5 6.5 2.5" color="#ff9fd7">Posição de Exemplo de Armazenamento de Padrões</DiamondAnnotation>
  <DiamondAnnotation pos="4.5 6.5 2.5" color="#9fffe1">Posição de Exemplo de Armazenamento de Sementes</DiamondAnnotation>
  <BoxAnnotation min="2 2 2" max="5 5 5" color="#d58cff" alwaysOnTop={true}>Câmara do Núcleo 3×3×3</BoxAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais da Construção Automática

Essas quantidades assumem que apenas o controlador foi colocado e todas as outras posições-alvo estão vazias. Blocos corretos existentes são mantidos e descontados dos requisitos reais.

| Material | Quantidade | Comportamento da Construção Automática |
|----------|------:|---------------------|
| <ItemLink id="ae2lt:tianshu_supercomputer_casing" /> | 99 | Posições fixas de revestimento |
| <ItemLink id="ae2lt:phase_change_cooling_unit" /> | 17 | Preenche por padrão as 16 posições fixas de resfriamento e o candidato a porta não usado; armazenamento de circuito fechado pode substituir esses blocos |
| <ItemLink id="ae2lt:tianshu_supercomputer_glass" /> | 98 | Camada fixa de observação da câmara do núcleo |
| <ItemLink id="ae2lt:tianshu_supercomputer_port" /> | 1 | Colocada no candidato inferior quando ainda não existe porta |

O controlador já está presente e não é consumido pelo botão. A construção automática também deixa a câmara do núcleo intacta. A formação requer que as seguintes unidades sejam instaladas manualmente:

| Unidade da câmara do núcleo | Quantidade | Requisito |
|-------------------|------:|-------------|
| Qualquer Núcleo Principal Tianshu | 1 | Deve ocupar o centro exato da câmara |
| <ItemLink id="ae2lt:tianshu_blank_unit" /> | 0–26 | Preenche uma célula periférica sem fornecer atributo |
| <ItemLink id="ae2lt:storage_supercomputing_unit" /> | 0–26 | Opcional; aumenta o armazenamento de fabricação para níveis finitos |
| <ItemLink id="ae2lt:parallel_supercomputing_unit" /> | 0–26 | Opcional; estende o despacho interno; Multidimensional as rejeita |
| <ItemLink id="ae2lt:tianshu_amplifier_unit" /> | 0–15 | Aceita apenas por Quântico e Sobrecarga |

Esses quatro tipos de unidades de computação preenchem as 26 células não-centrais da câmara do núcleo. O Básico rejeita Unidades Amplificadoras; Quântico e Sobrecarga aceitam no máximo 15; os três níveis finitos têm despacho interno e podem usar apenas Unidades em Branco. O Multidimensional aceita apenas Unidades em Branco nas suas 26 células periféricas. Armazenamento de Padrões de Circuito Fechado e Armazenamento de Sementes de Circuito Fechado não são unidades da câmara do núcleo; eles pertencem às posições compatíveis com resfriamento da carcaça.

A carcaça tem **17 posições compatíveis com resfriamento**: 16 posições fixas de resfriamento mais o candidato a porta não ocupado pela Porta. Cada uma aceita uma Unidade de Resfriamento de Mudança de Fase, Armazenamento de Padrões de Circuito Fechado ou Armazenamento de Sementes de Circuito Fechado. A construção automática trata um bloco de armazenamento de circuito fechado já instalado numa dessas posições como válido e o mantém no lugar.

No total, uma estrutura completa construída de um local vazio usa **243 blocos**: 1 controlador colocado manualmente, 215 blocos fora do núcleo que a construção automática pode colocar (99 revestimentos + 98 vidros + 17 posições compatíveis com resfriamento + 1 porta), e 27 unidades da câmara do núcleo instaladas manualmente. Substituir posições compatíveis com resfriamento por armazenamento de circuito fechado reduz o número de Unidades de Resfriamento de Mudança de Fase necessárias.

## Usando a Construção Automática

1. Coloque o controlador e reserve o volume 7×7×7 completo na direção para a qual ele aponta
2. Coloque o revestimento, as Unidades de Resfriamento de Mudança de Fase, o vidro e a porta no **inventário do jogador**; armazenamento de circuito fechado pode ser instalado primeiro nas posições compatíveis com resfriamento
3. Abra o controlador e selecione **Construir Carcaça Automaticamente**
4. Após a construção da carcaça terminar, instale o Núcleo Principal Tianshu e as 26 Unidades Periféricas da câmara do núcleo, depois instale armazenamento de circuito fechado nas posições compatíveis com resfriamento conforme necessário

A construção automática lê apenas o inventário do jogador; ela não extrai blocos da rede ME nem de contêineres adjacentes. Ela verifica o requisito total de materiais antes de começar, depois coloca um bloco por tique. Mantenha todos os materiais necessários no inventário até a construção terminar.

Uma Porta existente pode ocupar qualquer candidato. Se não houver Porta, um candidato já contiver uma Unidade de Resfriamento de Mudança de Fase ou armazenamento de circuito fechado, e o outro estiver vazio, a construção automática mantém o bloco existente e coloca a Porta na posição vazia. Se ambos os candidatos estiverem vazios, a posição inferior é usada por padrão. Se ambos contiverem blocos que não são Porta, limpe uma posição primeiro.

Se qualquer posição de revestimento, compatível com resfriamento, vidro ou porta tratada pela construção automática contiver um bloco incorreto, a construção automática não coloca nada. Limpe as coordenadas reportadas pelo controlador e tente de novo. Se materiais forem removidos ou um alvo ficar obstruído após a construção começar, o processo para e consome apenas os blocos que foram colocados com sucesso.

## Regras de Construção Manual

* Exatamente **um** dos dois candidatos a porta deve conter uma Porta Tianshu; o outro aceita uma Unidade de Resfriamento de Mudança de Fase, Armazenamento de Padrões de Circuito Fechado ou Armazenamento de Sementes de Circuito Fechado
* O centro da câmara requer um Núcleo Principal Tianshu, e Núcleos Principais são inválidos nas outras 26 células
* Todas as 26 células periféricas devem conter Unidades em Branco, de Armazenamento, Paralelas ou Amplificadoras suportadas pelo núcleo principal selecionado; armazenamento de circuito fechado é inválido na câmara do núcleo
* Básico, Quântico e Sobrecarga funcionam sem unidades funcionais; Unidades de Armazenamento e Paralelas são opcionais
* O Básico rejeita Unidades Amplificadoras; Quântico e Sobrecarga aceitam no máximo 15
* O Multidimensional aceita apenas Unidades em Branco na câmara do núcleo
* Todas as 16 posições fixas de resfriamento e o candidato a porta não usado requerem uma Unidade de Resfriamento de Mudança de Fase ou um dos dois blocos de armazenamento de circuito fechado

A estrutura reescaneia e se forma automaticamente após o último bloco obrigatório ser colocado.
