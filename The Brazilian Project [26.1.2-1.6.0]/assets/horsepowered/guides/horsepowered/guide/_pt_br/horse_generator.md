---
navigation:
  title: Gerador a Cavalo
  position: 6
item_ids:
  - horsepowered:generator
---

# Gerador a Cavalo

O Gerador a Cavalo converte o trabalho de cavalos diretamente em Forge Energy (FE). Um trabalhador caminhando gira o gerador, carregando um buffer interno que empurra energia automaticamente para máquinas, cabos e armazenamento de energia adjacentes.

<Row>
<ItemImage id="horsepowered:generator" scale="4" />
</Row>

## Preparo

1. Coloque o Gerador numa área com pelo menos 7x7 de espaço livre ao redor.
2. Conduza um cavalo (ou outra criatura válida) com um laço.
3. Clique com o botão direito no gerador segurando o laço para prender a criatura.
4. Aplique um sinal de redstone (por exemplo, uma alavanca em cima) para ativar a geração.
5. A tocha de redstone no topo acende em vermelho enquanto o gerador está produzindo energia.

## Verificando a Área de Trabalho

**Shift + clique direito** no gerador com a mão vazia para visualizar a área de trabalho exigida. Verde = livre, Vermelho = obstruído. Alavancas colocadas dentro do anel não o invalidam, então o gerador pode ser ligado e desligado com uma alavanca num bloco de piso próximo.

## Receita

<RecipeFor id="horsepowered:generator" />

## Observações

- Conecte qualquer lado, topo ou base a um cabo ou máquina compatível com FE para extrair energia.
- O gerador só funciona enquanto tem energia de redstone e seu buffer está abaixo da capacidade.
- O piso sob o trajeto escala a velocidade de geração. Veja [Caminho e Velocidade](horse_path.md).
- Minerar o gerador preserva sua carga armazenada, então você pode movê-lo sem perder energia.
- Clique com o botão direito com a mão vazia, sem shift, para soltar o trabalhador preso.
