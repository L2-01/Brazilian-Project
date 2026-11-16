---
navigation:
  title: Materiais do Firmamento
  icon: ae2lt:firmament_alloy_ingot
  parent: materials/materials-index.md
item_ids:
  - ae2lt:firmament_dust
  - ae2lt:firmament_essence
  - ae2lt:firmament_mixture
  - ae2lt:firmament_alloy_ingot
  - ae2lt:firmament_superconducting_wire
  - ae2lt:inactive_firmament_spirit_core
  - ae2lt:firmament_spirit_core_oculus
  - ae2lt:firmament_spirit_core_core
  - ae2lt:firmament_spirit_core_conduit
  - ae2lt:firmament_spirit_core_stride
---

# Materiais do Firmamento

<ItemImage id="ae2lt:firmament_alloy_ingot" scale="2" float="left" />

Os materiais do Firmamento são a linha de materiais de nível End do AE2 Lightning Tech. Tudo começa com o Pó do Firmamento, que só pode ser obtido no End, e é refinado passo a passo — através do Núcleo de Conversão do Firmamento e da Fábrica de Processamento de Sobrecarga — até os componentes centrais do conjunto de armadura Celestweave e do Canhão Elétrico Eletromagnético.

<ItemGrid>
  <ItemIcon id="ae2lt:firmament_dust" />
  <ItemIcon id="ae2lt:firmament_essence" />
  <ItemIcon id="ae2lt:firmament_mixture" />
  <ItemIcon id="ae2lt:firmament_alloy_ingot" />
  <ItemIcon id="ae2lt:firmament_superconducting_wire" />
</ItemGrid>

## Pó do Firmamento

O Pó do Firmamento é a raiz de toda a linha e **só pode ser gerado no End**.

Coloque um <ItemLink id="ae2:annihilation_plane" /> virado para **cima** na **camada construível mais alta** do End e conecte-o a uma rede ME energizada. Quando as condições são atendidas, o plano gera Pó do Firmamento por conta própria — sem quebrar nenhum bloco — inserindo cerca de uma porção no armazenamento da rede a cada 10 segundos.

Condições:

* A dimensão deve ser o End
* O Plano de Aniquilação deve estar virado para cima
* O plano deve estar na camada construível mais alta (y 255 num End padrão; se o limite de altura do mundo foi alterado, vale o limite real)
* O plano deve pertencer a uma rede energizada e ativa

> Cada Plano de Aniquilação qualificado gera independentemente, então vários podem rodar em paralelo para escalar a produção.

## Núcleo de Conversão do Firmamento

A maioria das etapas de refino depende do **Núcleo de Conversão do Firmamento**. Este bloco não pode ser fabricado e existe apenas dentro da **Nave Estelar do Firmamento**, uma estrutura que flutua acima das ilhas externas do End — viaje para além da ilha central para encontrar uma. O núcleo é indestrutível, não pode ser minerado nem movido, e só opera dentro da estrutura da nave, então use-o exatamente onde ele está.

O núcleo não consome energia nem raios, e cada trabalho termina após uma breve espera: clique com o botão direito nele com um material na mão para inserir, depois clique com o botão direito de **mão vazia** para coletar o resultado. Ele aceita até três entradas de uma vez e produz as saídas definidas por cada receita. Funis e tubos podem inserir materiais e extrair produtos por qualquer lado, então uma linha de produção automatizada pode ser montada direto na nave.

## Materiais Refinados

O Pó do Firmamento é processado em duas linhas de produção:

| Material | Feito em | Usado principalmente para |
|------|---------|---------|
| Essência do Firmamento | Núcleo de Conversão do Firmamento | Fio Supercondutor do Firmamento e receitas superiores |
| Mistura do Firmamento | [Fábrica de Processamento de Sobrecarga](../machines/overload-processing-factory.md) | refino em Lingote de Liga do Firmamento |
| Lingote de Liga do Firmamento | Núcleo de Conversão do Firmamento | material principal do Celestweave e do Canhão Elétrico Eletromagnético |
| Fio Supercondutor do Firmamento | [Fábrica de Processamento de Sobrecarga](../machines/overload-processing-factory.md) | condutor de energia do Celestweave |

Além dos materiais do firmamento, essas receitas também pedem ingredientes auxiliares como Liga de Sobrecarga, Fragmentos de Netherita e Membranas de Espectro. O Lingote de Liga do Firmamento é o material estrutural de mais alto nível do mod, enquanto o Fio Supercondutor do Firmamento serve como o componente condutor de energia do conjunto Celestweave.

## Núcleos do Espírito do Firmamento

Os núcleos de espírito são o coração do conjunto de armadura Celestweave.

Um Núcleo de Conversão do Firmamento gerado naturalmente tem **50%** de chance de reter um <ItemLink id="ae2lt:inactive_firmament_spirit_core" /> nos seus espaços de saída; use o núcleo de mão vazia para recuperá-lo. Núcleos inativos também têm **15%** de chance de aparecer em baús de tesouro de Cidades do End.

Processar um núcleo inativo no Núcleo de Conversão do Firmamento **ativa**-o, dividindo-o num de cada um dos quatro núcleos de espírito de uma vez:

<ItemGrid>
  <ItemIcon id="ae2lt:firmament_spirit_core_oculus" />
  <ItemIcon id="ae2lt:firmament_spirit_core_core" />
  <ItemIcon id="ae2lt:firmament_spirit_core_conduit" />
  <ItemIcon id="ae2lt:firmament_spirit_core_stride" />
</ItemGrid>

Os quatro núcleos correspondem às peças Óculo, Núcleo, Conduto e Passos do conjunto [Celestweave](../celestweave.md), e são os componentes-chave para montar cada peça na [Câmara de Montagem de Raios](../machines/lightning-assembly-chamber.md).
