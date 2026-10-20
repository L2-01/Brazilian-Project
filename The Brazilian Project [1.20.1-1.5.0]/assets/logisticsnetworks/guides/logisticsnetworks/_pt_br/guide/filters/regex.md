---
item_ids: [logisticsnetworks:name_filter]
navigation:
  title: Filtro Regex
  parent: filters/index.md
  icon: logisticsnetworks:name_filter
  position: 5
---

# Filtro Regex

Corresponde itens pelo seu **nome de exibição** ou **texto da tooltip**, usando uma expressão regular (regex). Poderoso, mas fácil de usar errado — leia os avisos no fim antes de colocar um num canal de alto tráfego.

## O Que Ele Corresponde

Qualquer item cujo texto escolhido (nome, tooltip ou ambos) corresponda ao padrão regex que você definiu. A correspondência é verificada contra o texto que o item mostraria no jogo, não contra seu id de registro.

## Configuração

Clique com o botão direito no filtro na mão para abrir o menu. Você verá:

- **Padrão regex** — a expressão regular a testar contra o texto do item. Sintaxe padrão de regex do Java.
- **Escopo** — contra qual texto corresponder:
  - **Nome** (padrão) — apenas o nome de exibição do item.
  - **Dica de Ferramenta** — apenas as linhas da tooltip (lore, dicas de NBT, etc.), não o nome.
  - **Ambos** — nome e todas as linhas da tooltip.
- Alternância **Lista-branca / Lista-negra**.

A tooltip do próprio item mostra o escopo atual, o padrão e o modo de relance.

## Lista-branca vs Lista-negra

- **Lista-branca** — apenas itens cujo texto corresponde à regex podem passar.
- **Lista-negra** — itens cujo texto corresponde são bloqueados; todo o resto passa.

## Casos de Uso

- Corresponder todo livro encantado que menciona "Toque Suave" na tooltip → escopo Dica de Ferramenta, padrão `Silk Touch` (ou `Toque Suave` em cliente PT-BR).
- Corresponder qualquer item cujo nome começa com "Iron" → escopo Nome, padrão `^Iron`.
- Bloquear qualquer coisa com "Damaged" na tooltip de ser importada para o seu armazenamento → escopo Dica de Ferramenta, padrão `Damaged`, modo Lista-negra.

## Exemplos de Regex

Uma colinha rápida de padrões comuns. Assuma escopo **Nome** a menos que indicado. Os nomes de itens dos exemplos estão em inglês porque a regex corresponde ao nome de exibição — em cliente PT-BR os nomes mudam (veja os avisos abaixo).

| Padrão | Corresponde | Itens de exemplo |
|---------|---------|---------------|
| `Iron` | qualquer coisa contendo "Iron" | Iron Ingot, Iron Pickaxe, Iron Door |
| `^Iron` | nomes **começando** com "Iron" | Iron Ingot, Iron Pickaxe |
| `Ingot$` | nomes **terminando** com "Ingot" | Iron Ingot, Gold Ingot, Copper Ingot |
| `^Iron Ingot$` | exatamente "Iron Ingot" — nada de Iron Block, nada de Iron Pickaxe | só Iron Ingot |
| `(?i)iron` | correspondência insensível a maiúsculas para "iron" | Iron Ingot, iron ingot, IRON INGOT |
| `Iron\|Gold` | nomes contendo "Iron" **ou** "Gold" | Iron Ingot, Gold Nugget, Gold Block |
| `.*Axe$` | qualquer coisa terminando em "Axe" | Iron Axe, Diamond Axe, Netherite Axe |
| `^(?!.*Netherite).*Pickaxe$` | qualquer Pickaxe que **não** seja Netherite | Iron / Gold / Diamond Pickaxe |
| `\d+` | qualquer coisa contendo um dígito | itens com números no nome |
| `Enchanted Book` | frase exata aparece em qualquer lugar | qualquer enchanted book |
| `Silk Touch` *(escopo Dica de Ferramenta)* | tooltip contém "Silk Touch" | enchanted books / equipamentos com Silk Touch |
| `Level \d+` *(escopo Dica de Ferramenta)* | tooltip tem "Level" seguido de um número | itens com nível, livros de XP |

### Referência Rápida de Sintaxe

- `.` — qualquer caractere único
- `^` — início do texto sendo testado
- `$` — fim do texto sendo testado
- `*` — zero ou mais do item anterior
- `+` — um ou mais
- `?` — zero ou um (também marca um grupo como não-capturante quando usado como `(?:...)`)
- `\d` — dígito, `\w` — caractere de palavra, `\s` — espaço em branco
- `[abc]` — qualquer um de a, b, c
- `[^abc]` — qualquer coisa **exceto** a, b ou c
- `a|b` — a ou b
- `(?i)` — flag de modo insensível a maiúsculas (coloque no início do padrão)
- Escape de caracteres especiais com `\`: `\.`, `\(`, `\[`, `\\`

### Aprendendo e Testando Regex

Ferramentas para montar e testar padrões antes de colá-los no filtro:

- **[regex101.com](https://regex101.com/)** — testador de regex ao vivo com painel de explicação. Defina o flavor como **Java 8** na barra lateral para corresponder ao que este filtro usa.
- **[regexr.com](https://regexr.com/)** — outro testador ao vivo, bom para iniciantes. Usa flavor JavaScript, mas a maioria dos padrões básicos se comporta igual.
- **[Documentação Oracle Java Pattern](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/regex/Pattern.html)** — a referência autoritativa para a sintaxe exata de regex que este filtro usa (Java 21).
- **[regex-cheatsheet por Rex Egg](https://www.rexegg.com/regex-quickstart.html)** — colinha imprimível de padrões comuns.

## Avisos sobre Regex

- **Custo** — todo recurso que o canal tenta mover passa pela regex. Em um Emissor com lote grande e muitos itens correspondentes, isso é muita avaliação de regex por tique. Mantenha os padrões simples e ancorados quando puder (`^`, `$`, sem `.*` guloso onde não for necessário).
- **Apenas nome de exibição** — alguns itens são traduzidos diferente dependendo do idioma. Uma regex ajustada para inglês pode não corresponder ao mesmo item num cliente não-inglês.
- **Escape de caracteres especiais** — se você quer corresponder um `.`, `(` ou `[` literal, escape-o com `\`.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:name_filter" />
