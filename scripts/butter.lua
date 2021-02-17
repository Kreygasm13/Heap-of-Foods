local butter =

{
    butter =
	{
	test = function(cooker, names, tags) return names.butterflywings and ( names.butterflywings == 4 ) end,
	priority = 1,
	foodtype = FOODTYPE.GOODIES,
	perishtime = TUNING.PERISH_SUPERSLOW,
	health = 40,
	hunger = 25,
	sanity = 0,
	cooktime = 1,
	floater = {"med", nil, 0.65},
	}
}

for k, recipe in pairs(butter) do
	recipe.name = k
	recipe.weight = 1
	recipe.cookbook_atlas = "images/butter.xml"
	recipe.cookbook_tex = "images/butter.tex"
end

return butter