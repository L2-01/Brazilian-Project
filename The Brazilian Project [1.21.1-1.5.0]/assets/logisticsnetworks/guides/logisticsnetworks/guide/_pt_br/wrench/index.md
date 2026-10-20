---
item_ids: [logisticsnetworks:wrench]
navigation:
  title: Chave-Inglesa
  icon: logisticsnetworks:wrench
  position: 2
---

# Chave-Inglesa

A Chave-Inglesa é a ferramenta que você usa para tudo relacionado a nós — abrir suas configurações, removê-los, copiar ajustes entre nós e colocar muitos nós de uma vez.

Ela tem três modos. Segure **R** com a chave na mão para abrir a roda de modos, aponte para um modo e solte para selecioná-lo. Solte no centro ou pressione Escape para cancelar. Remapeie a tecla da roda no menu de Controles do Minecraft.

Você também pode alternar os modos com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. A interface ao lado da barra de atalhos mostra o modo ativo: azul para Chave, verde para Copiar / Colar e dourado para Colocação em Massa.

## Modos em Resumo

- [Chave](wrench-mode.md) — o padrão. Abra ou remova nós, coloque nós e vincule uma rede do AE2 ou do Refined Storage.
- [Copiar / Colar](copy-paste.md) — clone toda a configuração de um nó — canais, filtros, melhorias, rótulo — para outro nó. Permite colar em massa em todos os nós conectados do mesmo tipo de bloco.
- [Colocação em Massa](mass-placement.md) — selecione uma área de dois cantos, escolha um tipo de bloco-alvo e coloque nós configurados nos blocos correspondentes com **Interação Primária (padrão: Botão Esquerdo)**.

## Configurações da Chave

Pressione **G** com a chave na mão para abrir suas configurações. Cada chave guarda as próprias configurações, então uma chave pode mostrar a base inteira enquanto outra foca numa única rede.

**Cores** muda a cor da carcaça e da tela da chave.

**Linhas de Fluxo** controla as linhas desenhadas entre Emissores e Receptores enquanto você segura a chave.

- *Simples*:
  - liga ou desliga as linhas
  - mostra só alguns tipos de recurso (Itens, Fluidos, Energia, Produtos Químicos, Fonte)
  - mostra só alguns canais (1–9)
  - limita as linhas a uma rede próxima
  - escolhe se nós fora da tela, ou longe demais para renderizar, ainda recebem linhas. Isso alcança todos os nós que seu jogo está rastreando, cerca de 64 blocos.
- *Avançado*:
  - escolha o estilo de linha: **Roteada** (caminhos agrupados em ângulo reto) ou **Direta** (uma linha reta de cada remetente a cada destinatário)
  - ajuste espessura, velocidade, opacidade e os pulsos
  - escolha se as linhas aparecem através de blocos
  - defina a cor de cada tipo de recurso

Pressione **Aplicar** para salvar. **Redefinir** restaura os padrões da aba em que você está.

## Referência Rápida

| Modo | Interação Secundária (padrão: Botão Direito) | Tecla Modificadora 1 + Interação Secundária | Tecla Modificadora 2 (padrão: Ctrl) + Interação Secundária |
|------|-------------|---------------------|--------------------|
| Chave | Abrir config do nó | Remover um nó, colocar um nó ou alternar um vínculo de armazenamento | — |
| Copiar / Colar | Copiar nó → área de transferência (ou abrir o Editor de Área de Transferência no ar) | Colar área de transferência → nó | Colar em todo nó conectado do mesmo tipo de bloco |
| Colocação em Massa | Definir cantos da área (ou abrir o Menu de Colocação no ar) | Abrir Menu de Colocação | — |

## Usando Rótulos com a Chave

Os rótulos combinam muito bem com a chave. Quando você cola uma configuração num nó, o rótulo da origem também é copiado — então o nó colado entra imediatamente naquele grupo de rótulo e fica sincronizado com todos os outros nós que compartilham o rótulo.

Fluxo de trabalho típico:

1. Configure um nó com o ajuste que você quer.
2. Dê um rótulo a ele (veja [Cabeçalho → Definir Rótulo](../nodes/header.md)).
3. Copie sua configuração para a área de transferência da chave.
4. Cole (ou coloque em massa) em todos os outros nós que devem compartilhar este ajuste.

Todo nó agora carrega o mesmo rótulo. Edições futuras em qualquer um deles se propagam ao grupo inteiro automaticamente. Você não precisa recopiar e colar ao ajustar.

## Receita de Criação

<RecipeFor id="logisticsnetworks:wrench" />
