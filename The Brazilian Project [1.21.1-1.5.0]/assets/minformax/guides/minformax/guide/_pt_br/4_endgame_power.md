---
item_ids:
  - minformax:quantum_ingot
  - minformax:quantum_foam
  - minformax:linker
  - minformax:pandora_box
  - minformax:babylon_key
  - minformax:void_ingot
  - minformax:aether_ingot
  - minformax:sakuradite_casing
  - minformax:sakuradite_panel
  - minformax:sakuradite_input_hatch
  - minformax:sakuradite_output_hatch
navigation:
  title: 4. Materiais Avançados, Caixa de Pandora e Babilônia
  icon: minformax:babylon_key
---

# Materiais Avançados, Caixa de Pandora e Babilônia

Boas-vindas ao fim de jogo da sua jornada. Este capítulo final cobre a geração de energia de ponta e o multibloco de aceleração de tiques.

---

## 1. Conversão Quântica

Para criar materiais avançados, você deve estar familiarizado com os conceitos da <ItemLink id="minformax:quantum_foam" />.

* **Lingote do Vazio:** Leve sua Espuma Quântica para a dimensão **O End** e jogue o item diretamente no vazio. Ele será convertido num <ItemLink id="minformax:void_ingot" />.
* **Lingote de Éter:** Leve a Espuma Quântica para o **Mundo Normal** e jogue-a para cima numa altura de **Y = 1000 ou maior**. Ela será convertida num <ItemLink id="minformax:aether_ingot" />.

### Espuma Quântica
Para fazer espuma, você deve sobrecarregar intencionalmente um sistema ativo:
1. Segure um <ItemLink id="minformax:quantum_ingot" /> na sua mão principal.
2. Encontre um **Gerador Eterno** ativo que tenha acumulado **5120 ou mais unidades de Sobrecarga** dentro do seu buffer.
3. **Shift + Botão Direito** no gerador. Ele consome a sobrecarga e converte seu lingote em Espuma Quântica.

---

## 2. Energia de Fim de Jogo: A Caixa de Pandora

A **Caixa de Pandora** é um gerador avançado que cria quantidades massivas de energia.
<GameScene zoom={6} interactive={true}>
    <Block id="minformax:pandora_box"/>
</GameScene>
### Configurando uma Conexão de Sifão:
1. Fabrique uma <ItemLink id="minformax:linker" />.
2. Vincule seus Geradores Eternos e pressione **Botão Direito** para vincular ou desvinculá-los. Máquinas vinculadas se destacam quando você segura a ferramenta. Segure **Shift** para (des)vincular em massa.
3. Coloque o item Motorola configurado no espaço dentro da interface da Caixa de Pandora.
4. A cada **60 segundos (1 minuto)**, o núcleo colherá a sobrecarga das máquinas vinculadas.

> ⚡ **A Taxa de Energia por Sobrecarga:** A caixa produz **1 FE para cada 1 unidade de Sobrecarga** rastreada. O melhor de tudo: **a Sobrecarga nunca é consumida** durante este ciclo de coleta!

* **Multiplicador de XP:** Clique no botão superior da interface para depositar seus próprios níveis de jogador. Isso aplica permanentemente um multiplicador de produção a toda a energia gerada.

---

## 3. Aceleração de Tiques: Portão da Babilônia

O **Portão da Babilônia** é uma estrutura multibloco avançada capaz de multiplicar as velocidades de tique de tudo dentro de seus limites de **2x até 256x**.

### Regras de Construção:
* **Dimensões:** Tamanho mínimo de 3x3x3 blocos. Suporta um máximo de configuração padrão de 256x256x256 blocos para evitar lentidão no desempenho do servidor.
* **A Moldura:** Construa todas as arestas e cantos usando <ItemLink id="minformax:sakuradite_casing" />.
* **A Fachada:** Preencha todas as paredes restantes e faces planas completamente usando quaisquer blocos de Sakuradita (como <ItemLink id="minformax:sakuradite_panel" />).
* **Injeção de Energia:** Integre <ItemLink id="minformax:sakuradite_input_hatch" /> no revestimento da parede para aceitar energia FE.
* **Extração de Energia:** Integre <ItemLink id="minformax:sakuradite_output_hatch" /> no revestimento da parede para extrair energia FE.

<Row>
    <BlockImage id="minformax:sakuradite_casing" scale="4"/>
    <BlockImage id="minformax:sakuradite_panel" scale="4"/>
    <BlockImage id="minformax:sakuradite_input_hatch" scale="4"/>
    <BlockImage id="minformax:sakuradite_output_hatch" scale="4"/>
    <ItemImage id="minformax:babylon_key" scale="5" />
</Row>

### Protocolo de Ativação:
Uma vez totalmente construído, pegue sua <ItemLink id="minformax:babylon_key" /> e clique com o **Botão Direito** na estrutura para travá-la. Uma vez ativo, ele consome energia, acelera por tique tudo dentro de seus limites e concede **Voo Livre estilo Criativo** a qualquer jogador dentro do seu campo.

<GameScene zoom={2} interactive={true}>
    <ImportStructure src="./gate_of_babylon.nbt" />
    <BlockAnnotationTemplate id="minformax:sakuradite_input_hatch">
        <DiamondAnnotation pos="0.5 0.5 0.5" color="#00ff00">
            Conecte cabos de energia de alto nível aqui para suprir a matriz de distorção.
        </DiamondAnnotation>
    </BlockAnnotationTemplate>
    <BlockAnnotationTemplate id="minformax:sakuradite_output_hatch">
        <DiamondAnnotation pos="0.5 0.5 0.5" color="#0000cd">
            As Escotilhas de Sakuradita são fantasmas, então podem ser usadas como pontos de entrada e saída para o jogador.
        </DiamondAnnotation>
    </BlockAnnotationTemplate>
</GameScene>
