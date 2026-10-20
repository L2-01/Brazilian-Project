---
navigation:
  title: Modo Chave
  parent: wrench/index.md
  position: 1
---

# Modo Chave

O modo padrão. Se você acabou de criar uma chave e pegá-la, ela já está neste modo. Use-a para abrir as configurações de nó, remover ou colocar nós e vincular uma rede do AE2 ou do Refined Storage.

## Abrir a Configuração do Nó

Use a **Interação Secundária (padrão: Botão Direito)** num nó colocado com a chave no Modo Chave. A tela de configuração do nó abre e você pode editar todos os 9 canais, filtros, melhorias, rótulos e assim por diante.

Use **Tecla Modificadora 1 + Interação Secundária** num bloco compatível sem nó para colocar um. A chave primeiro consome um Nó de Logística do seu inventário, depois verifica a rede de armazenamento vinculada e por fim solicita autocriação quando um modelo está disponível.

## Remover um Nó

Use **Tecla Modificadora 1 (padrão: Shift) + Interação Secundária** num nó com a chave. O nó é removido e cai de volta como item de Nó de Logística. Quaisquer filtros e melhorias instalados no nó também caem na posição do nó, então nada se perde.

Esta é a forma limpa de recolher um nó. Quebrar o bloco em que o nó está preso também remove o nó, mas a Tecla Modificadora 1 + Interação Secundária é preferível — você mantém o controle de qual lado do bloco o nó estava, e não precisa quebrar e recolocar o bloco.

## Vinculação de Armazenamento

Com o Applied Energistics 2 ou o Refined Storage instalado, use **Tecla Modificadora 1 + Interação Secundária** num bloco ativo daquela rede para alternar o vínculo da chave.

- Uma chave guarda exatamente um vínculo de armazenamento: AE2 ou Refined Storage.
- Use o mesmo ponto vinculado de novo para desvinculá-lo.
- Tentar outro ponto com um vínculo existente deixa o vínculo original intacto e avisa para desvincular primeiro.
- A interface e a dica mostram qual backend está vinculado.
- O armazenamento vinculado abastece a colocação de nós, a colocação em massa, a sincronização da área de transferência e de melhorias de rótulo e o seletor de melhorias. Itens faltantes podem ser autocriados quando o backend permite.

As ações do Refined Storage respeitam suas permissões de segurança de extração, inserção e autocriação.

## Bom Saber

- A cópia e a seleção de área ficam nos outros modos da chave.
- Mude para outro modo a qualquer momento com **Tecla Modificadora 1 + Roda do Mouse**; a sobreposição da interface atualiza para mostrar o novo modo.
