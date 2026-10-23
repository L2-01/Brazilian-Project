---
item_ids: [logisticsnetworks:wrench]
navigation:
  title: Chave-Inglesa
  icon: logisticsnetworks:wrench
  position: 2
---

# Chave-Inglesa

A Chave-Inglesa é a ferramenta que você usa para tudo relacionado a nós — abrir sua configuração, removê-los, copiar setups entre nós e posicionar muitos nós de uma vez.

Ela tem três modos. Segure **R** com a chave na mão para abrir a roda de modos, aponte para um modo e solte para selecioná-lo. Solte no centro ou pressione Escape para cancelar. Remapeie a tecla da roda no menu Controles do Minecraft.

Você também pode percorrer os modos com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. O HUD ao lado da hotbar mostra o modo ativo: azul para Chave, verde para Copiar / Colar e dourado para Posicionamento em Massa.

## Modos num relance

- [Chave](wrench-mode.md) — o padrão. Abrir ou remover nós, posicionar nós e vincular uma rede de AE2 ou Refined Storage.
- [Copiar / Colar](copy-paste.md) — clonar o setup inteiro de um nó — canais, filtros, melhorias, rótulo — para outro nó. Suporta colagem em massa para todos os nós conectados do mesmo tipo de bloco.
- [Posicionamento em Massa](mass-placement.md) — selecionar uma área de dois cantos, escolher um tipo de bloco alvo e posicionar nós configurados nos blocos correspondentes com **Interação Primária (padrão: Clique Esquerdo)**.

## Configurações da Chave

Pressione **G** segurando a chave para abrir suas configurações. Cada chave guarda suas próprias configurações, então uma chave pode mostrar a base inteira enquanto outra foca numa única rede.

**Cores** recolore a caixa e a tela da chave.

**Linhas de Fluxo** controla as linhas desenhadas entre emissores e receptores enquanto você segura a chave.

- *Simples*:
  - ligar ou desligar as linhas
  - mostrar só alguns tipos de recurso (Itens, Fluidos, Energia)
  - mostrar só alguns canais (1–9)
  - limitar as linhas a uma rede próxima
  - escolher se nós fora da tela, ou longe demais para renderizar, ainda ganham linhas. Isso alcança todo nó que seu jogo está rastreando, cerca de 64 blocos.
- *Avançado*:
  - escolher o estilo de linha: **Roteado** (caminhos em ângulo reto agrupados) ou **Direto** (uma linha reta de cada emissor a cada receptor)
  - definir espessura, velocidade, opacidade e os pulsos
  - escolher se as linhas aparecem através de blocos
  - definir a cor de cada tipo de recurso

Pressione **Aplicar** para salvar. **Redefinir** restaura os padrões da aba em que você está.

## Referência rápida

| Modo | Interação Secundária (padrão: Clique Direito) | Tecla Modificadora 1 + Interação Secundária | Tecla Modificadora 2 (padrão: Ctrl) + Interação Secundária |
|------|-------------|---------------------|--------------------|
| Chave | Abrir config do nó | Remover um nó, posicionar um nó ou alternar um vínculo de armazenamento | — |
| Copiar / Colar | Copiar nó → área de transferência (ou abrir o Editor da Área de Transferência no ar) | Colar área de transferência → nó | Colar em todos os nós conectados do mesmo tipo de bloco |
| Posicionamento em Massa | Definir cantos da área (ou abrir o Menu de Posicionamento no ar) | Abrir Menu de Posicionamento | — |

## Usando rótulos com a Chave

Os rótulos combinam muito bem com a chave. Quando você cola um setup num nó, o rótulo da origem é copiado junto — então o nó colado entra imediatamente naquele grupo de rótulo e fica em sincronia com todos os outros nós que compartilham o rótulo.

Fluxo de trabalho típico:

1. Configure um nó com o setup que você quer.
2. Dê um rótulo a ele (veja [Cabeçalho → Definir Rótulo](../nodes/header.md)).
3. Copie sua config para a área de transferência da chave.
4. Cole (ou posicione em massa) em todos os outros nós que devem compartilhar este setup.

Todos os nós agora carregam o mesmo rótulo. Edições posteriores em qualquer um propagam para o grupo inteiro automaticamente. Você não precisa recopiar e colar ao ajustar.

## Receita de fabricação

<RecipeFor id="logisticsnetworks:wrench" />
