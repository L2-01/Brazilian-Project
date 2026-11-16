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
---

# Canhão Elétrico Eletromagnético

<Row>
  <ItemImage id="ae2lt:electromagnetic_railgun" scale="4" />
</Row>

O **Canhão Elétrico Eletromagnético** é uma arma de sobrecarga modular. Ele requer uma rede ME vinculada para a munição de Raios e um buffer local de FE para carregar e disparar.

## Preparação Necessária

Prepare o canhão na <ItemLink id="ae2lt:overload_device_workbench" />:

* Instale um <ItemLink id="ae2lt:ultimate_overload_core" /> no espaço de núcleo estrutural; é obrigatório para o funcionamento do canhão
* Instale o <ItemLink id="ae2lt:railgun_module_core" /> para habilitar tiros carregados e a compensação de HV para tiros carregados e feixes EHV

A bancada vincula o canhão à sua rede ME quando ele é inserido. A rede vinculada precisa permanecer carregada e online. Sem um Módulo de Energia, o canhão armazena 1.000.000 FE.

## Modos de Disparo

### Disparo de Feixe

Segure a tecla de ataque com o canhão na mão principal para disparar um feixe com alcance base de 64 blocos.

O disparo de feixe usa apenas Raios de Alta Tensão. Por padrão, cada acerto resolvido a cada 2 tiques causa 20 de dano, ignora 40% da redução de armadura, consome 400 FE e consome 1 Raio de Alta Tensão a cada 8 acertos.

### Tiro Carregado

Segure o uso para carregar e solte para disparar. Soltar antes do primeiro nível de carga não produz tiro. Tiros carregados têm alcance base de 64 blocos.

| Nível | Tempo de Carga Base | Dano Padrão | Custo de Disparo |
|------|------------------|----------------|-------------|
| EHV1 | 0,5 s | 100 | 8.000 FE + 32 EHV |
| EHV2 | 1,2 s | 300 | 40.000 FE + 96 EHV |
| EHV3 | 2,0 s | 600 | 200.000 FE + 256 EHV |

Carregar também drena FE do buffer do canhão a cada tique: 1.000 / 4.000 / 10.000 FE para o progresso de carga EHV1 / EHV2 / EHV3. Tiros carregados têm 80% de perfuração de armadura, aplicam paralisia eletromagnética por 2 segundos e ganham 25% de dano durante tempestades quando o atirador pode ver o céu.

Tiros carregados e feixes EHV consomem primeiro os raios EHV disponíveis. Com o módulo do núcleo instalado, apenas o déficit é compensado a **16 HV = 1 EHV**.

## Recuo

Tiros carregados aplicam recuo conforme o nível; agachar-se o reduz pela metade, enquanto disparar no ar o torna mais forte.

Vestir o conjunto Celestweave completo (<ItemLink id="ae2lt:celestweave_oculus" />, <ItemLink id="ae2lt:celestweave_core" />, <ItemLink id="ae2lt:celestweave_conduit" />, <ItemLink id="ae2lt:celestweave_stride" />) cancela totalmente o recuo de tiros carregados, incluindo o tranco na visão e o tremor de câmera.

## Módulos

| Módulo | Limite | Efeito |
|--------|-------|--------|
| Módulo de Energia T1 / T2 / T3 | 1 | Define a capacidade de FE do canhão para 100.000.000 / 500.000.000 / 2.000.000.000 FE |
| Módulo de Computação de Sobrecarga | 2 | Habilita e melhora arcos em cadeia; com carga máxima, fortalece o pulso de PEM |
| Módulo de Aceleração de Sobrecarga | 2 | Cada módulo adiciona +1 unidade de carga por tique, reduzindo o tempo de carga |
| Módulo de Alcance de Sobrecarga | 2 | Multiplica o alcance do feixe contínuo e do tiro carregado: um módulo dá 2x de alcance e dois dão 4x |
| Módulo de Feixe EHV | 1 | Ative no Hub de Dispositivos: a cada 2 tiques, consome 16 raios EHV e 4.000 FE por 200 de dano base; desative para restaurar o feixe HV comum |
| Módulo de Execução de Sobrecarga | 1 | O modo percentual suporta os três níveis carregados; os demais modos disparam apenas em acertos carregados EHV3; num modo de execução ativo ele gasta 20.000.000 FE adicionais para registrar a vida do alvo, e acertos repetidos podem completar a execução |
| Módulo de Execução Multidimensional | 1 | Substitui a Execução de Sobrecarga: um acerto EHV3 elegível ignora o limiar de vida e o custo adicional de FE / Raios do módulo; seu resultado exato segue a configuração compartilhada de Método de Execução |

