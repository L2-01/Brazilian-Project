---
navigation:
  title: Canhão Elétrico Eletromagnético
  icon: ae2lt:electromagnetic_railgun
  parent: devices-index.md
  position: 10
item_ids:
  - ae2lt:electromagnetic_railgun
  - ae2lt:railgun_module_core
  - ae2lt:railgun_module_compute
  - ae2lt:railgun_module_acceleration
  - ae2lt:railgun_module_ehv_beam
  - ae2lt:railgun_module_range
  - ae2lt:railgun_module_overload_execution
  - ae2lt:railgun_module_multidimensional_execution
  - ae2lt:energy_module_t1
  - ae2lt:energy_module_t2
  - ae2lt:energy_module_t3
---

# Canhão Elétrico Eletromagnético

<Row>
  <ItemImage id="ae2lt:electromagnetic_railgun" scale="4" />
</Row>

O **Canhão Elétrico Eletromagnético** é uma arma modular de sobrecarga. Ele exige uma rede ME vinculada para munição de Raios e um buffer de FE local para carregar e disparar.

## Preparação Obrigatória

Prepare o canhão elétrico na <ItemLink id="ae2lt:overload_device_workbench" />:

* Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no slot de núcleo estrutural; é obrigatório para o funcionamento do canhão
* Instale o <ItemLink id="ae2lt:railgun_module_core" /> para habilitar disparos carregados e a compensação de HV para disparos carregados e feixes EHV

A bancada vincula o canhão à sua rede ME quando ele é inserido. A rede vinculada deve permanecer carregada e online. Sem um Módulo de Energia, o canhão armazena 1.000.000 FE.

## Modos de Disparo

### Fogo de Feixe

Segure a tecla de ataque com o canhão na mão principal para disparar um feixe com alcance base de 64 blocos.

O fogo de feixe usa apenas Raio de Alta Tensão. Por padrão, cada pulso de 2 ticks causa 20 de dano, ignora 40% da redução de armadura, consome 400 FE e consome 1 Raio de Alta Tensão a cada 8 pulsos.

### Disparo Carregado

Segure o uso para carregar e solte para disparar. Soltar antes do primeiro tier de carga não produz disparo. Disparos carregados têm alcance base de 64 blocos.

| Tier | Tempo Base de Carga | Dano Padrão | Custo de Disparo |
|------|------------------|----------------|-------------|
| EHV1 | 0.5 s | 100 | 8,000 FE + 32 EHV |
| EHV2 | 1.2 s | 300 | 40,000 FE + 96 EHV |
| EHV3 | 2.0 s | 600 | 200,000 FE + 256 EHV |

Carregar também drena FE do buffer do canhão a cada tick: 1.000 / 4.000 / 10.000 FE para o progresso de carga EHV1 / EHV2 / EHV3. Disparos carregados têm 80% de perfuração de armadura, aplicam paralisia eletromagnética por 2 segundos e ganham 25% de dano durante tempestades quando o atirador consegue ver o céu.

Disparos carregados e feixes EHV consomem primeiro os raios EHV disponíveis. Com o módulo de núcleo instalado, apenas o déficit é compensado a **16 HV = 1 EHV**.

## Recuo

Disparos carregados aplicam recuo baseado no tier; agachar o reduz pela metade, enquanto disparar no ar o torna mais forte.

Vestir o conjunto Celestweave completo (<ItemLink id="ae2lt:celestweave_oculus" />, <ItemLink id="ae2lt:celestweave_core" />, <ItemLink id="ae2lt:celestweave_conduit" />, <ItemLink id="ae2lt:celestweave_stride" />) cancela inteiramente o recuo de disparos carregados, incluindo o coice de visão e a trepidação de câmera.

## Módulos

| Módulo | Limite | Efeito |
|--------|-------|--------|
| Módulo de Energia T1 / T2 / T3 | 1 | Define a capacidade de FE do canhão em 100.000.000 / 500.000.000 / 2.000.000.000 FE |
| Módulo de Computação de Sobrecarga | 2 | Habilita e melhora arcos em cadeia; na carga máxima, fortalece o pulso EMP |
| Módulo de Aceleração de Sobrecarga | 2 | Cada módulo adiciona +1 unidade de carga por tick, reduzindo o tempo de carga |
| Módulo de Alcance de Sobrecarga | 2 | Multiplica o alcance do feixe contínuo e do disparo carregado: um módulo dá alcance 2x e dois dão 4x |
| Módulo de Feixe EHV | 1 | Ative no Hub de Dispositivo: a cada 2 ticks, consome 16 raios EHV e 4.000 FE por 200 de dano base; desative para restaurar o feixe HV comum |
| Módulo de Execução de Sobrecarga | 1 | O modo percentual suporta os três tiers carregados; outros modos disparam apenas em acertos carregados EHV3; num modo de execução ativo gasta 20.000.000 FE adicionais para registrar a vida do alvo, e acertos repetidos podem concluir a execução |
| Módulo de Execução Multidimensional | 1 | Substitui a Execução de Sobrecarga: um acerto EHV3 elegível ignora o limiar de vida e o custo adicional de FE / Raios do módulo; seu resultado exato segue o ajuste compartilhado do Método de Execução |

