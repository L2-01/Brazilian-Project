---
item_ids: [logisticsnetworks:name_filter]
navigation:
  title: Filtro de Regex
  parent: filters/index.md
  icon: logisticsnetworks:name_filter
  position: 5
---

# Filtro de Regex

Corresponde a itens pelo **nome de exibição** ou **texto do tooltip**, usando uma expressão regular (regex). Poderoso, mas fácil de usar errado — leia os avisos no fim antes de colocar um num canal de alto tráfego.

## Com o Que Ele Corresponde

Qualquer item cujo texto escolhido (nome, tooltip ou ambos) corresponda ao padrão de regex que você definiu. A correspondência é verificada contra o texto que o item mostraria no jogo, não contra seu id de registro.

## Configuração

Clique com o botão direito no filtro na mão para abrir o menu. Você verá:

- **Padrão de regex** — a expressão regular a testar contra o texto do item. Sintaxe padrão de regex Java.
- **Escopo** — contra qual texto corresponder:
  - **Nome** (padrão) — apenas o nome de exibição do item.
  - **Tooltip** — apenas as linhas do tooltip (lore, dicas de NBT etc.), não o nome.
  - **Ambos** — o nome e todas as linhas do tooltip.
- Alternância **Lista-Branca / Lista-Negra**.

O tooltip do próprio item mostra o escopo atual, o padrão e o modo de relance.

## Lista-Branca vs Lista-Negra

- **Lista-Branca** — só itens cujo texto corresponda à regex passam.
- **Lista-Negra** — itens cujo texto corresponde são bloqueados; todo o resto passa.

## Casos de Uso

- Corresponder a todo livro encantado que mencione "Silk Touch" no tooltip → escopo Tooltip, padrão `Silk Touch`.
- Corresponder a qualquer item cujo nome comece com "Iron" → escopo Nome, padrão `^Iron`.
- Bloquear qualquer coisa com "Damaged" no tooltip de ser importada para o seu armazenamento → escopo Tooltip, padrão `Damaged`, modo Lista-Negra.

## Exemplos de Regex

Uma colinha rápida para padrões comuns. Assuma escopo **Nome** salvo indicação.

| Padrão | Corresponde | Itens de exemplo |
|---------|---------|---------------|
| `Iron` | qualquer coisa contendo "Iron" | Iron Ingot, Iron Pickaxe, Iron Door |
| `^Iron` | nomes **começando** com "Iron" | Iron Ingot, Iron Pickaxe |
| `Ingot$` | nomes **terminando** com "Ingot" | Iron Ingot, Gold Ingot, Copper Ingot |
| `^Iron Ingot$` | exatamente "Iron Ingot" — sem Iron Block, sem Iron Pickaxe | só Iron Ingot |
| `(?i)iron` | correspondência insensível a maiúsculas para "iron" | Iron Ingot, iron ingot, IRON INGOT |
| `Iron\|Gold` | nomes contendo "Iron" **ou** "Gold" | Iron Ingot, Gold Nugget, Gold Block |
| `.*Axe$` | qualquer coisa terminando em "Axe" | Iron Axe, Diamond Axe, Netherite Axe |
| `^(?!.*Netherite).*Pickaxe$` | qualquer Pickaxe que **não** seja Netherite | Iron / Gold / Diamond Pickaxe |
| `\d+` | qualquer coisa contendo um dígito | itens com números no nome |
| `Enchanted Book` | frase exata aparecendo em qualquer lugar | qualquer livro encantado |
| `Silk Touch` *(escopo Tooltip)* | tooltip contém "Silk Touch" | livros encantados / equipamento com Silk Touch |
| `Level \d+` *(escopo Tooltip)* | tooltip tem "Level" seguido de um número | itens com níveis, livros de XP |

### Referência Rápida de Sintaxe

- `.` — qualquer caractere único
- `^` — início do texto testado
- `$` — fim do texto testado
- `*` — zero ou mais do item anterior
- `+` — um ou mais
- `?` — zero ou um (também marca um grupo como não-capturante quando usado como `(?:...)`)
- `\d` — dígito, `\w` — caractere de palavra, `\s` — espaço em branco
- `[abc]` — qualquer um de a, b, c
- `[^abc]` — qualquer coisa **exceto** a, b ou c
- `a|b` — a ou b
- `(?i)` — flag de modo insensível a maiúsculas (coloque no início do padrão)
- Escape caracteres especiais com `\`: `\.`, `\(`, `\[`, `\\`

### Aprendendo e Testando Regex

Ferramentas para montar e testar padrões antes de colá-los no filtro:

- **[regex101.com](https://regex101.com/)** — testador de regex ao vivo com painel de explicação. Defina o flavor como **Java 8** na barra lateral para corresponder ao que este filtro usa.
- **[regexr.com](https://regexr.com/)** — outro testador ao vivo, bom para iniciantes. Usa flavor JavaScript, mas a maioria dos padrões básicos se comporta igual.
- **[Documentação do Pattern do Oracle Java](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/regex/Pattern.html)** — a referência autoritativa para a sintaxe exata de regex que este filtro usa (Java 21).
- **[regex-cheatsheet do Rex Egg](https://www.rexegg.com/regex-quickstart.html)** — colinha imprimível de padrões comuns.

## Avisos sobre Regex

- **Custo** — todo recurso que o canal tenta mover passa pela regex. Num Emissor com lote grande e muitos itens correspondentes, são muitas avaliações de regex a cada tique. Mantenha os padrões simples e ancorados quando puder (`^`, `$`, sem `.*` ganancioso onde não for preciso).
- **Só nome de exibição** — alguns itens são traduzidos de forma diferente dependendo do idioma. Uma regex afinada para inglês pode não corresponder ao mesmo item num cliente em outro idioma.
- **Escape caracteres especiais** — se você quiser corresponder a um `.`, `(` ou `[` literal, escape-o com `\`.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:name_filter" />