Sem módulos de computação, os arcos em cadeia ficam desativados. Com dois módulos de aceleração, o progresso de carga acumula a três vezes a taxa base.

Execução de Sobrecarga e Execução Multidimensional ocupam o mesmo espaço de execução e não podem ser instaladas juntas. O módulo Multidimensional remove a sobretaxa de execução; carregar e disparar o canhão ainda usam os custos de tiro comuns listados acima.

## Configurações do Hub de Dispositivos

Abra o Hub de Dispositivos de Sobrecarga com a tecla padrão G enquanto segura o canhão.

* **Destruição de Terreno** controla se tiros carregados quebram o terreno, ignorando proteção de claims. Fica desligada por padrão e ainda pode ser desativada pela configuração do servidor
* **PVP** permite que o canhão cause dano a outros jogadores quando ativado. Quando desativado, jogadores não são alvejados nem danificados
* **Som** controla os efeitos sonoros locais do canhão
* **Dano em Cadeia** ativa saltos em cadeia tanto para tiros carregados quanto para o feixe contínuo; o feixe comum pode iniciar uma cadeia no seu ponto final mesmo sem acertar uma entidade diretamente
* **Método de Execução** é compartilhado pelos dois módulos de execução e alterna entre Desligado, Percentual, Morte Normal e Morte Forçada para a de Sobrecarga; a Multidimensional pula o Percentual. Desligado nunca entra na cadeia explícita de morte/remoção: a Execução de Sobrecarga em vez disso adiciona 600 de dano eletromagnético perfurante de armadura, enquanto a Execução Multidimensional adiciona `Float.MAX_VALUE` de dano eletromagnético perfurante de armadura. Essas chamadas de dano comum preservam as mecânicas próprias de dano, morte e saque do alvo. A alternativa Desligado não tem sobretaxa de módulo de execução
* **Feixe EHV** aparece após instalar o módulo. Ele consome primeiro os raios EHV disponíveis; com o módulo do núcleo instalado, cada EHV faltante custa 16 HV. Sem núcleo ou HV suficiente, o disparo para sem rebaixar. Feixes EHV, brilhos de ponto final e arcos em cadeia são rosa-esbranquiçados; feixes HV comuns são ciano-esbranquiçados. A compensação preserva a cor e o dano de EHV. A configuração do servidor controla dano e custos; as regras normais de armadura, tempestade e cadeia do feixe ainda se aplicam
* **Explosão Carregada** controla o dano em área no ponto de impacto para cada nível carregado; desativá-la mantém os acertos diretos e as cadeias vindas de alvos atingidos diretamente
* O **alcance da Execução de Sobrecarga** sempre inclui o alvo direto, enquanto a execução em área local é limitada à metade do raio de explosão carregada ativo; a propagação em cadeia nunca carrega execução
* O hub também mostra contagens de módulos, armazenamento de FE e o status da rede vinculada

## Notas de Combate

Tiros carregados causam dano em área no ponto de impacto, com raios por nível de 5,5 / 8 / 12 blocos; o dano decai em direção à borda, e o dano em área contra jogadores é reduzido pela metade. O EHV3 também penetra até 5 alvos e libera um pulso de PEM com raio de 10 blocos ao redor do primeiro alvo.

Módulos de computação aumentam a contagem de saltos em cadeia e o número de bifurcações, e ampliam o raio do pulso enquanto elevam o dano do pulso. Tempestades aumentam o alcance da cadeia e o número de bifurcações.

## Dano Percentual

Apenas a Execução de Sobrecarga oferece este modo. Os níveis carregados adicionam **5% / 10% / 20% da vida máxima** ao tiro antes da armadura comum, mitigação e eventos de dano. Ele nunca escreve vida nem força remoção. Cada alvo recebe o bônus no máximo uma vez por tiro e paga a sobretaxa de Sobrecarga usual de **20.000.000 FE**; FE insuficiente deixa apenas o ataque base. Entrar ou sair do modo Percentual limpa a HP memorizada.

Apenas o alvo direto e o raio de execução local existente se qualificam; a propagação em cadeia não carrega o bônus. Nem os feixes HV nem os EHV disparam dano percentual ou execução, e o módulo EHV não aumenta o dano ou os percentuais carregados. Os acertos do feixe EHV ignoram o tempo de espera de dano comum, preservando a imunidade específica de cada entidade. O feixe HV comum mantém seu comportamento original de tempo de espera de dano.
