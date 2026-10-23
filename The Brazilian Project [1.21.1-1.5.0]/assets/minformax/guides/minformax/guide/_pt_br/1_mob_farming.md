---
item_ids:
  - minformax:scanner
  - minformax:index_inscriber
  - minformax:eternal_generator
  - minformax:memory_shard
  - minformax:chaos_shard
navigation:
  title: 1. Criação de Mobs e Indexação Genética
  icon: minformax:memory_shard
---

# Criação de Mobs e Indexação Genética

Boas-vindas ao capítulo de criação de mobs do seu manual. Aqui você aprenderá a escanear entidades, gravar seus dados genéticos e extrair seus drops infinitamente.

---

## 1. A Fase de Escaneamento

Para começar a automatizar a coleta de recursos de criaturas vivas, você deve capturar as informações delas em campo.

* **A Ferramenta:** Fabrique um <ItemLink id="minformax:scanner" /> para começar.
* **Como Escanear:** Equipe o escaneador e clique com o **Botão Direito** em qualquer entidade viva.
* **O Índice Mestre:** Se a entidade alvo estiver registrada na configuração, ela será adicionada diretamente aos seus registros de índice.

<Row>
    <ItemImage id="minformax:scanner" scale="4" />
    <RecipeFor id="minformax:scanner" />
</Row>

> 💡 **Dica:** Quer ver seu progresso? Você pode revisar todos os mobs disponíveis e seus escaneamentos desbloqueados a qualquer momento no **Menu de Índice** pressionando sua tecla configurada: <KeyBind id="key.minformax.open_index_menu" />.

---

## 2. Gerenciando Dados: O Gravador de Índice

Depois de reunir informações genéticas, você precisa gravá-las num fragmento. Coloque um bloco **Gravador de Índice** para prosseguir.

<Row>
    <BlockImage id="minformax:index_inscriber" scale="4"/>
    <RecipeFor id="minformax:index_inscriber" />
</Row>

* **Registros Pessoais:** O Gravador de Índice funciona como uma interface de laboratório personalizada exclusiva do seu perfil de jogador, exibindo todas as entidades que você registrou.
* **Gravando Dados:** Insira fragmentos vazios no dispositivo de laboratório para gravar as informações genéticas:
  * Use um <ItemLink id="minformax:memory_shard" /> para entidades comuns.
  * Use um <ItemLink id="minformax:chaos_shard" /> para chefes.

---

## 3. O Gerador Eterno

Com um fragmento programado pronto, você já pode fabricar um **Gerador Eterno** para simular fisicamente a extração de drops de mobs.

<Row>
    <BlockImage id="minformax:eternal_generator" scale="4" />
    <RecipeFor id="minformax:eternal_generator" />
</Row>

### Funcionalidade Principal:
* **Extração Simulada:** Deslize seu fragmento de memória ou de caos gravado para dentro e comece a gerar drops continuamente. Você pode inspecionar as saídas válidas via JEI ou diretamente na sua interface do Laboratório de Índice.
* **Requisitos de Energia:** Esta máquina requer um suprimento ativo de energia FE de um bloco de armazenamento de energia adjacente para funcionar.
* **Acúmulo de XP:** Além de drops de itens, o gerador produz experiência. Clique no botão **Coletar XP** no topo da interface para absorvê-la.

### Logística e Sobrecarga️
O Gerador Eterno depende de extração imediata de itens.
* **Exportação Automática:** O bloco exportará automaticamente seus drops produzidos para um bloco de armazenamento adjacente (como um baú).
* **A Regra da Sobrecarga:** Se nenhum armazenamento adjacente for encontrado, ou se o seu contêiner encher, a máquina acumula **Sobrecarga**.
* **1 Sobrecarga = 1 Item Excedente** que não encontra um lar.

> 🧪 *Nota: Fique de olho nos seus medidores de sobrecarga! Embora ela trave a saída de itens, uma alta taxa de sobrecarga é crítica para fabricações de fim de jogo mais à frente.*

### Exemplo de Configuração
Abaixo está um layout padrão mostrando um Gerador Eterno alimentado por energia adjacente, despejando drops num contêiner de baú comum.

<GameScene zoom={3} interactive={true}>
    <Block id="minecraft:chest" x="0" y="0" z="0" />
    <Block id="minformax:eternal_generator" x="1" y="0" z="0" />
    <Block id="minformax:creative_energy" x="1" y="0" z="1" />
</GameScene>
