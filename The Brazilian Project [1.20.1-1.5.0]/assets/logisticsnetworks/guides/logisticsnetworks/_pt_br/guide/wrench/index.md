---
item_ids: [logisticsnetworks:wrench]
navigation:
  title: Chave-Inglesa
  icon: logisticsnetworks:wrench
  position: 2
---

# Chave-Inglesa

A Chave-Inglesa é a ferramenta que você usa para tudo relacionado a nós — abrir sua configuração, removê-los, copiar configurações entre nós e colocar muitos nós de uma vez.

Ela tem três modos, e cada modo faz algo diferente. Alterne entre eles com **Shift + Roda do Mouse** enquanto segura a chave-inglesa. O modo atual é mostrado na sobreposição do HUD no topo da tela.

## Modos de Relance

- [Chave-Inglesa](wrench-mode.md) — o padrão. Abrir a configuração de um nó, remover nós e (com AE2 instalado) alternar o vínculo do AE2.
- [Copiar / Colar](copy-paste.md) — clonar toda a configuração de um nó — canais, filtros, melhorias, rótulo — para outro nó. Suporta colagem em massa para todo nó conectado do mesmo tipo de bloco.
- [Colocação em Massa](mass-placement.md) — selecionar muitos blocos de uma vez, depois colocar nós configurados em todos eles com um clique.

## Referência Rápida

| Modo | Clique direito | Shift + Clique direito | Ctrl + Clique direito |
|------|-------------|---------------------|--------------------|
| Chave-Inglesa | Abrir config do nó | Remover nó (ou alternar vínculo AE2) | — |
| Copiar / Colar | Copiar nó → área de transferência (ou abrir Editor da Área de Transferência no ar) | Colar área de transferência → nó | Colar em todo nó conectado do mesmo tipo de bloco |
| Colocação em Massa | Alternar bloco na seleção (ou abrir Menu de Colocação no ar) | Igual ao clique direito | Selecionar por preenchimento blocos conectados do mesmo tipo |

## Usando Rótulos com a Chave-Inglesa

Rótulos combinam muito bem com a chave-inglesa. Quando você cola uma configuração num nó, o rótulo da origem também é copiado — então o nó colado imediatamente entra naquele grupo de rótulo e permanece sincronizado com todos os outros nós que compartilham o rótulo.

Fluxo de trabalho típico:

1. Configure um nó com a configuração desejada.
2. Dê um rótulo a ele (veja [Cabeçalho → Definir Rótulo](../nodes/header.md)).
3. Copie sua config para a área de transferência da chave-inglesa.
4. Cole (ou coloque em massa) em todos os outros nós que devem compartilhar essa configuração.

Todo nó agora carrega o mesmo rótulo. Edições posteriores em qualquer um deles se propagam para o grupo inteiro automaticamente. Você não precisa recopiar-colar ao ajustar.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:wrench" />
