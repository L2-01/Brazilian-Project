---
navigation:
  parent: index.md
  title: Suporte Básico
  icon: ae2:guide
  position: 10
---

# Suporte Básico

O AE agora pode armazenar ar.
Pontos de Importação, Pontos de Exportação e Barramentos de Armazenamento podem todos reconhecer recipientes de ar, e a UI consegue interagir com tanques de ar.
Além disso, foram adicionados o **P2P de Ar** e o **P2P de Calor**.

<Row>
    <ItemImage id="ae2:import_bus" scale="4" />
    <ItemImage id="ae2:export_bus" scale="4" />
    <ItemImage id="ae2:storage_bus" scale="4" />
    <ItemImage id="air_p2p_tunel" scale="4" />
    <ItemImage id="heat_p2p_tunel" scale="4" />
</Row>

Detalhes:
- <ItemLink id="ae2:export_bus" />: Fornece ar para o recipiente de ar vinculado. Limitado automaticamente pela pressão; não fará o alvo explodir.
- <ItemLink id="ae2:import_bus" />: Extrai ar do recipiente de ar vinculado. Pode reduzir até 0 bar, mas não substitui uma bomba de vácuo.
- <ItemLink id="ae2:storage_bus" />: Permite que a rede ME reconheça o recipiente de ar vinculado. Recipientes de pressão negativa são reconhecidos como 0 mL.
- <ItemLink id="appliedpneumatics:air_p2p_tunel" />: Recebe o ar de entrada e o distribui para as saídas.
- <ItemLink id="appliedpneumatics:heat_p2p_tunel" />: Recebe o calor de entrada e o distribui para as saídas.
