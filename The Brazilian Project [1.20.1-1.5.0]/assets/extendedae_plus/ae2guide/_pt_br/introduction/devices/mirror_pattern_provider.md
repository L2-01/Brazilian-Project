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

O **Provedor de Padrões Espelhado** é um provedor de padrões somente leitura que segue outro provedor de padrões como mestre. Ele espelha os padrões e as configurações do mestre, permitindo que o mesmo conjunto de padrões seja exposto em locais adicionais sem copiar manualmente nem manter inventários de padrões duplicados.

## Mecanismo de Funcionamento

- **Seguir o mestre:** Após a vinculação, o espelho sincroniza automaticamente os padrões do provedor de padrões mestre selecionado.
- **Configurações espelhadas:** Prioridade, nome personalizado, configurações do provedor e direção de empurrar blocos são copiados do mestre quando suportados.
- **Sem interface própria:** O espelho não fornece um inventário de padrões independente nos terminais. Clicar com o botão direito sem um item mostra o mestre ao qual está vinculado.
- **Comportamento somente leitura:** Chaves-inglesas e cartões de memória não podem modificar o espelho diretamente. Configure o provedor mestre em vez disso.
- **Mestres suportados:** Provedores de padrões em bloco e partes de provedor de padrões podem ser usados como mestres. Um espelho não pode ser mestre de outro espelho.

## Método de Vinculação

Use o **Vinculador de Padrão Espelhado** <ItemImage id="extendedae_plus:mirror_pattern_binding_tool" scale="1" /> para vincular espelhos a um provedor de padrões mestre:

- **Shift + Botão direito** em um provedor de padrões mestre para selecioná-lo.
- **Botão direito** em um espelho desvinculado para vinculá-lo ao mestre selecionado.
- **Botão direito** em um espelho vinculado para desvinculá-lo.
- Depois de alternar o vinculador para o modo de vinculação por intervalo, **Shift + Botão direito** em dois pontos para selecionar um intervalo e vincular todos os espelhos dentro daquela caixa ao mestre selecionado.
- **Shift + Botão direito no ar** com o vinculador para limpar o mestre e a seleção de intervalo armazenados.

## Dicas de Uso

- Edite padrões e configurações no **provedor mestre**; os espelhos o seguirão automaticamente.
- Mantenha o chunk do mestre carregado. Se o mestre ficar indisponível, o espelho continuará tentando e retomará a sincronização quando o mestre puder ser resolvido novamente.
- Se o mestre for removido enquanto carregado, o espelho limpa sua vinculação e os padrões espelhados.
- Quebrar um espelho não duplica os itens de padrão espelhados.

## Receitas de Fabricação

### Provedor de Padrões Espelhado
<Recipe id="extendedae_plus:mirror_pattern_provider" />

### Vinculador de Padrão Espelhado
<Recipe id="extendedae_plus:mirror_pattern_binding_tool" />
