---
navigation:
  title: Núcleos Principais, Unidades Periféricas e Calor
  icon: ae2lt:matter_warping_matrix_stable_main_core
  parent: matrix/matrix-index.md
  position: 20
item_ids:
  - ae2lt:matter_warping_matrix_stable_main_core
  - ae2lt:matter_warping_matrix_quantum_main_core
  - ae2lt:matter_warping_matrix_overload_main_core
  - ae2lt:matter_warping_matrix_multidimensional_main_core
  - ae2lt:matter_warping_matrix_thread_unit_t1
  - ae2lt:matter_warping_matrix_thread_unit_t2
  - ae2lt:matter_warping_matrix_thermal_control_unit_t1
  - ae2lt:matter_warping_matrix_thermal_control_unit_t2
---

# Núcleos Principais, Unidades Periféricas e Calor

A câmara do núcleo contém 81 posições. Seu centro geométrico deve conter um Núcleo Principal, e as 80 posições restantes devem conter Unidades Periféricas. A cena abaixo remove a estrutura externa para mostrar uma configuração de exemplo. Ela distingue as posições de núcleo disponíveis e não é o único nem o layout universalmente ideal.

<GameScene zoom="3" background="transparent" interactive={true}>
  <ImportStructure src="../assets/assemblies/matter_warping_matrix_core.snbt" />
  <BoxAnnotation min="3 5 3" max="4 6 4" color="#f2d37a" alwaysOnTop={true}>A única posição válida para o núcleo principal</BoxAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

# Visão Geral Rápida

## Estrutura do Núcleo e Unidades

Antes de usar a construção automática, garanta que o volume que se estende 3 blocos para cada lado do Controlador, 5 blocos acima e abaixo dele e 6 blocos atrás dele não contenha blocos estranhos. Caso contrário, a construção automática não pode ser concluída.

A câmara do núcleo suporta Unidades de Thread, de Controle Térmico e Amplificadoras como Unidades Periféricas especializadas, além de Unidades em Branco. Apenas um Núcleo Principal pode ocupar a posição central. Unidades de Thread e de Controle Térmico têm variantes T1 e T2, com T2 oferecendo desempenho melhor que T1.

Unidades de Thread determinam a capacidade de fabricação por tique, semelhante a adicionar mais Montadores Moleculares. Unidades de Controle Térmico regulam o calor, mas sua eficácia diminui com a distância do Núcleo Principal. Unidades Amplificadoras multiplicam a capacidade total de thread, e no máximo 15 podem ser instaladas. Unidades em Branco preenchem posições obrigatórias sem fornecer bônus.

> O Núcleo Principal Multidimensional não pode usar Unidades Periféricas especializadas; todas as outras posições devem conter Unidades em Branco Tianshu. O Núcleo Principal Estável não pode usar Unidades Amplificadoras.

Toda posição na câmara do núcleo deve estar preenchida ou a estrutura não se forma. Núcleos Principais de nível mais alto fornecem limites de capacidade maiores, resumidos abaixo. A estrutura também exige pelo menos um Armazenamento de Padrões.

| Núcleo Principal | Teto de Fabricação por Tique | Estratégia Térmica |
|-----------|----------------------:|------------------|
| Núcleo Principal Estável | 4.096 execuções | Mantenha o calor o mais baixo possível |
| Núcleo Principal Quântico | 122.880 execuções | Menor calor fornece maior eficiência |
| Núcleo Principal de Sobrecarga | 4.194.304 execuções | Mantenha o calor perto de 50% |
| Núcleo Principal Multidimensional | Ilimitado | O calor é ignorado |

## Estrutura Externa

Armazenamentos de Padrões podem ser instalados nas camadas internas superior e inferior da estrutura para fornecer espaços de padrões. Eles podem ser instalados ou substituídos diretamente pelas funções de construção automática e melhoria de padrões do Controlador, sem abrir a estrutura.

Por padrão, a Porta da Matriz é instalada oposta ao Controlador. Ela pode em vez disso ocupar qualquer uma das posições candidatas laterais, mas a estrutura deve conter exatamente uma Porta para se formar.

## Modos de Núcleo Principal

| Núcleo Principal | Teto de Fabricação por Tique | Estratégia Térmica |
|-----------|----------------------:|------------------|
| Núcleo Principal Estável | 4.096 execuções | Mantenha-o frio; a eficiência cai com o calor mas nunca abaixo de 45% |
| Núcleo Principal Quântico | 122.880 execuções | Menor calor fornece maior eficiência |
| Núcleo Principal de Sobrecarga | 4.194.304 execuções | O pico de eficiência é perto de 50% de calor; mantenha-o na faixa ideal de 42%–58% |
| Núcleo Principal Multidimensional | Ilimitado | O calor é ignorado; todos os outros 80 espaços devem ser Unidades em Branco Tianshu |

O número de execuções de padrão que a matriz realiza a cada tique é determinado em três passos:

