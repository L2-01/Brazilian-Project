---
navigation:
  parent: ufo_intro/materials.md
  title: Matéria Estelar Avançada
  position: 20
---

# Matéria Estelar Avançada (Guia de Lingotes)

Os materiais avançados usados por todo o UFO Future são fabricados no Montador de Matéria Dimensional (DMA). Eles não são minerados diretamente do mundo. Esses lingotes de alta densidade formam a espinha dorsal da tecnologia de fim de jogo, incluindo processadores, mega-armazenamento e ligas de armadura.

Esta página documenta os principais lingotes de matéria estelar, como obtê-los e seus usos típicos.

---

## Lingote de Anã Branca

**Papel:** Lingote base de alta densidade usado em muitos componentes de meio a fim de jogo.

### Aquisição

Lingotes de Fragmento de Anã Branca são fabricados no DMA a partir de materiais
precursores comprimidos e fluidos reativos.

<Recipe id="ufo:dma/ingot/white_dwarf_fragment" />

### Usos comuns

- Peças para máquinas avançadas
- Ligas de matéria estelar de tier inicial
- Componente para as peças do Exoesqueleto de Resistência Térmica

---

## Lingote de Estrela de Nêutrons

**Papel:** Mais denso e energético que o de Anã Branca; usado para componentes de tier alto.

### Aquisição

Produzido no DMA usando entradas mais exóticas, custo de energia maior e fluidos ou catalisadores especiais.

<Recipe id="ufo:dma/ingot/neutron_star_fragment" />

### Usos comuns

- Mega Coprocessadores
- Matrizes de armazenamento avançadas
- Componentes de armadura e ferramentas de tier alto

---

## Lingote de Pulsar

**Papel:** Um lingote avançado de alto rendimento destinado a construções de fim de jogo.

### Aquisição

Fabricado no DMA com entradas de tier máximo e geralmente exige catalisadores fortes e refrigerante premium, como Fluido de Matéria Transcendente.

<Recipe id="ufo:dma/ingot/pulsar_fragment" />

### Usos comuns

- Processadores e matrizes de tier máximo
- Melhorias de armadura e componentes de fim de jogo
- Itens de portão de progressão de alto valor

---

## Outros materiais notáveis

O mod também inclui vários itens relacionados de alta densidade e materiais de transição usados na produção de lingotes:

- **Cristal de Matéria UU:** uma forma sólida usada em certas receitas de DMA e tiers de catalisador.
  <Recipe id="ufo:dma/uu_matter_crystal" />
- **Matéria Escura / Protomatéria / Matéria Transcendente:** materiais de tier especial usados como entradas para as receitas de tier mais alto ou como fluidos para passos de refrigeração e processamento.

---

## Notas & boas práticas

- **Apenas DMA:** Esses lingotes precisam ser montados no DMA. Garanta energia, catalisadores e refrigerante suficientes antes de tentar receitas avançadas.
- **Orientação de catalisador & refrigerante:** Fluxo de Matéria reduz o custo de AE, Crono aumenta a
  velocidade, Sobrefluxo compensa o calor e Quântico adiciona saída bônus. Tiers altos podem
  exigir refrigeração mais forte quando vários catalisadores são combinados.
- **Regra de complexidade de receita:** Algumas receitas de DMA impõem `ItemInputs + FluidInputs &lt;= 4`. Se uma receita de DMA falhar na validação, verifique o número de entradas distintas de item/fluido.
- **Administradores de servidor:** Considere travar receitas de tier Pulsar e Transcendente atrás de progressão, missões, itens largados de chefes ou pesquisa para evitar desequilíbrio no início do jogo.

---

## Solução de Problemas

- A receita não aparece no DMA: verifique o ID da receita e se o JSON `data/` do DMA está habilitado no seu datapack ou mod.
- Trava térmica ou superaquecimento: adicione refrigerante mais forte, use Sobrefluxo, ative o Modo
  Seguro onde disponível ou reduza os catalisadores Crono.
- Consumo de energia alto: adicione Fluxo de Matéria T2/T3 para reduzir o custo de energia.

Use a busca de receitas do JEI/GuideME se um pacote substituir essas receitas de DMA.
