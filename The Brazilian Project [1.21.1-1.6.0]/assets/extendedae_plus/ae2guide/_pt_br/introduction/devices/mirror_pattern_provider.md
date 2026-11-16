---
navigation:
  parent: introduction/index.md
  title: Provedor de Padrões Espelhado
  position: 4
  icon: extendedae_plus:mirror_pattern_provider
categories:
  - extendedae_plus devices
item_ids:
  - extendedae_plus:mirror_pattern_provider
---

# Provedor de Padrões Espelhado

<BlockImage id="extendedae_plus:mirror_pattern_provider" scale="5" />

O **Provedor de Padrões Espelhado** é um provedor de padrões somente-leitura que segue outro provedor de padrões como mestre. Ele espelha os padrões e as configurações do mestre, permitindo expor o mesmo conjunto de padrões em locais adicionais sem copiar nem manter inventários de padrões duplicados.

## Mecanismo de Operação

- **Seguimento do mestre:** Após a vinculação, o espelho sincroniza automaticamente os padrões do provedor de padrões mestre selecionado.
- **Configurações espelhadas:** Prioridade, nome personalizado, configurações do provedor e direção de empurrão de blocos são copiadas do mestre quando suportado.
- **Sem UI própria:** O espelho não oferece inventário de padrões independente nos terminais. Clicar com o botão direito sem item mostra o mestre vinculado atual.
- **Comportamento somente-leitura:** Chaves-inglesa e cartões de memória não podem modificar o espelho diretamente. Configure o provedor mestre.
- **Mestres suportados:** Provedores de padrões de bloco e partes de provedor de padrões podem ser mestres. Um espelho não pode ser mestre de outro espelho.

## Método de Vinculação

Use o **Vinculador de Padrão Espelhado** <ItemImage id="extendedae_plus:mirror_pattern_binding_tool" scale="1" /> para vincular espelhos a um provedor de padrões mestre:

- **Shift + Botão direito** num provedor de padrões mestre para selecioná-lo.
- **Botão direito** num espelho desvinculado para vinculá-lo ao mestre selecionado.
- **Botão direito** num espelho vinculado para desvinculá-lo.
- Após mudar o vinculador para o modo de vinculação por alcance, **Shift + Botão direito** em dois pontos para selecionar um intervalo e vincular todos os espelhos dentro daquela caixa ao mestre selecionado.
- **Shift + Botão direito no ar** com o vinculador para limpar o mestre registrado e a seleção de alcance.

## Dicas de Uso

- Edite padrões e configurações no **provedor mestre**; os espelhos seguirão automaticamente.
- Mantenha o chunk do mestre carregado. Se o mestre ficar indisponível, o espelho continuará tentando e retomará a sincronização quando o mestre puder ser resolvido novamente.
- Se o mestre for removido estando carregado, o espelho limpa sua vinculação e os padrões espelhados.
- Quebrar um espelho não duplica os itens de padrão espelhados.

## Receitas de Fabricação

### Provedor de Padrões Espelhado
<Recipe id="extendedae_plus:mirror_pattern_provider" />

### Vinculador de Padrão Espelhado
<Recipe id="extendedae_plus:mirror_pattern_binding_tool" />
