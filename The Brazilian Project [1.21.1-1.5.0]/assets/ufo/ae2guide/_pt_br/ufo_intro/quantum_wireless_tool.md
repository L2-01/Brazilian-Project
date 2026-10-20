---
navigation:
  parent: ufo_intro/tools.md
  title: Ferramenta Sem Fio Quântica
  position: 10
item_ids:
  - ufo:quantum_wireless_tool
---

# Ferramenta Sem Fio Quântica

<ItemImage id="ufo:quantum_wireless_tool" scale="4" />

Ative primeiro o modo sem fio na origem, usando o botão da UI ou agachando +
clique direito com a ferramenta. Selecionar um Buffer de Padrões ativa sua rota
de proxy automaticamente.

1. Clique com o botão direito em um Buffer de Padrões Quântico, uma Escotilha de Padrões Quântica legada ou uma [Interface Quântica](quantum_interface.md) para selecionar a origem.
2. Um Buffer só se vincula a Proxies de Padrões; uma Escotilha legada só se vincula a DMAs. Clique na mesma face de destino novamente para removê-la.
3. Agache + clique direito na origem para alternar entre modo com fio/sem fio, ou use o botão da tela.

Enquanto segura a ferramenta, linhas azuis conectam a origem selecionada às faces de destino azuis. Um cubo amarelo identifica a origem selecionada, e uma prévia amarela indica uma nova face sob a mira. Os vínculos são atualizados automaticamente enquanto a origem estiver carregada. O HUD também identifica a origem, as coordenadas e a dimensão. O Fornecedor de Padrões Quântico de barramento de cabo atualmente não funciona como origem sem fio.

Para padrões de processamento, vincule a face de entrada de itens/fluidos da máquina. As saídas de fabricação ainda precisam de um caminho de retorno para o armazenamento ME, como a Importação automática em uma Interface Quântica vinculada a uma face de saída. O sem fio não carrega chunks nem faz ponte entre dimensões/redes. Substituir um destino invalida seu vínculo antigo.

A textura original 16×16 da ferramenta pertence ao design visual do UFO; ela não reutiliza a textura da ferramenta Lightning do AE2. Os créditos do widget da barra lateral permanecem com o AE2 Lightning Tech.

<RecipeFor id="ufo:quantum_wireless_tool" />

O alcance padrão é de 32 blocos por origem, ajustável na UI do buffer/escotilha/interface. Veja [Rede Sem Fio e Bônus](quantum_wireless_buffs.md).
