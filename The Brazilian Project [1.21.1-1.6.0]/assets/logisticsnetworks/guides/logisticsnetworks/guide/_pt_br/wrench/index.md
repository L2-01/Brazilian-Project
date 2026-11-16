---
item_ids: [logisticsnetworks:wrench]
navigation:
  title: Chave-Inglesa
  icon: logisticsnetworks:wrench
  position: 2
---

# Chave-Inglesa

A Chave-Inglesa é a ferramenta que você usa para tudo relacionado a nós — abrir suas configurações, removê-los, copiar configurações entre nós e colocar muitos nós de uma vez.

Ela tem três modos. Segure **R** segurando a chave para abrir o seletor de modos, aponte para um modo e solte para selecioná-lo. Solte no centro ou pressione Escape para cancelar. Remapeie a tecla do seletor no menu Controles do Minecraft.

Você também pode alternar modos com **Tecla Modificadora 1 (padrão: Shift) + Roda do Mouse**. O HUD ao lado da hotbar mostra o modo ativo: azul para Chave, verde para Copiar/Colar e dourado para Colocação em Massa.

## Modos de Relance

- [Chave](wrench-mode.md) — o padrão. Abrir ou remover nós, colocar nós e vincular uma rede do AE2 ou do Refined Storage.
- [Copiar / Colar](copy-paste.md) — clona a configuração inteira de um nó — canais, filtros, melhorias, rótulo — em outro nó. Suporta colagem em massa em todo nó conectado do mesmo tipo de bloco.
- [Colocação em Massa](mass-placement.md) — selecione uma área de dois cantos, escolha um tipo de bloco alvo e coloque nós configurados nos blocos correspondentes com a **Interação Primária (padrão: Botão Esquerdo)**.

## Configurações da Chave

Pressione **G** segurando a chave para abrir suas configurações. Cada chave mantém as próprias configurações, então uma chave pode mostrar a base inteira enquanto outra foca em uma única rede.

**Cores** recolore o corpo e a tela da chave.

**Linhas de Fluxo** controla as linhas desenhadas entre emissores e receptores enquanto você segura a chave.

- *Simples*:
  - liga ou desliga as linhas
  - mostra só alguns tipos de recurso (Itens, Fluidos, Energia, Químicos, Fonte)
  - mostra só alguns canais (1–9)
  - limita as linhas a uma rede próxima
  - escolhe se nós fora da tela, ou distantes demais para renderizar, ainda recebem linhas. Isso alcança todo nó que seu jogo está rastreando, cerca de 64 blocos.
- *Avançado*:
  - escolhe o estilo das linhas: **Roteado** (caminhos em ângulo reto agrupados) ou **Direto** (uma linha reta de cada emissor para cada receptor)
  - define espessura, velocidade, opacidade e os pulsos
  - escolhe se as linhas aparecem através de blocos
  - define a cor de cada tipo de recurso

Pressione **Aplicar** para salvar. **Redefinir** restaura os padrões da aba em que você está.

## Referência Rápida

| Modo | Interação Secundária (padrão: Botão Direito) | Tecla Modificadora 1 + Interação Secundária | Tecla Modificadora 2 (padrão: Ctrl) + Interação Secundária |
|------|-------------|---------------------|--------------------|
| Chave | Abrir configuração do nó | Remover um nó, colocar um nó ou alternar um vínculo de armazenamento | — |
| Copiar / Colar | Copiar nó → área de transferência (ou abrir o Editor da Área de Transferência no ar) | Colar área de transferência → nó | Colar em todo nó conectado do mesmo tipo de bloco |
| Colocação em Massa | Definir os cantos da área (ou abrir o Menu de Colocação no ar) | Abrir Menu de Colocação | — |

## Usando Rótulos com a Chave

Rótulos combinam muito bem com a chave. Quando você cola uma configuração em um nó, o rótulo da origem também é copiado — então o nó colado entra imediatamente naquele grupo de rótulo e fica sincronizado com todos os outros nós que compartilham o rótulo.

Fluxo de trabalho típico:

1. Configure um nó com a configuração que você quer.
2. Dê um rótulo a ele (veja [Cabeçalho → Definir Rótulo](../nodes/header.md)).
3. Copie sua configuração para a área de transferência da chave.
4. Cole (ou coloque em massa) em todos os outros nós que devem compartilhar esta configuração.

Agora todo nó carrega o mesmo rótulo. Edições posteriores em qualquer um deles se propagam para o grupo inteiro automaticamente. Você não precisa copiar e colar de novo ao ajustar.

## Receita de Fabricação

<RecipeFor id="logisticsnetworks:wrench" />
