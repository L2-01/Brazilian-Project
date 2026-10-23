---
item_ids:
  - minformax:configuration_tool
  - minformax:speed_upgrade_tier1
  - minformax:ultimate_speed_upgrade
  - minformax:inverted_upgrade
  - minformax:auto_smelting_upgrade
  - minformax:watering_upgrade
  - minformax:compressing_upgrade
  - minformax:processing_upgrade_tier2
  - minformax:ultimate_processing_upgrade
  - minformax:fortune_upgrade_tier3
  - minformax:extra_drop_upgrade_tier4
navigation:
  title: 3. Redes de Máquinas e Melhorias
  icon: minformax:configuration_tool
---

# Redes de Máquinas e Melhorias

Passar tubos ou baús individuais para cada máquina pode bagunçar rapidamente o seu espaço de trabalho. Esta seção mostra como conectar máquinas entre si usando relés e ajustar o desempenho delas com melhorias.

---

## 1. Redes de Relé de Máquinas

Toda máquina deste mod (exceto o Gravador de Índice) tem um protocolo de extração automática. Se uma máquina não vê um baú logo ao lado, ela procura por uma **máquina MinForMax adjacente**. Se encontrar, ela a trata como um **relé de logística**!

### Escalando a Produção
Os itens descerão pela cadeia da rede até chegarem a um baú válido. Por exemplo, você pode empilhar 3 **Geradores Eternos** verticalmente com um único baú bem no topo. Todas as 3 unidades passarão itens para cima uma através da outra diretamente para aquele único baú!

<GameScene zoom={3}>
    <Block id="minecraft:chest" x="0" y="3" z="0" />
    <Block id="minformax:eternal_generator" x="0" y="2" z="0" />
    <Block id="minformax:eternal_generator" x="0" y="1" z="0" />
    <Block id="minformax:eternal_generator" x="0" y="0" z="0" />
</GameScene>

---

## 2. Gerenciando Faces: Ferramenta de Configuração

Gerenciar onde os itens entram e saem é controlado pelos seus perfis de configuração de lados. Para duplicar essas configurações pelo seu chão de fábrica, use a <ItemLink id="minformax:configuration_tool" />.

<RecipeFor id="minformax:configuration_tool" />

* **Copiar Configurações:** Pressione **Shift + Botão Direito** numa máquina para salvar sua configuração de faces.
* **Colar Configurações:** clique com o **Botão Direito** em qualquer outra máquina para colar instantaneamente essas configurações.

---

## 3. Melhorias

Personalize sua infraestrutura usando itens de melhoria.

| Melhoria | Efeito | Compatibilidade de Máquinas |
| :--- | :--- | :--- |
| **Velocidade (Níveis 1-4)** <ItemImage id="minformax:speed_upgrade_tier1"/> | Multiplica a velocidade: Nível 1 (2x), Nível 2 (4x), Nível 3 (8x), Nível 4 (16x). | Todas as Máquinas de Automação |
| **Velocidade Suprema** <ItemImage id="minformax:ultimate_speed_upgrade"/> | Concede **velocidade de 9999x** e **remove totalmente os custos de energia**. | Todas as Máquinas de Automação |
| **Processamento (Níveis 1-4)** <ItemImage id="minformax:processing_upgrade_tier2"/> | Multiplica as operações por tique: 4x, 16x, 64x ou 256x operações. | Todas as Máquinas de Automação |
| **Processamento Supremo** <ItemImage id="minformax:ultimate_processing_upgrade"/> | Executa instantaneamente **9999x operações paralelas**. Ainda requer energia. | **Apenas Coalescedor de Minério** |
| **Fortuna (Níveis 1-4)** <ItemImage id="minformax:fortune_upgrade_tier3"/> | Aumenta as taxas de rendimento de drops em até 10x. | Coalescedor de Minério e Agricultor |
| **Recompensa Extra (Níveis 1-4)** <ItemImage id="minformax:extra_drop_upgrade_tier4"/> | Aumenta suas chances de obter drops adicionais. | Apenas Gerador Eterno |

### Módulos Personalizados Avançados
* <ItemLink id="minformax:inverted_upgrade" />: Troca os conjuntos de drops principal e extra. Sua máquina gerará o drop extra como saída principal, e Melhorias de Recompensa Extra aumentarão o rendimento do drop principal. *(Apenas Gerador Eterno)*
* <ItemLink id="minformax:auto_smelting_upgrade" />: Derrete instantaneamente blocos de minério minerados em recursos processados. *(Apenas Coalescedor de Minério)*
* <ItemLink id="minformax:watering_upgrade" />: Faz o agricultor aumentar aleatoriamente as velocidades de crescimento. *(Apenas Agricultor)*
* <ItemLink id="minformax:compressing_upgrade" />: Processa itens de *Mystical Agriculture* em recursos finais. *(Apenas Agricultor)*