Sem módulos de computação, arcos em cadeia ficam desabilitados. Com dois módulos de aceleração, o progresso de carga acumula a três vezes a taxa base.

Execução de Sobrecarga e Execução Multidimensional ocupam o mesmo slot de execução e não podem ser instaladas juntas. O módulo Multidimensional remove a sobretaxa de execução; carregar e disparar o canhão ainda usam os custos comuns de disparo listados acima.

## Ajustes do Hub de Dispositivo

Abra o Hub de Dispositivo de Sobrecarga com a tecla padrão G segurando o canhão.

* **Destruição de Terreno** controla se disparos carregados quebram terreno, ignorando proteção de claims. Fica desligado por padrão e ainda pode ser desabilitado pela config do servidor
* **PVP** permite ao canhão danificar outros jogadores quando habilitado. Quando desabilitado, jogadores não são alvejados nem danificados
* **Som** controla os efeitos sonoros locais do canhão
* **Dano em Cadeia** habilita saltos em cadeia tanto para disparos carregados quanto para o feixe contínuo; o feixe comum pode iniciar uma cadeia no seu ponto final mesmo sem acertar uma entidade diretamente
* **Método de Execução** é compartilhado pelos dois módulos de execução e alterna entre Desativado, Porcentagem, Morte Normal e Morte Forçada para a Sobrecarga; o Multidimensional pula a Porcentagem. Desativado nunca entra na cadeia explícita de morte/remoção: a Execução de Sobrecarga em vez disso adiciona 600 de dano eletromagnético perfurante, enquanto a Execução Multidimensional adiciona `Float.MAX_VALUE` de dano eletromagnético perfurante. Essas chamadas de dano comum preservam as mecânicas próprias de dano, morte e saque do alvo. O fallback Desativado não tem sobretaxa de módulo de execução
* **Feixe EHV** aparece após instalar o módulo. Ele consome primeiro os raios EHV disponíveis; com o módulo de núcleo instalado, cada EHV faltante custa 16 HV. Sem núcleo ou HV suficiente, o disparo para sem rebaixar. Feixes EHV, brilhos de extremidade e arcos em cadeia são rosa-brancos; feixes HV comuns são ciano-brancos. A compensação preserva a cor e o dano EHV. A config do servidor controla dano e custos; as regras normais de armadura, tempestade e cadeia do feixe ainda se aplicam
* **Explosão Carregada** controla o dano em área no ponto de impacto para cada tier carregado; desabilitá-la mantém os acertos diretos e as cadeias de alvos atingidos diretamente
* O alcance da **Execução de Sobrecarga** sempre inclui o alvo direto, enquanto a execução em área local é limitada à metade do raio de explosão carregada ativo; a propagação em cadeia nunca carrega execução
* O hub também mostra contagens de módulos, armazenamento de FE e o status da rede vinculada

## Notas de Combate

Disparos carregados causam dano em área no ponto de impacto, com raios por tier de 5,5 / 8 / 12 blocos; o dano decai em direção à borda e o dano em área contra jogadores é reduzido pela metade. O EHV3 também penetra até 5 alvos e libera um pulso EMP com raio de 10 blocos ao redor do primeiro alvo.

Módulos de computação aumentam a contagem de saltos e de bifurcações em cadeia, e ampliam o raio do pulso enquanto elevam seu dano. Tempestades aumentam o alcance da cadeia e a contagem de bifurcações.

## Dano Percentual

Apenas a Execução de Sobrecarga fornece este modo. Tiers carregados adicionam **5% / 10% / 20% da vida máxima** ao disparo antes da armadura comum, mitigação e eventos de dano. Ele nunca escreve vida nem força remoção. Cada alvo recebe o bônus no máximo uma vez por disparo e paga a sobretaxa usual de **20.000.000 FE** de Sobrecarga; FE insuficiente deixa apenas o ataque base. Entrar ou sair da Porcentagem limpa o HP lembrado.

Apenas o alvo direto e o raio de execução local existente se qualificam; a propagação em cadeia não carrega o bônus. Nem feixes HV nem EHV disparam dano percentual ou execução, e o módulo EHV não aumenta o dano carregado nem as porcentagens. Pulsos de feixe EHV ignoram o tempo de espera comum de dano enquanto preservam a imunidade específica de cada entidade. O feixe HV comum mantém seu comportamento original de espera de dano.
