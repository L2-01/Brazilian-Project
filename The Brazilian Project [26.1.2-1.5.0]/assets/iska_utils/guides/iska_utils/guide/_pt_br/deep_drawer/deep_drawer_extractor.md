---
navigation:
  parent: deep_drawer/deep_drawer-index.md
  title: Extrator de Gaveta Profunda
  icon: deep_drawer_extractor
  position: 20
categories:
- storage
item_ids:
- iska_utils:deep_drawer_extractor
---

# Extrator de Gaveta Profunda

<BlockImage id="deep_drawer_extractor" scale="8" />

O Extrator de Gaveta Profunda é um módulo especializado projetado para extrair itens de uma Gaveta Profunda. Ele usa extração passiva: os itens são movidos para seu buffer interno, e você precisa conectar canos de itens ou funis para extrair os itens do próprio Extrator.

## Recursos Principais

- **Extração Passiva**: Move automaticamente itens da Gaveta Profunda conectada para seu buffer interno com base nos seus filtros. Você precisa conectar canos de itens ou funis ao Extrator para retirar os itens do buffer
- **Sistema de Filtros Avançado**: Suporta vários tipos de filtro, incluindo IDs de itens, tags, IDs de mods, dados NBT e macros predefinidas. A lista completa de chaves de filtro válidas está disponível na GUI pelo botão "Teclas Válidas"
- **Sistema de Filtro Duplo**:
  - **Lista de Permitidos**: Extrai apenas itens que correspondam aos filtros (modo lista branca). Quando esta lista está ativa, o botão mostra "Lista de Bloqueio" para alternar ao filtro de bloqueio
  - **Lista de Bloqueio**: Extrai todos os itens exceto os que correspondam aos filtros (modo lista negra). Quando esta lista está ativa, o botão mostra "Lista de Permitidos" para voltar ao filtro de permissão
  - **Prioridade dos Filtros**: Quando as duas listas têm entradas (casos híbridos), a Lista de Bloqueio é aplicada primeiro, depois a Lista de Permitidos. Isso significa que itens correspondentes à Lista de Bloqueio são bloqueados antes de verificar a Lista de Permitidos
  - Alterne entre as duas listas de filtro pelo botão "Lista de Permitidos" / "Lista de Bloqueio" na GUI
- **Concatenação de Filtros**: Cada linha de filtro tem um botão de concatenação (`-`, `A`–`Z`). Linhas com a mesma letra precisam todas corresponder (E); letras diferentes ou linhas soltas combinam com OU
- **Controle por Redstone**: Controle a extração com sinais de redstone
- **Desempenho Otimizado**: Projetado especificamente para extração, minimizando o impacto no desempenho
- **Descoberta em Rede**: Encontra a gaveta automaticamente através de módulos conectados a até 16 blocos de distância

## Casos de Uso

- **Extração Seletiva de Itens**: Extraia automaticamente itens específicos como equipamento encantado, ferramentas ou itens de mods específicos da gaveta para o buffer do Extrator
- **Linhas de Produção**: Extraia itens específicos necessários para sistemas automatizados de fabricação ou processamento

Lembre-se: o Extrator move itens da gaveta para seu buffer interno, mas você precisa conectar canos de itens ou funis ao próprio Extrator para realmente retirar os itens do buffer e roteá-los ao destino.
