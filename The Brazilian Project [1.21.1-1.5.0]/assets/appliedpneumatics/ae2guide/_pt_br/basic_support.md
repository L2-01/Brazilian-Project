---
navigation:
  parent: index.md
  title: Suporte Básico
  icon: ae2:guide
  position: 10
---

# Suporte Básico

O AE agora pode armazenar ar.  
Os Ônibus de Importação, Ônibus de Exportação e Ônibus de Armazenamento reconhecem recipientes de ar, e a interface pode interagir com tanques de ar.  
Além disso, foram adicionados o **P2P de Ar** e o **P2P de Temperatura**.

<Row>
    <ItemImage id="ae2:import_bus" scale="4" />
    <ItemImage id="ae2:export_bus" scale="4" />
    <ItemImage id="ae2:storage_bus" scale="4" />
    <ItemImage id="air_p2p_tunel" scale="4" />
    <ItemImage id="heat_p2p_tunel" scale="4" />
</Row>

Detalhes:
- <ItemLink id="ae2:export_bus" />: Insere ar no recipiente de ar vinculado. Limita a pressão automaticamente, sem fazer o alvo explodir.
- <ItemLink id="ae2:import_bus" />: Extrai ar do recipiente de ar vinculado. Pode reduzir até 0 bar, mas não substitui uma bomba de vácuo.
- <ItemLink id="ae2:storage_bus" />: Permite que a Rede ME reconheça o recipiente de ar vinculado. Recipientes com pressão negativa são reconhecidos como 0 mL.
- <ItemLink id="appliedpneumatics:air_p2p_tunel" />: Recebe o ar de entrada e o distribui para as saídas.
- <ItemLink id="appliedpneumatics:heat_p2p_tunel" />: Recebe o calor de entrada e o distribui para as saídas.
