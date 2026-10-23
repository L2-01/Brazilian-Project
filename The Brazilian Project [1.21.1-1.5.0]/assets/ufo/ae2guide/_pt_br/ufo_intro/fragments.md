---
navigation:
  parent: ufo_intro/materials.md
  title: Matéria Estelar Avançada
  position: 20
---

# Matéria Estelar Avançada (Guia de Lingotes)

Os materiais avançados usados no UFO Future são fabricados no Montador de Matéria Dimensional (DMA). Eles não são minerados diretamente do mundo. Esses lingotes de alta densidade formam a espinha dorsal da tecnologia de fim de jogo, incluindo processadores, mega-armazenamento e ligas de armadura.

Esta página documenta os principais lingotes de matéria estelar, como obtê-los e seus usos típicos.

---

## Lingote de Anã Branca

**Papel:** Lingote base de alta densidade usado em muitos componentes de meio e fim de jogo.

### Aquisição

Os Lingotes de Fragmento de Anã Branca são fabricados no DMA a partir de precursores
comprimidos e fluidos reativos.

<Recipe id="ufo:dma/ingot/white_dwarf_fragment" />

### Usos comuns

- Peças para máquinas avançadas
- Ligas de matéria estelar de tier inicial
- Componente das peças do exotraje de Resistor Térmico

---

## Lingote de Estrela de Nêutrons

**Papel:** Mais denso e energético que o de Anã Branca; usado em componentes de tier alto.

### Aquisição

Produzido no DMA com insumos mais exóticos, maior custo de energia e fluidos ou catalisadores especiais.

<Recipe id="ufo:dma/ingot/neutron_star_fragment" />

### Usos comuns

- Mega Coprocessadores
- Matrizes de armazenamento avançadas
- Componentes de armadura e ferramentas de tier alto

---

## Lingote de Pulsar

**Papel:** Lingote avançado de alto rendimento destinado a construções de fim de jogo.

### Aquisição

Fabricado no DMA com insumos de tier máximo e geralmente exige catalisadores fortes e refrigerante premium, como Matéria Transcendente.

<Recipe id="ufo:dma/ingot/pulsar_fragment" />

### Usos comuns

- Processadores e matrizes de tier máximo
- Melhorias e componentes de armadura de fim de jogo
- Itens de progressão de alto valor

---

## Outros materiais notáveis

O mod também inclui vários itens relacionados de alta densidade e materiais de transição usados na produção de lingotes:

- **Cristal de Matéria UU:** forma sólida usada em certas receitas do DMA e tiers de catalisador.
  <Recipe id="ufo:dma/uu_matter_crystal" />
- **Matéria Escura / Protomatéria / Matéria Transcendente:** materiais de tier especial usados como insumos das receitas de tier máximo ou como fluidos em etapas de refrigeração e processamento.

---

## Notas e boas práticas

- **Apenas no DMA:** esses lingotes devem ser montados no DMA. Garanta energia, catalisadores e refrigerante suficientes antes de tentar receitas avançadas.
- **Orientação de catalisadores e refrigerante:** Fluxo de Matéria reduz o custo de AE, Crono aumenta
  a velocidade, Sobrefluxo compensa o calor e Quântico adiciona saída de bônus. Tiers altos podem
  exigir resfriamento mais forte quando vários catalisadores são combinados.
- **Regra de complexidade de receita:** algumas receitas do DMA impõem `ItemInputs + FluidInputs &lt;= 4`. Se uma receita do DMA falhar na validação, verifique o número de insumos distintos de item/fluido.
- **Administradores de servidor:** considere travar receitas de Pulsar e do tier Transcendente atrás de progressão, missões, drops de chefes ou pesquisa para evitar desequilíbrio no início do jogo.

---

## Solução de Problemas

- A receita não aparece no DMA: verifique o ID da receita e se o JSON `data/` do DMA está habilitado no seu datapack ou mod.
- Travamento térmico ou superaquecimento: adicione refrigerante mais forte, use Sobrefluxo, ative o Modo
  Seguro onde disponível ou reduza os catalisadores Crono.
- Alto consumo de energia: adicione Fluxo de Matéria T2/T3 para reduzir o custo de energia.

Use a consulta de receitas do JEI/GuideME se um pacote sobrescrever essas receitas do DMA.
