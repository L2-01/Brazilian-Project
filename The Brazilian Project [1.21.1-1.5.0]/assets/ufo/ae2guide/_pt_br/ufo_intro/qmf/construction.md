---
navigation:
  parent: ufo_intro/qmf.md
  title: Estrutura e Construção Automática
  icon: ufo:quantum_hyper_mechanical_casing
  position: 10
---

# Estrutura e Construção Automática do QMF

O Fabricador de Matéria Quântica ocupa um volume fixo de **15×7×7**. A cena é
gerada a partir do mesmo esquema usado pela varredura, pelo JEI e pela construção automática. Arraste para girar.

<GameScene zoom="4" background="transparent" interactive={true}>
  <ImportStructure src="../../assets/assemblies/quantum_matter_fabricator.snbt" />
  <DiamondAnnotation pos="7.5 1.5 1.5" color="#80c6ff">Controlador do QMF</DiamondAnnotation>
  <IsometricCamera yaw="215" pitch="25" />
</GameScene>

## Lista de Materiais

| Componente | Quantidade | Regra |
|---|---:|---|
| <ItemLink id="ufo:quantum_hyper_mechanical_casing" /> | 245 | Qualquer carcaça pode virar o Buffer ou Proxy de Padrões |
| <ItemLink id="ae2:quartz_vibrant_glass" /> | 26 | Carcaça de observação fixa |
| <ItemLink id="ae2:quartz_block" /> | 10 | Fixo |
| <ItemLink id="ae2:fluix_block" /> | 3 | Fixo |
| <ItemLink id="ufo:stellar_field_generator_t1" /> ou melhor | 52 | Todos os geradores devem usar um só tier |
| <ItemLink id="ufo:quantum_pattern_hatch" /> | 1 | Substitui exatamente uma carcaça |
| <ItemLink id="ufo:quantum_matter_fabricator_controller" /> | 1 | Coloque primeiro; não é consumido pela construção automática |

Os canais de ar são intencionais. Bloco de Quartzo, Bloco de Fluix e Vidro Vibrante são
posições estritas; só a Carcaça Hiper Mecânica Quântica pode ser substituída pelo
Buffer de Padrões, Proxy de Padrões ou Escotilha de Fluido Massiva ME.

## Usando a Construção Automática

1. Coloque o Controlador virado para fora do volume reservado à máquina.
2. Ponha todos os blocos posicionáveis exigidos no inventário do jogador.
3. Abra o controlador e pressione **Construir estrutura automaticamente**.
4. Espere enquanto o servidor coloca um bloco por tique, depois rode **Escanear estrutura do multibloco**.

A construção automática preserva todo bloco já válido. Ela nunca substitui um bloco
ocupado errado. Se a pré-verificação reportar uma posição bloqueada, limpe aquela
coordenada e recomece. Ela lê apenas o inventário do jogador, não o armazenamento ME nem recipientes.

## Variantes de Tier

Toda posição `F` aceita Geradores de Campo Estelar MK1, MK2 ou MK3. Use as
**Alternativas** do JEI para prever substituições válidas. Misturar tiers não cria uma
média: a estrutura exige um tier de campo coerente.
