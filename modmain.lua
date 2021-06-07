-- Common Dependencies.
local require = GLOBAL.require
local TECH = GLOBAL.TECH
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local AllRecipes = GLOBAL.AllRecipes
local Recipe = GLOBAL.Recipe
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mod Dependencies.
modimport("scripts/kyno_foodstrings")
modimport("scripts/kyno_foodpostinits")
modimport("scripts/kyno_meatrackfix")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fix For Inventory Icons.
local atlas = (src and src.components.inventoryitem and src.components.inventoryitem.atlasname and resolvefilepath(src.components.inventoryitem.atlasname) ) or "images/inventoryimages.xml"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Assets.
Assets =
{	
	Asset("ANIM", "anim/kyno_humanmeat.zip"),
	Asset("ANIM", "anim/kyno_mushroomstump.zip"),
	Asset("ANIM", "anim/kyno_spotbush.zip"),
	Asset("ANIM", "anim/kyno_wheat.zip"),
	Asset("ANIM", "anim/kyno_aloe.zip"),
	Asset("ANIM", "anim/kyno_radish.zip"),
	Asset("ANIM", "anim/kyno_fennel.zip"),
	Asset("ANIM", "anim/kyno_sweetpotato.zip"),
	Asset("ANIM", "anim/kyno_seaweeds.zip"),
	Asset("ANIM", "anim/kyno_cucumber.zip"),
	Asset("ANIM", "anim/kyno_waterycress.zip"),

	Asset("IMAGE", "images/minimapimages/kyno_foodminimap.tex"),
	Asset("ATLAS", "images/minimapimages/kyno_foodminimap.xml"),
	
	Asset("IMAGE", "images/tabimages/kyno_mealingtab.tex"),
	Asset("ATLAS", "images/tabimages/kyno_mealingtab.xml"),
	
	Asset("IMAGE", "images/inventoryimages/kyno_mushroomstump.tex"),
	Asset("ATLAS", "images/inventoryimages/kyno_mushroomstump.xml"),
	
	Asset("IMAGE", "images/inventoryimages/kyno_mealgrinder.tex"),
	Asset("ATLAS", "images/inventoryimages/kyno_mealgrinder.xml"),
	
	Asset("IMAGE", "images/inventoryimages/kyno_spotbush.tex"),
	Asset("ATLAS", "images/inventoryimages/kyno_spotbush.xml"),
	
	Asset("IMAGE", "images/cookbookimages/kyno_cookbook.tex"),
	Asset("ATLAS", "images/cookbookimages/kyno_cookbook.xml"),
	Asset("ATLAS_BUILD", "images/cookbookimages/kyno_cookbook.xml", 256),
	
	Asset("IMAGE", "images/inventoryimages/kyno_foodimages.tex"),
	Asset("ATLAS", "images/inventoryimages/kyno_foodimages.xml"),
	Asset("ATLAS_BUILD", "images/inventoryimages/kyno_foodimages.xml", 256),
}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Prefabs.
PrefabFiles =
{	
	"k_newfoods",
	"k_coffeebeans",
	"k_coffeebuff",
	"k_realcoffeebush",
	"k_realdugcoffeebush",
	"k_sharkfin",
	"k_roe",
	"k_mussel",
	"k_bugs",
	"k_hungerregenbuff",
	"k_sanityregenbuff",
	"k_superregenbuff",
	"k_humanmeat",
	"k_gourmetingredients",
	"k_mushstump",
	"k_spotbush",
	"k_dugspotbush",
	"k_wildwheat",
	"k_dugwildwheat",
	"k_mealgrinder",
	"k_crop_aloe",
	"k_crop_radish",
	"k_crop_fennel",
	"k_crop_sweetpotato",
	"k_lotus",
	"k_weedsea",
	"k_limpetrock",
	"k_tarosea",
	"k_cucumber",
	"k_waterycress",
	
	"ash",
	"evergreens",
	"trident",
}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- New Crock Pot Ingredients.
AddIngredientValues({"trunk_summer"}, {meat=1}, {trunk=1}, true)
AddIngredientValues({"trunk_winter"}, {meat=1}, {trunk=1}, true)
AddIngredientValues({"trunk_cooked"}, {meat=1}, {trunk=1}, true)
AddIngredientValues({"slurtle_shellpieces"}, {inedible=1}, {shell=1}, true)
AddIngredientValues({"rabbit"}, {rabbit=1}, true)
AddIngredientValues({"firenettles"}, {veggie=0.5}, true)
AddIngredientValues({"foliage"}, {veggie=0.5}, true)
AddIngredientValues({"succulent_picked"}, {veggie=0.5}, true)
AddIngredientValues({"robin_winter"}, {robin_winter=1}, true)
AddIngredientValues({"petals"}, {veggie=0.5}, true)
AddIngredientValues({"gears"}, {gears=1}, true)
AddIngredientValues({"rocks"}, {rocks=1}, {elemental=1}, {inedible=1}, true)
AddIngredientValues({"poop"}, {poop=1}, {glermz=1}, true)
AddIngredientValues({"guano"}, {poop=1}, {glermz=1}, true)
AddIngredientValues({"glommerfuel"}, {poop=1}, {glermz=1}, true)
AddIngredientValues({"kyno_coffeebeans_cooked"}, {seeds=1}, {fruit=0.5}, true)
AddIngredientValues({"kyno_coffeebeans"}, {seeds=1}, {fruit=0.5}, true)
AddIngredientValues({"kyno_shark_fin"}, {fish=1}, true)
AddIngredientValues({"kyno_roe_cooked"}, {meat=0.5}, {roe=1}, true)
AddIngredientValues({"kyno_roe"}, {meat=0.5}, {roe=1}, true)
AddIngredientValues({"kyno_mussel_cooked"}, {fish=0.5}, {mussel=1}, true)
AddIngredientValues({"kyno_mussel"}, {fish=0.5}, {mussel=1}, true)
AddIngredientValues({"kyno_beanbugs"}, {bug=1}, {veggie=0.5}, true)
AddIngredientValues({"kyno_beanbugs_cooked"}, {bug=1}, {veggie=0.5}, true)
AddIngredientValues({"kyno_gummybug"}, {bug=1}, {veggie=0.5}, true)
AddIngredientValues({"kyno_gummybug_cooked"}, {bug=1}, {veggie=0.5}, true)
AddIngredientValues({"kyno_humanmeat_cooked"}, {meat=1}, {monster=1}, true, true)
AddIngredientValues({"kyno_humanmeat"}, {meat=1}, {monster=1}, true, true)
AddIngredientValues({"kyno_humanmeat_dried"}, {meat=1}, {monster=1}, true, true)
AddIngredientValues({"kyno_syrup"}, {sweetener=1}, {syrup=1}, true)
AddIngredientValues({"kyno_flour"}, {inedible=1}, {flour=1}, true)
AddIngredientValues({"kyno_spotspice"}, {spotspice=1}, true)
AddIngredientValues({"kyno_bacon"}, {meat=0.5}, {bacon=1}, true)
AddIngredientValues({"kyno_bacon_cooked"}, {meat=0.5}, {bacon=1}, true)
AddIngredientValues({"gorge_bread"}, {bread=1}, true)
AddIngredientValues({"kyno_white_cap"}, {veggie=0.5}, {mushroom=1}, true)
AddIngredientValues({"kyno_white_cap_cooked"}, {veggie=0.5}, {mushroom=1}, true)
AddIngredientValues({"kyno_foliage"}, {veggie=0.5}, true) -- This is a false Foliage. We just need it because Cooked Foliage icon doesn't display without it.
AddIngredientValues({"kyno_foliage_cooked"}, {veggie=0.5}, true)
AddIngredientValues({"kyno_sap"}, {inedible=1}, {sap=1}, true)
AddIngredientValues({"kyno_aloe"}, {veggie=1}, true)
AddIngredientValues({"kyno_aloe_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_radish"}, {veggie=1}, true)
AddIngredientValues({"kyno_radish_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_fennel"}, {veggie=1}, true)
AddIngredientValues({"kyno_fennel_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_sweetpotato"}, {veggie=1}, true)
AddIngredientValues({"kyno_sweetpotato_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_lotus_flower"}, {veggie=1}, true)
AddIngredientValues({"kyno_lotus_flower_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_seaweeds"}, {veggie=1}, true)
AddIngredientValues({"kyno_seaweeds_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_seaweeds_dried"}, {veggie=1}, true)
AddIngredientValues({"kyno_limpets"}, {fish=0.5}, true)
AddIngredientValues({"kyno_limpets_cooked"}, {fish=0.5}, true)
AddIngredientValues({"kyno_taroroot"}, {veggie=1}, true)
AddIngredientValues({"kyno_taroroot_cooked"}, {veggie=1}, true)
AddIngredientValues({"kyno_cucumber"}, {veggie=1}, true)
AddIngredientValues({"kyno_waterycress"}, {veggie=1}, true)
AddIngredientValues({"kyno_salt"}, {inedible=1}, true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Minimap Icons.
AddMinimapAtlas("images/minimapimages/kyno_foodminimap.xml")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Icons For Cookbook.
RegisterInventoryItemAtlas("images/inventoryimages2.xml", "slurtle_shellpieces.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "rabbit.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "rabbit_winter.tex")
RegisterInventoryItemAtlas("images/inventoryimages1.xml", "firenettles.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "foliage.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "succulent_picked.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "robin_winter.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "petals.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "gears.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "rocks.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "poop.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "guano.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "glommerfuel.tex")

RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_coffeebeans_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_coffeebeans.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_shark_fin.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "ecp_shark_fin.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_roe_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_roe.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_mussel_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_mussel.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_beanbugs_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_beanbugs.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_gummybug_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_gummybug.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_humanmeat_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_humanmeat.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_humanmeat_dried.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_syrup.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_flour.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_spotspice.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_bacon.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_bacon_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "gorge_bread.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_white_cap.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_white_cap_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_foliage.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_foliage_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_sap.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_aloe.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_aloe_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_radish.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_radish_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_fennel.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_fennel_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_sweetpotato.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_sweetpotato_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_lotus_flower.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_lotus_flower_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_seaweeds.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_seaweeds_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_seaweeds_dried.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_limpets.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_limpets_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_taroroot.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_taroroot_cooked.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_cucumber.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_waterycress.tex")
RegisterInventoryItemAtlas("images/inventoryimages/kyno_foodimages.xml", "kyno_salt.tex")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Custom TechTree for Mealing Stone.
local TechTree = require("techtree")
table.insert(TechTree.AVAILABLE_TECH, "MEALING")

TechTree.Create = function(t)
	t = t or {}
	for i, v in ipairs(TechTree.AVAILABLE_TECH) do
	    t[v] = t[v] or 0
	end
	return t
end

GLOBAL.TECH.NONE.MEALING = 0
GLOBAL.TECH.MEALING_ONE = { MEALING = 1 }
GLOBAL.TECH.MEALING_TWO = { MEALING = 2 }

for k,v in pairs(TUNING.PROTOTYPER_TREES) do
    v.MEALING = 0
end

TUNING.PROTOTYPER_TREES.MEALING_ONE = TechTree.Create({
    MEALING = 1,
})
TUNING.PROTOTYPER_TREES.MEALING_TWO = TechTree.Create({
	MEALING = 2,
})

for i, v in pairs(GLOBAL.AllRecipes) do
	if v.level.MEALING == nil then
		v.level.MEALING = 0
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Custom Recipe Tab for the new ingredients.
local MEALINGTAB = AddRecipeTab("Grinding", 998, "images/tabimages/kyno_mealingtab.xml", "kyno_mealingtab.tex", nil, true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ingredient and Structures Recipes.
local KynFlour = AddRecipe("kyno_flour", {Ingredient("kyno_wheat", 2, "images/inventoryimages/kyno_foodimages.xml")},
MEALINGTAB, TECH.MEALING_ONE, nil, nil, true, 3, nil, "images/inventoryimages.xml", "quagmire_flour.tex")

local KynSpice = AddRecipe("kyno_spotspice", {Ingredient("kyno_spotspice_leaf", 2, "images/inventoryimages/kyno_foodimages.xml")},
MEALINGTAB, TECH.MEALING_ONE, nil, nil, true, 3, nil, "images/inventoryimages.xml", "quagmire_spotspice_ground.tex")

local butter = AddRecipe(
	"butter",
	{
		Ingredient("butterflywings", 12),
	},
	MEALINGTAB,
	TECH.MEALING_ONE, nil, nil, true, GetModConfigData("butleramount"), nil)

local KynSalt = AddRecipe("kyno_salt", {Ingredient("saltrock", 2)},
MEALINGTAB, TECH.MEALING_ONE, nil, nil, true, 3, nil, "images/inventoryimages.xml", "quagmire_salt.tex")

local KynBacon = AddRecipe("kyno_bacon", {Ingredient("smallmeat", 1)},
MEALINGTAB, TECH.MEALING_ONE, nil, nil, true, 1, nil, "images/inventoryimages.xml", "quagmire_smallmeat.tex")

local KynMusher = AddRecipe("kyno_mushstump", {Ingredient("spoiled_food", 4), Ingredient("poop", 3), Ingredient("livinglog", 2)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, "kyno_mushstump_placer", 0, nil, nil, nil, "images/inventoryimages/kyno_mushroomstump.xml", "kyno_mushroomstump.tex")
local musher_sortkey = AllRecipes["mushroom_farm"]["sortkey"]
KynMusher.sortkey = musher_sortkey + 0.1

local KynMealing = AddRecipe("kyno_mealgrinder", {Ingredient("cutstone", 2), Ingredient("flint", 2)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, "kyno_mealgrinder_placer", 0, nil, nil, nil, "images/inventoryimages/kyno_mealgrinder.xml", "kyno_mealgrinder.tex")
local mealing_sortkey = AllRecipes["kyno_mushstump"]["sortkey"]
KynMealing.sortkey = mealing_sortkey + 0.1

local OldFarm1 = AddRecipe("slow_farmplot", {Ingredient("cutgrass", 8), Ingredient("poop", 4), Ingredient("log", 4)},
RECIPETABS.FARM, TECH.SCIENCE_ONE, "slow_farmplot_placer", 0, nil, nil, nil, "images/inventoryimages.xml", "slow_farmplot.tex")
local plot_sortkey = AllRecipes["saltbox"]["sortkey"]
OldFarm1.sortkey = plot_sortkey + 0.1

local OldFarm2 = AddRecipe("fast_farmplot", {Ingredient("cutgrass", 10), Ingredient("poop", 6), Ingredient("rocks", 4)},
RECIPETABS.FARM, TECH.SCIENCE_ONE, "fast_farmplot_placer", 0, nil, nil, nil, "images/inventoryimages.xml", "fast_farmplot.tex")
local plot2_sortkey = AllRecipes["slow_farmplot"]["sortkey"]
OldFarm2.sortkey = plot2_sortkey + 0.1
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Import The Foods.
for k, v in pairs(require("kyno_foodrecipes")) do
	if not v.tags then
		AddCookerRecipe("cookpot", v)
		AddCookerRecipe("archive_cookpot", v)
	end
	AddCookerRecipe("portablecookpot", v)
end

for k, v in pairs(require("kyno_foodspicer")) do
	AddCookerRecipe("portablespicer", v)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fix For Spiced Foods and Potlevel.
local spices = { "chili", "garlic", "sugar", "salt" }
local cookers = { "cookpot", "portablecookpot", "portablespicer", "archive_cookpot", "kyno_archive_cookpot" }

for i, cooker in ipairs(cookers) do 
	if not cookerrecipes[cooker] then
		cookerrecipes[cooker] = {}
	end
end

local kynofoods =
{
	-- Shipwrecked.
	coffee = require("kyno_foodrecipes").coffee,
	bisque = require("kyno_foodrecipes").bisque,
	jellyopop = require("kyno_foodrecipes").jellyopop,
	musselbouillabaise = require("kyno_foodrecipes").musselbouillabaise,
	sharkfinsoup = require("kyno_foodrecipes").sharkfinsoup,
	sweetpotatosouffle = require("kyno_foodrecipes").sweetpotatosouffle,
	caviar = require("kyno_foodrecipes").caviar,
	tropicalbouillabaisse = require("kyno_foodrecipes").tropicalbouillabaisse,
	
	-- Hamlet.
	feijoada = require("kyno_foodrecipes").feijoada,
	gummy_cake = require("kyno_foodrecipes").gummy_cake,
	hardshell_tacos = require("kyno_foodrecipes").hardshell_tacos,
	icedtea = require("kyno_foodrecipes").icedtea,
	tea = require("kyno_foodrecipes").tea,
	nettlelosange = require("kyno_foodrecipes").nettlelosange,
	snakebonesoup = require("kyno_foodrecipes").snakebonesoup,
	steamedhamsandwich = require("kyno_foodrecipes").steamedhamsandwich,
	
	-- Unimplemented.
	bubbletea = require("kyno_foodrecipes").bubbletea,
	frenchonionsoup = require("kyno_foodrecipes").frenchonionsoup,
	slaw = require("kyno_foodrecipes").slaw,
	lotusbowl = require("kyno_foodrecipes").lotusbowl,
	poi = require("kyno_foodrecipes").poi,
	jellybean_sanity = require("kyno_foodrecipes").jellybean_sanity,
	jellybean_hunger = require("kyno_foodrecipes").jellybean_hunger,
	jellybean_super = require("kyno_foodrecipes").jellybean_super,
	cucumbersalad = require("kyno_foodrecipes").cucumbersalad,
	waterycressbowl = require("kyno_foodrecipes").waterycressbowl,
	
	-- Secret Custom.
	bowlofgears = require("kyno_foodrecipes").bowlofgears,
	longpigmeal = require("kyno_foodrecipes").longpigmeal,
	duckyouglermz = require("kyno_foodrecipes").duckyouglermz,
	
	-- The Gorge.
	gorge_bread = require("kyno_foodrecipes").gorge_bread,
	gorge_potato_chips = require("kyno_foodrecipes").gorge_potato_chips,
	gorge_vegetable_soup = require("kyno_foodrecipes").gorge_vegetable_soup,
	gorge_jelly_sandwich = require("kyno_foodrecipes").gorge_jelly_sandwich,
	gorge_fish_stew = require("kyno_foodrecipes").gorge_fish_stew,
	gorge_onion_cake = require("kyno_foodrecipes").gorge_onion_cake,
	gorge_potato_pancakes = require("kyno_foodrecipes").gorge_potato_pancakes,
	gorge_potato_soup = require("kyno_foodrecipes").gorge_potato_soup,
	gorge_fishball_skewers = require("kyno_foodrecipes").gorge_fishball_skewers,
	gorge_meat_skewers = require("kyno_foodrecipes").gorge_meat_skewers,
	gorge_stone_soup = require("kyno_foodrecipes").gorge_stone_soup,
	gorge_croquette = require("kyno_foodrecipes").gorge_croquette,
	gorge_roast_vegetables = require("kyno_foodrecipes").gorge_roast_vegetables,
	gorge_meatloaf = require("kyno_foodrecipes").gorge_meatloaf,
	gorge_carrot_soup = require("kyno_foodrecipes").gorge_carrot_soup,
	gorge_fishpie = require("kyno_foodrecipes").gorge_fishpie,
	gorge_fishchips = require("kyno_foodrecipes").gorge_fishchips,
	gorge_meatpie = require("kyno_foodrecipes").gorge_meatpie,
	gorge_sliders = require("kyno_foodrecipes").gorge_sliders,
	gorge_jelly_roll = require("kyno_foodrecipes").gorge_jelly_roll,
	gorge_carrot_cake = require("kyno_foodrecipes").gorge_carrot_cake,
	gorge_garlicmashed = require("kyno_foodrecipes").gorge_garlicmashed,
	gorge_garlicbread = require("kyno_foodrecipes").gorge_garlicbread,
	gorge_tomato_soup = require("kyno_foodrecipes").gorge_tomato_soup,
	gorge_sausage = require("kyno_foodrecipes").gorge_sausage,
	gorge_candiedfish = require("kyno_foodrecipes").gorge_candiedfish,
	gorge_stuffedmushroom = require("kyno_foodrecipes").gorge_stuffedmushroom,
	gorge_bruschetta = require("kyno_foodrecipes").gorge_bruschetta,
	gorge_hamburger = require("kyno_foodrecipes").gorge_hamburger,
	gorge_fishburger = require("kyno_foodrecipes").gorge_fishburger,
	gorge_mushroomburger = require("kyno_foodrecipes").gorge_mushroomburger,
	gorge_fish_steak = require("kyno_foodrecipes").gorge_fish_steak,
	gorge_curry = require("kyno_foodrecipes").gorge_curry,
	gorge_spaghetti = require("kyno_foodrecipes").gorge_spaghetti,
	gorge_poachedfish = require("kyno_foodrecipes").gorge_poachedfish,
	gorge_shepherd_pie = require("kyno_foodrecipes").gorge_shepherd_pie,
	gorge_candy = require("kyno_foodrecipes").gorge_candy,
	gorge_bread_pudding = require("kyno_foodrecipes").gorge_bread_pudding,
	gorge_berry_tart = require("kyno_foodrecipes").gorge_berry_tart,
	gorge_macaroni = require("kyno_foodrecipes").gorge_macaroni,
	gorge_bagel_and_fish = require("kyno_foodrecipes").gorge_bagel_and_fish,
	gorge_grilled_cheese = require("kyno_foodrecipes").gorge_grilled_cheese,
	gorge_creammushroom = require("kyno_foodrecipes").gorge_creammushroom,
	gorge_manicotti = require("kyno_foodrecipes").gorge_manicotti,
	gorge_cheeseburger = require("kyno_foodrecipes").gorge_cheeseburger,
	gorge_fettuccine = require("kyno_foodrecipes").gorge_fettuccine,
	gorge_onion_soup = require("kyno_foodrecipes").gorge_onion_soup,
	gorge_breaded_cutlet = require("kyno_foodrecipes").gorge_breaded_cutlet,
	gorge_creamy_fish = require("kyno_foodrecipes").gorge_creamy_fish,
	gorge_pizza = require("kyno_foodrecipes").gorge_pizza,
	gorge_pot_roast = require("kyno_foodrecipes").gorge_pot_roast,
	gorge_crab_cake = require("kyno_foodrecipes").gorge_crab_cake,
	gorge_steak_frites = require("kyno_foodrecipes").gorge_steak_frites,
	gorge_shooter_sandwich = require("kyno_foodrecipes").gorge_shooter_sandwich,
	gorge_bacon_wrapped = require("kyno_foodrecipes").gorge_bacon_wrapped,
	gorge_crab_roll = require("kyno_foodrecipes").gorge_crab_roll,
	gorge_meat_wellington = require("kyno_foodrecipes").gorge_meat_wellington,
	gorge_crab_ravioli = require("kyno_foodrecipes").gorge_crab_ravioli,
	gorge_caramel_cube = require("kyno_foodrecipes").gorge_caramel_cube,
	gorge_scone = require("kyno_foodrecipes").gorge_scone,
	gorge_trifle = require("kyno_foodrecipes").gorge_trifle,
	gorge_cheesecake = require("kyno_foodrecipes").gorge_cheesecake,
	kyno_syrup = require("kyno_foodrecipes").kyno_syrup,
}

kynofoods.coffee.potlevel = "med"
kynofoods.bisque.potlevel = "high"
kynofoods.jellyopop.potlevel = "med"
kynofoods.musselbouillabaise.potlevel = "med"
kynofoods.sharkfinsoup.potlevel = "med"
kynofoods.sweetpotatosouffle.potlevel = "med"
kynofoods.caviar.potlevel = "med"
kynofoods.tropicalbouillabaisse.potlevel = "med"
kynofoods.feijoada.potlevel = "med"
kynofoods.gummy_cake.potlevel = "high"
kynofoods.hardshell_tacos.potlevel = "high"
kynofoods.icedtea.potlevel = "med"
kynofoods.tea.potlevel = "med"
kynofoods.nettlelosange.potlevel = "med"
kynofoods.snakebonesoup.potlevel = "med"
kynofoods.steamedhamsandwich.potlevel = "med"
kynofoods.bubbletea.potlevel = "med"
kynofoods.frenchonionsoup.potlevel = "med"
kynofoods.slaw.potlevel = "high"
kynofoods.lotusbowl.potlevel = "med"
kynofoods.poi.potlevel = "med"
kynofoods.jellybean_sanity.potlevel = "med"
kynofoods.jellybean_hunger.potlevel = "med"
kynofoods.jellybean_super.potlevel = "med"
kynofoods.bowlofgears.potlevel = "med"
kynofoods.longpigmeal.potlevel = "med"
kynofoods.gorge_bread.potlevel = "med"
kynofoods.gorge_potato_chips.potlevel = "med"
kynofoods.gorge_vegetable_soup.potlevel = "med"
kynofoods.gorge_jelly_sandwich.potlevel = "med"
kynofoods.gorge_fish_stew.potlevel = "med"
kynofoods.gorge_onion_cake.potlevel = "med"
kynofoods.gorge_potato_pancakes.potlevel = "med"
kynofoods.gorge_potato_soup.potlevel = "med"
kynofoods.gorge_fishball_skewers.potlevel = "med"
kynofoods.gorge_meat_skewers.potlevel = "med"
kynofoods.gorge_stone_soup.potlevel = "med"
kynofoods.gorge_croquette.potlevel = "med"
kynofoods.gorge_roast_vegetables.potlevel = "med"
kynofoods.gorge_meatloaf.potlevel = "low"
kynofoods.gorge_carrot_soup.potlevel = "med"
kynofoods.gorge_fishpie.potlevel = "med"
kynofoods.gorge_fishchips.potlevel = "med"
kynofoods.gorge_meatpie.potlevel = "med"
kynofoods.gorge_sliders.potlevel = "med"
kynofoods.gorge_jelly_roll.potlevel = "med"
kynofoods.gorge_carrot_cake.potlevel = "med"
kynofoods.gorge_garlicmashed.potlevel = "med"
kynofoods.gorge_garlicbread.potlevel = "med"
kynofoods.gorge_tomato_soup.potlevel = "med"
kynofoods.gorge_sausage.potlevel = "med"
kynofoods.gorge_candiedfish.potlevel = "low"
kynofoods.gorge_stuffedmushroom.potlevel = "low"
kynofoods.gorge_bruschetta.potlevel = "med"
kynofoods.gorge_hamburger.potlevel = "med"
kynofoods.gorge_fishburger.potlevel = "med"
kynofoods.gorge_mushroomburger.potlevel = "med"
kynofoods.gorge_fish_steak.potlevel = "med"
kynofoods.gorge_curry.potlevel = "med"
kynofoods.gorge_spaghetti.potlevel = "med"
kynofoods.gorge_poachedfish.potlevel = "med"
kynofoods.gorge_shepherd_pie.potlevel = "med"
kynofoods.gorge_candy.potlevel = "med"
kynofoods.gorge_bread_pudding.potlevel = "med"
kynofoods.gorge_berry_tart.potlevel = "med"
kynofoods.gorge_macaroni.potlevel = "med"
kynofoods.gorge_bagel_and_fish.potlevel = "med"
kynofoods.gorge_grilled_cheese.potlevel = "low"
kynofoods.gorge_creammushroom.potlevel = "med"
kynofoods.gorge_manicotti.potlevel = "med"
kynofoods.gorge_cheeseburger.potlevel = "med"
kynofoods.gorge_fettuccine.potlevel = "med"
kynofoods.gorge_onion_soup.potlevel = "med"
kynofoods.gorge_breaded_cutlet.potlevel = "low"
kynofoods.gorge_creamy_fish.potlevel = "med"
kynofoods.gorge_pizza.potlevel = "med"
kynofoods.gorge_pot_roast.potlevel = "med"
kynofoods.gorge_crab_cake.potlevel = "med"
kynofoods.gorge_steak_frites.potlevel = "med"
kynofoods.gorge_shooter_sandwich.potlevel = "med"
kynofoods.gorge_bacon_wrapped.potlevel = "med"
kynofoods.gorge_crab_roll.potlevel = "med"
kynofoods.gorge_meat_wellington.potlevel = "med"
kynofoods.gorge_crab_ravioli.potlevel = "med"
kynofoods.gorge_caramel_cube.potlevel = "med"
kynofoods.gorge_scone.potlevel = "med"
kynofoods.gorge_trifle.potlevel = "med"
kynofoods.gorge_cheesecake.potlevel = "med"
kynofoods.kyno_syrup.potlevel = "med"
kynofoods.duckyouglermz.potlevel = "med"
kynofoods.cucumbersalad.potlevel = "med"
kynofoods.waterycressbowl.potlevel = "med"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fix For Food On Stations.
for name, recipe in pairs(kynofoods) do
	table.insert(cookerrecipes["cookpot"], name)
	table.insert(cookerrecipes["portablecookpot"], name)
	table.insert(cookerrecipes["archive_cookpot"], name)
	table.insert(cookerrecipes["kyno_archive_cookpot"], name)
	AddPrefabPostInit(name, function(inst)
		inst.AnimState:OverrideSymbol("swap_food", name, name)
	end)
	for _, spicename in ipairs(spices) do
		local spiced_name = name.."_spice_"..spicename
		table.insert(cookerrecipes["portablespicer"], spiced_name)
		AddPrefabPostInit(spiced_name, function(inst)
			inst.AnimState:OverrideSymbol("swap_food", name, name)
		end)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inventory Icons.
if GLOBAL.TheNet:GetIsMasterSimulation() then
    local foods_atlas = MODROOT.."images/inventoryimages/kyno_foodimages.xml"
    for _, foods in pairs({"kyno_coffeebeans_cooked", "kyno_coffeebeans", "dug_kyno_coffeebush", "kyno_shark_fin", "kyno_roe_cooked", "kyno_roe", 
	"kyno_mussel_cooked", "kyno_mussel", "kyno_beanbugs_cooked", "kyno_beanbugs", "kyno_gummybug_cooked", "kyno_gummybug", "kyno_humanmeat_cooked",
	"kyno_humanmeat", "kyno_humanmeat_dried", "coffee", "bisque", "jellyopop", "musselbouillabaise", "sharkfinsoup", "sweetpotatosouffle", "caviar", "tropicalbouillabaisse", 
	"feijoada", "gummy_cake", "hardshell_tacos", "icedtea", "tea", "nettlelosange", "snakebonesoup", "steamedhamsandwich", "bubbletea", "frenchonionsoup", "slaw", 
	"lotusbowl", "poi", "jellybean_sanity", "jellybean_hunger", "jellybean_super", "bowlofgears", "longpigmeal", "kyno_syrup", "kyno_flour", "kyno_spotspice", "kyno_bacon",
	"kyno_bacon_cooked", "gorge_bread", "gorge_potato_chips", "gorge_vegetable_soup", "gorge_jelly_sandwich", "gorge_fish_stew", "gorge_onion_cake",
	"gorge_potato_pancakes", "gorge_potato_soup", "gorge_fishball_skewers", "gorge_meat_skewers", "gorge_stone_soup", "gorge_croquette", "gorge_roast_vegetables",
	"gorge_meatloaf", "gorge_carrot_soup", "gorge_fishpie", "gorge_fishchips", "gorge_meatpie", "gorge_sliders", "gorge_jelly_roll", "gorge_carrot_cake", "gorge_garlicmashed",
	"gorge_garlicbread", "gorge_tomato_soup", "gorge_sausage", "gorge_candiedfish", "gorge_stuffedmushroom", "gorge_bruschetta", "gorge_hamburger", "gorge_fishburger",
	"gorge_mushroomburger", "kyno_white_cap", "kyno_white_cap_cooked", "gorge_fish_steak", "gorge_curry", "gorge_spaghetti", "gorge_poachedfish", "gorge_shepherd_pie",
	"gorge_candy", "gorge_bread_pudding", "gorge_berry_tart", "gorge_macaroni", "gorge_bagel_and_fish", "gorge_grilled_cheese", "gorge_creammushroom", "gorge_manicotti",
	"gorge_cheeseburger", "gorge_fettuccine", "gorge_onion_soup", "gorge_breaded_cutlet", "gorge_creamy_fish", "gorge_pizza", "gorge_pot_roast", "gorge_crab_cake",
	"gorge_steak_frites", "gorge_shooter_sandwich", "gorge_bacon_wrapped", "gorge_crab_roll", "gorge_meat_wellington", "gorge_crab_ravioli", "gorge_caramel_cube",
	"gorge_scone", "gorge_trifle", "gorge_cheesecake", "robin_winter", "gears", "rocks", "petals", "foliage", "rabbit", "rabbit_winter", "succulent_picked", "dug_kyno_spotbush", "kyno_spotspice_leaf",
	"kyno_wheat", "kyno_wheat_cooked", "kyno_sap", "kyno_sap_spoiled", "kyno_foliage", "kyno_foliage_cooked", "dug_kyno_wildwheat", "kyno_aloe", "kyno_aloe_cooked", "kyno_aloe_seeds",
	"kyno_radish", "kyno_radish_cooked", "kyno_radish_seeds", "duckyouglermz", "poop", "guano", "glommerfuel", "saltrock", "kyno_fennel", "kyno_fennel_cooked", "kyno_fennel_seeds",
	"kyno_sweetpotato", "kyno_sweetpotato_cooked", "kyno_sweetpotato_seeds", "kyno_lotus_flower", "kyno_lotus_flower_cooked", "kyno_seaweeds", "kyno_seaweeds_cooked",
	"kyno_seaweeds_dried", "kyno_seaweeds_root", "kyno_limpets", "kyno_limpets_cooked", "kyno_taroroot", "kyno_taroroot_cooked", "kyno_cucumber", "kyno_cucumber_cooked",
	"kyno_cucumber_seeds", "cucumbersalad", "kyno_waterycress", "waterycressbowl", "kyno_salt"}) do
        local foods_name = foods
        AddPrefabPostInit(foods_name, function(inst)
            inst.components.inventoryitem.imagename = foods_name
            inst.components.inventoryitem.atlasname = foods_atlas
        end)
    end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
