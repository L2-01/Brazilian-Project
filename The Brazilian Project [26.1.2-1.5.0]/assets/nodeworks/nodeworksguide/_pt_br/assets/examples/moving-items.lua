local input = network:get("input")
local output = network:get("output")

local allItems = input:find("*") -- pega todos os itens deste contêiner
if allItems then -- se achamos algum item
	output:insert(allItems)
end
