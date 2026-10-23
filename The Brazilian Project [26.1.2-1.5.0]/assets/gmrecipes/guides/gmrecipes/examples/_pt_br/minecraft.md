---
navigation:
  title: Minecraft
  icon: minecraft:crafting_table
  parent: index.md
---
# Minecraft

Fabricação, fundição, alto-forno e ferraria são renderizados pelo próprio GuideME. Defumação, cozinha de fogueira
e corte de pedra não têm handler no GuideME, então só renderizam quando a opção do cliente
*Generic fallback for unknown types* está ativada. Um erro de handler nesses três com a opção desligada é
o resultado esperado, e eles renderizarem com ela ligada é o teste de fumaça do renderizador genérico.

<gmrecipes:RecipeExamples mod="minecraft" />
