---
item_ids:
  - minformax:scanner
  - minformax:index_inscriber
  - minformax:eternal_generator
  - minformax:memory_shard
  - minformax:chaos_shard
navigation:
  title: 1. Coleta de Criaturas & Indexação Genética
  icon: minformax:memory_shard
---

# Coleta de Criaturas & Indexação Genética

Bem-vindo ao capítulo de coleta de criaturas do seu manual. Aqui, você aprenderá a escanear entidades, inscrever seus dados genéticos e extrair suas recompensas infinitamente.

---

## 1. A Fase de Escaneamento

Para começar a automatizar a coleta de recursos de criaturas vivas, você precisa capturar as informações delas em campo.

* **A Ferramenta:** Fabrique um <ItemLink id="minformax:scanner" /> para começar.
* **Como Escanear:** Equipe o escaneador e **clique com o botão direito** em qualquer entidade viva.
* **O Índice Mestre:** Se a entidade alvo estiver registrada na configuração, ela será adicionada diretamente aos seus registros de índice.

<Row>
    <ItemImage id="minformax:scanner" scale="4" />
    <RecipeFor id="minformax:scanner" />
</Row>

> 💡 **Dica:** Quer ver seu progresso? Você pode revisar todas as criaturas disponíveis e seus escaneamentos desbloqueados a qualquer momento no **Menu de índice**, pressionando a tecla configurada: <KeyBind id="key.minformax.open_index_menu" />.

---

## 2. Gerenciando Dados: O Gravador de Índice

Depois de reunir as informações genéticas, você precisa gravá-las num fragmento. Coloque um bloco de **Gravador de Índice** para prosseguir.

<Row>
    <BlockImage id="minformax:index_inscriber" scale="4"/>
    <RecipeFor id="minformax:index_inscriber" />
</Row>

* **Registros Pessoais:** O Gravador de Índice funciona como uma interface de laboratório personalizada, única para o seu perfil de jogador, exibindo todas as entidades que você registrou.
* **Inscrevendo Dados:** Insira fragmentos vazios no dispositivo de laboratório para inscrever as informações genéticas:
  * Use um <ItemLink id="minformax:memory_shard" /> para entidades comuns.
  * Use um <ItemLink id="minformax:chaos_shard" /> para chefes.

---

## 3. O Gerador Eterno

Com um fragmento programado pronto, você já pode fabricar um **Gerador Eterno** para simular fisicamente a extração de recompensas de criaturas.

<Row>
    <BlockImage id="minformax:eternal_generator" scale="4" />
    <RecipeFor id="minformax:eternal_generator" />
</Row>

### Funcionalidade Central:
* **Extração Simulada:** Deslize seu fragmento de memória ou de caos inscrito para dentro para começar a gerar recompensas continuamente. Você pode inspecionar as saídas válidas via JEI ou diretamente na sua interface do Laboratório de Índice.
* **Requisitos de Energia:** Esta máquina requer um fornecimento ativo de energia FE de um bloco de armazenamento de energia adjacente para manter a operação.
* **Acúmulo de EXP:** Além das recompensas de itens, o gerador produz experiência. Clique no botão **Coletar EXP** no topo da interface para absorvê-la.

### Logística & Sobrecarga️
O Gerador Eterno depende de extração imediata de itens.
* **Exportação Automática:** O bloco exporta automaticamente suas recompensas produzidas para um bloco de armazenamento adjacente (como um baú).
* **A Regra da Sobrecarga:** Se nenhum armazenamento adjacente for encontrado, ou se o seu contêiner encher, a máquina acumula **Sobrecarga**.
* **1 Sobrecarga = 1 Item Excedente** que não encontra um lar.

> 🧪 *Nota: Fique de olho nos seus medidores de sobrecarga! Embora ela trave a saída de itens, uma taxa alta de sobrecarga é essencial para fabricações de fim de jogo mais tarde.*

### Exemplo de Montagem
Abaixo está um layout padrão mostrando um Gerador Eterno alimentado por energia adjacente, despejando recompensas num contêiner de baú comum.

<GameScene zoom={3} interactive={true}>
    <Block id="minecraft:chest" x="0" y="0" z="0" />
    <Block id="minformax:eternal_generator" x="1" y="0" z="0" />
    <Block id="minformax:creative_energy" x="1" y="0" z="1" />
</GameScene>
