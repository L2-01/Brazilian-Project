---
navigation:
  title: "Energia Solar"
  icon: "lv_solar_panel"
  parent: extended_industrialization:machines.md
categories:
  - machines
item_ids:
  - extended_industrialization:bronze_solar_boiler
  - extended_industrialization:steel_solar_boiler
  - extended_industrialization:lv_solar_panel
  - extended_industrialization:mv_solar_panel
  - extended_industrialization:hv_solar_panel
  - extended_industrialization:lv_photovoltaic_cell
  - extended_industrialization:mv_photovoltaic_cell
  - extended_industrialization:hv_photovoltaic_cell
---

# Energia Solar

## Caldeiras Solares

As Caldeiras Solares operam de forma semelhante às caldeiras comuns de bronze e aço, porém não consomem combustível. Em troca, elas precisam
ter acesso direto à luz do sol acima delas e produzem metade da energia de uma caldeira padrão do seu tipo. Claro,
elas ainda precisam de água.

Com o tempo, a Caldeira Solar calcifica e perde eficiência até um total de 33% de perda. Usar um machado numa Caldeira
Solar zera sua calcificação. Isso pode ser evitado completamente fornecendo Água Destilada em vez de água comum.

<Row>
	<RecipeFor id="extended_industrialization:bronze_solar_boiler" />
	<RecipeFor id="extended_industrialization:steel_solar_boiler" />
</Row>

## Painéis Solares

Os Painéis Solares produzem energia quando colocados sob luz solar direta e providos de uma célula fotovoltaica do respectivo nível.
Com o tempo, a célula fotovoltaica se desgasta e eventualmente quebra. Isso significa que as células fotovoltaicas devem ser produzidas
passivamente para gerar energia consistentemente durante o dia. A vida útil das células fotovoltaicas pode ser dobrada
fornecendo Água Destilada ao Painel Solar.

<Row>
	<RecipeFor id="extended_industrialization:lv_solar_panel" />
	<RecipeFor id="extended_industrialization:mv_solar_panel" />
	<RecipeFor id="extended_industrialization:hv_solar_panel" />
</Row>

<Row>
	<Recipe id="extended_industrialization:photovoltaic_cell/lv" />
	<Recipe id="extended_industrialization:photovoltaic_cell/mv" />
	<Recipe id="extended_industrialization:photovoltaic_cell/hv" />
</Row>