1. **Capacidade base**: o Estável usa valores dedicados: cada Unidade de Thread T1 fornece `1.024`, cada T2 fornece `3.584`, e o total é limitado a `4.096`. Quântico e de Sobrecarga usam `256 × pontos de thread × fator de amplificação`; T1 fornece 1 ponto de thread e T2 fornece 2. O fator de amplificação é `R²` para o Quântico e `R³` para o de Sobrecarga, onde `R = 1 + o número de Unidades Amplificadoras Tianshu`.
2. A capacidade base além do teto por tique do Núcleo Principal é cortada no teto.
3. O resultado é multiplicado pela eficiência térmica atual para dar a taxa de transferência real.

O Núcleo Principal Multidimensional não tem teto de execução, mas a matriz ainda emite no máximo 16.384 chamadas de fabricação por tique. A taxa de transferência da matriz depende apenas da sua própria configuração de núcleo e do calor; é independente dos orçamentos de despacho e cópia do Vetor de Supercomputação Tianshu.

## Unidades Periféricas

| Unidade Periférica | Fornece | Propósito |
|-----------------|----------|---------|
| Unidade de Thread T1 | Estável: 1.024; Quântico/Sobrecarga: 1 ponto de thread | Eleva a capacidade base de fabricação por tique |
| Unidade de Thread T2 | Estável: 3.584; Quântico/Sobrecarga: 2 pontos de thread | Fornece capacidade dedicada ao Estável; em Quântico e Sobrecarga, dois pontos de thread por espaço economizam posições de núcleo |
| Unidade Amplificadora Tianshu | `R` +1 | Eleva o fator de amplificação dos núcleos Quântico e de Sobrecarga; o mesmo bloco é compartilhado com o Vetor de Supercomputação Tianshu |
| Unidade de Controle Térmico T1 | 1 ponto de resfriamento | Eleva a capacidade de calor e a taxa de resfriamento; o efeito real decai com a distância do Núcleo Principal |
| Unidade de Controle Térmico T2 | 2 pontos de resfriamento | O dobro de pontos de resfriamento por espaço, com o mesmo decaimento por distância |
| Unidade em Branco Tianshu | — | Compartilhada pelos dois multiblocos Tianshu; preenche um espaço de núcleo obrigatório sem adicionar atributos de desempenho |

Configurações Quânticas e de Sobrecarga permitem no máximo **15 Unidades Amplificadoras Tianshu**; uma décima sexta impede a estrutura de se formar. Núcleos Principais Estável e Multidimensional rejeitam amplificadores.

## Distância de Resfriamento

As Unidades de Controle Térmico escalam sua potência efetiva pela distância de Manhattan do Núcleo Principal central:

| Distância | Potência de Resfriamento Efetiva |
|---------:|------------------------:|
| 1 bloco | 100% |
| 2 blocos | 75% |
| 3 blocos | 50% |
| 4 blocos | 25% |
| 5 ou mais blocos | 0% |

## Fórmulas de Calor e Resfriamento

Primeiro calcule os pontos de resfriamento efetivos de todas as Unidades de Controle Térmico:

`C = Σ(pontos de resfriamento da unidade × multiplicador de distância)`

Uma unidade T1 fornece 1 ponto e uma T2 fornece 2 pontos. O multiplicador de distância vem da tabela acima. Por exemplo, uma unidade T2 a 2 blocos do Núcleo Principal contribui `2 × 75% = 1,5` pontos de resfriamento efetivos.

Os pontos de resfriamento efetivos determinam tanto a capacidade de calor quanto a taxa de resfriamento por tique:

* **Capacidade de calor:** `K = 2048 + 150 × C`
* **Taxa de resfriamento:** `r = 0,00008 + 0,000025 × C`
* **Calor exibido:** `h = clamp(H ÷ K, 0, 1)`

Aqui, `H` é o calor atualmente armazenado na matriz e `h` é o calor de 0%–100% mostrado pelo Controlador. A taxa de resfriamento é proporcional, não fixa: enquanto ociosa, o calor restante após cada tique é `H_prox = H_atual × (1 - r)`. Por exemplo, quando `C = 20`, a capacidade de calor é `5.048` e a matriz dissipa `0,058%` do seu calor atual a cada tique.

Enquanto a matriz trabalha, ela gera calor da sua carga real antes de aplicar o resfriamento daquele tique:

`H_prox = (H_atual + P × g × L) × (1 - r)`

* `P` é a contagem total de pontos de thread: cada Unidade de Thread T1 fornece 1 ponto e cada T2 fornece 2
* `L` é a quantidade de execuções de padrão aceitas pela matriz neste tique dividida pelas execuções disponíveis, limitada a 0–1; é 0 enquanto ociosa
* Núcleos Principais Estável e Quântico usam o coeficiente de geração de calor `g = 0,256`
* O Núcleo Principal de Sobrecarga usa `g = 1,2032`

O calor então afeta a taxa de transferência real através da eficiência térmica:

* **Estável e Quântico:** `eficiência = clamp(1 - h, 0,45, 1)`, então a eficiência nunca cai abaixo de 45%
* **Sobrecarga:** `eficiência = 0,05 + 0,95 × [4h(1 - h)]⁵`, com pico em `h = 50%`
* **Multidimensional:** fixada em 100%; ele não lê nem acumula calor
