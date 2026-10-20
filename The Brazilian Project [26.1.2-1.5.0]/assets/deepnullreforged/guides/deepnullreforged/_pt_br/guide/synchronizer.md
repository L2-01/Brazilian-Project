---
navigation:
  title: Sincronizador
  icon: deepnullreforged:synchronizer
  parent: items.md
  position: 32
item_ids:
  - deepnullreforged:synchronizer
---

# Sincronizador

<Column alignItems="center" fullWidth={true}>
  <ItemImage id="deepnullreforged:synchronizer" />
</Column>

O Sincronizador armazena uma captura de configuração de um Null para que ela possa ser restaurada em outro Null compatível pela Bancada Null.

## O Que Ele Armazena

- Configurações de filtro
- Configurações de melhorias
- Chaves de transferência e comportamento
- Outros dados de configuração do Null

Ele **não** copia itens, fluidos, produtos químicos ou energia armazenados.

## Uso

- Insira um Null no espaço de entrada da esquerda e um Sincronizador no segundo espaço da esquerda na aba Sincronizar da Bancada Null
- Pressione **Backup** para armazenar a configuração do Null no Sincronizador
- Insira um Null compatível novo mais o Sincronizador carregado e pressione **Restaurar** para aplicar as configurações salvas
- Ambas as ações levam 3 segundos e devolvem o Null mais o Sincronizador nos dois espaços grandes de saída à direita

## Limpeza

- Shift+clique direito no ar com um Sincronizador configurado para limpá-lo
- Coloque um Sincronizador configurado sozinho em qualquer grade de fabricação para limpá-lo

## Fabricação

<RecipeFor id="deepnullreforged:synchronizer" fallbackText="Veja o JEI para a receita atual." />
