---
item_ids: [logisticsnetworks:wrench]
navigation:
  title: Chave-Inglesa
  icon: logisticsnetworks:wrench
  position: 2
---

# Chave-Inglesa

A Chave-Inglesa é a ferramenta que você usa para tudo relacionado a nós — abrir suas configurações, removê-los, copiar configurações entre nós e colocar muitos nós de uma vez.

Ela tem três modos, e cada modo faz algo diferente. Alterne entre eles com **Shift + Roda do Mouse** segurando a chave. O modo atual aparece na sobreposição do HUD no topo da tela.

## Modos de Relance

- [Chave](wrench-mode.md) — o padrão. Abrir a configuração de um nó, remover nós e (com o AE2 instalado) alternar a conexão com o AE2.
- [Copiar / Colar](copy-paste.md) — clonar a configuração inteira de um nó — canais, filtros, melhorias, rótulo — para outro nó. Suporta colagem em massa para todo nó conectado do mesmo tipo de bloco.
- [Posicionamento em Massa](mass-placement.md) — selecione muitos blocos de uma vez, depois coloque nós configurados em todos eles com um clique.

## Referência Rápida

| Modo | Botão direito | Shift + Botão direito | Ctrl + Botão direito |
|------|-------------|---------------------|--------------------|
| Chave | Abrir configuração do nó | Remover nó (ou alternar conexão AE2) | — |
| Copiar / Colar | Copiar nó → área de transferência (ou abrir o Editor da Área de Transferência no ar) | Colar área de transferência → nó | Colar em todo nó conectado do mesmo tipo de bloco |
| Posicionamento em Massa | Alternar bloco na seleção (ou abrir o Menu de Posicionamento no ar) | Igual ao botão direito | Selecionar por preenchimento em varredura blocos conectados do mesmo tipo |

## Usando Rótulos com a Chave

Rótulos combinam muito bem com a chave. Quando você cola uma configuração num nó, o rótulo da origem também é copiado — então o nó colado entra imediatamente naquele grupo de rótulo e fica sincronizado com todos os outros nós que compartilham o rótulo.

Fluxo típico:

1. Configure um nó com a configuração que você quer.
2. Dê-lhe um rótulo (veja [Cabeçalho → Definir Rótulo](../nodes/header.md)).
3. Copie sua configuração para a área de transferência da chave.
4. Cole (ou posicione em massa) em todos os outros nós que devem compartilhar esta configuração.

Agora todo nó carrega o mesmo rótulo. Edições futuras em qualquer um deles se propagam para o grupo inteiro automaticamente. Você não precisa copiar-colar de novo ao ajustar.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:wrench" />
