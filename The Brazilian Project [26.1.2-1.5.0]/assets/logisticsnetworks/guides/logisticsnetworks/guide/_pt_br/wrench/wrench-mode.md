---
navigation:
  title: Modo Chave
  parent: wrench/index.md
  position: 1
---

# Modo Chave

O modo padrão. Se você acabou de fabricar uma Chave-Inglesa e a pegou, ela já está neste modo. Use-o para abrir configurações de nó, remover ou colocar nós e vincular uma rede do AE2 ou do Refined Storage.

## Abrir Configuração do Nó

Use a **Interação Secundária (padrão: Botão Direito)** em um nó colocado com a chave no modo Chave. A tela de configuração do nó abre e você pode editar todos os 9 canais, filtros, melhorias, rótulos e assim por diante.

Use a **Tecla Modificadora 1 + Interação Secundária** em um bloco compatível sem nó para colocar um. A chave primeiro consome um Nó Logístico do seu inventário, depois verifica a rede de armazenamento vinculada e por fim solicita autofabricação quando um padrão está disponível.

## Remover um Nó

Use a **Tecla Modificadora 1 (padrão: Shift) + Interação Secundária** em um nó com a chave. O nó é removido e cai de volta como um item de Nó Logístico. Quaisquer filtros e melhorias instalados no nó também caem na posição do nó, então nada se perde.

Esta é a forma limpa de recolher um nó. Quebrar o bloco ao qual o nó está anexo também remove o nó, mas a Tecla Modificadora 1 + Interação Secundária é preferível — você mantém o controle de em qual lado do bloco o nó estava e não precisa quebrar e recolocar o bloco em si.

## Vínculo de Armazenamento

Com o Applied Energistics 2 ou o Refined Storage instalado, use a **Tecla Modificadora 1 + Interação Secundária** em um bloco ativo daquela rede para alternar o vínculo da chave.

- Uma chave guarda exatamente um vínculo de armazenamento: ou AE2 ou Refined Storage.
- Use o mesmo ponto vinculado de novo para desvinculá-lo.
- Tentar outro ponto enquanto existe um vínculo deixa o vínculo original inalterado e avisa para desvincular primeiro.
- O HUD e o tooltip mostram qual backend está vinculado.
- O armazenamento vinculado abastece a colocação de nós, a colocação em massa, a sincronização de melhorias da área de transferência e de rótulos, e o seletor de melhorias. Itens faltantes podem ser autofabricados quando o backend suporta.

Ações do Refined Storage respeitam suas permissões de segurança de extração, inserção e autofabricação.

## Bom Saber

- Cópia e seleção de área ficam nos outros modos da chave.
- Troque para outro modo a qualquer momento com a **Tecla Modificadora 1 + Roda do Mouse**; a sobreposição do HUD se atualiza para mostrar o novo modo.
