---
navigation:
  parent: ufo_intro/qmf.md
  title: Estrutura e Auto-construção
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura e Auto-construção do QMF

O Fabricador de Matéria Quântica ocupa um volume fixo de **15×7×7**. A cena é
gerada do mesmo esquema usado pelo escaneamento, pelo JEI e pela auto-construção. Arraste para girar.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_matter_fabricator.snbt" />
  <DiamondAnnotation pos="7.5 1.5 1.5" color="#80c6ff">QMF Controller</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais

| Componente | Quantidade | Regra |
|---|---:|---|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 245 | Qualquer carcaça pode virar o Buffer ou Proxy de Padrões |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 26 | Casco de observação fixo |
| <ItemLink id="ae2:quartz_block" /> | 10 | Fixed |
| <ItemLink id="ae2:fluix_block" /> | 3 | Fixed |
| <ItemLink id="ufo:stellar_field_generator_t1" /> or better | 52 | Todos os geradores devem usar um único tier |
| <ItemLink id="ufo:quantum_pattern_hatch" /> | 1 | Substitui exatamente uma carcaça |
| <ItemLink id="ufo:quantum_matter_fabricator_controller" /> | 1 | Coloque primeiro; não é consumido pela auto-construção |

Os canais de ar são intencionais. Bloco de Quartzo, Bloco de Fluix e Vidro Vibrante são
posições estritas; apenas a Carcaça Hiper Mecânica Quântica pode ser substituída pelo
Buffer de Padrões, Proxy de Padrões ou Escotilha de Fluido Massiva ME.

## Usando a Auto-construção

1. Coloque o Controlador virado para fora do volume reservado à máquina.
2. Coloque todos os blocos posicionáveis exigidos no inventário do jogador.
3. Abra o controlador e pressione **Auto-construir**.
4. Aguarde enquanto o servidor coloca um bloco por tick e depois execute o **Escanear**.

A auto-construção preserva todo bloco já válido. Ela nunca substitui um bloco errado
ocupado. Se a verificação inicial reportar uma posição bloqueada, limpe aquela coordenada
e recomece. Ela lê apenas o inventário do jogador, não o armazenamento ME nem contêineres.

## Variantes de Tier

Toda posição `F` aceita Geradores de Campo Estelar MK1, MK2 ou MK3. Use as
**Alternativas** do JEI para pré-visualizar substituições válidas. Misturar tiers não cria uma
média: a estrutura exige um tier de campo coerente.
