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
-- Fix for Custom Foods on Drying Rack.
modimport("scripts/kyno_meatrackfix")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Fix For Inventory Icons.
local atlas = (src and src.components.inventoryitem and src.components.inventoryitem.atlasname and resolvefilepath(src.components.inventoryitem.atlasname) ) or "images/inventoryimages.xml"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Assets.
Assets =
{	
	Asset("ANIM", "anim/kyno_humanmeat.zip"),

	Asset("IMAGE", "images/minimapimages/kyno_minimap.tex"),
	Asset("ATLAS", "images/minimapimages/kyno_minimap.xml"),
	
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
}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- New Crock Pot Ingredients.
AddIngredientValues({"trunk_summer"}, {meat=2}, {trunk=1}, true)
AddIngredientValues({"trunk_winter"}, {meat=2}, {trunk=1}, true)
AddIngredientValues({"trunk_cooked"}, {meat=2}, {trunk=1}, true)
AddIngredientValues({"slurtle_shellpieces"}, {inedible=1}, {shell=1}, true)
AddIngredientValues({"rabbit"}, {rabbit=1}, true)
AddIngredientValues({"firenettles"}, {veggie=0.5}, true)
AddIngredientValues({"foliage"}, {veggie=0.5}, true)
AddIngredientValues({"robin_winter"}, {robin_winter=1}, true)
AddIngredientValues({"petals"}, {veggie=0.5}, true)
AddIngredientValues({"gears"}, {gears=1}, true)
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
AddIngredientValues({"kyno_syrup"}, {sweetener=0.5}, {syrup=1}, true)
AddIngredientValues({"kyno_flour"}, {inedible=1}, {flour=1}, true)
AddIngredientValues({"kyno_spotspice"}, {inedible=1}, {spotspice=1}, true)
AddIngredientValues({"kyno_bacon"}, {meat=0.5}, {bacon=1}, true)
AddIngredientValues({"kyno_bacon_cooked"}, {meat=0.5}, {bacon=1}, true)
AddIngredientValues({"gorge_bread"}, {bread=1}, true)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Minimap Icons.
AddMinimapAtlas("images/minimapimages/kyno_minimap.xml")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Icons For Cookbook.
RegisterInventoryItemAtlas("images/inventoryimages.xml", "slurtle_shellpieces.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "rabbit.tex")
RegisterInventoryItemAtlas("images/inventoryimages1.xml", "firenettles.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "foliage.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "robin_winter.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "petals.tex")
RegisterInventoryItemAtlas("images/inventoryimages.xml", "gears.tex")

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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ingredient Recipes.
local KynFlour = AddRecipe("kyno_flour", {Ingredient("seeds", 2), Ingredient("cutgrass", 1)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, nil, nil, nil, 2, nil, "images/inventoryimages.xml", "quagmire_flour.tex")

local KynSpice = AddRecipe("kyno_spotspice", {Ingredient("foliage", 1), Ingredient("garlic", 1)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, nil, nil, nil, 2, nil, "images/inventoryimages.xml", "quagmire_spotspice_ground.tex")

local KynSyrup = AddRecipe("kyno_syrup", {Ingredient("honey", 3)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, nil, nil, nil, 2, nil, "images/inventoryimages.xml", "quagmire_syrup.tex")

local KynBacon = AddRecipe("kyno_bacon", {Ingredient("smallmeat", 2)},
RECIPETABS.FARM, TECH.SCIENCE_TWO, nil, nil, nil, 2, nil, "images/inventoryimages.xml", "quagmire_smallmeat.tex")
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
	
	-- Secret / Custom.
	bowlofgears = require("kyno_foodrecipes").bowlofgears,
	longpigmeal = require("kyno_foodrecipes").longpigmeal,
	
	-- The Gorge.
	gorge_bread = require("kyno_foodrecipes").gorge_bread,
	gorge_potato_chips = require("kyno_foodrecipes").gorge_potato_chips,
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
kynofoods.nettlelosange.potlevel = "high"
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
kynofoods.gorge_potato_chips.potlevel = "high"
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
-- Prevent Food From Spoiling In Stations.
local KEEP_FOOD_K = GetModConfigData("keep_food_spoilage_k")
if KEEP_FOOD_K == 1 then
    AddPrefabPostInit("cookpot", function(inst)
        if inst.components.stewer then
            inst.components.stewer.onspoil = function() 
                inst.components.stewer.spoiltime = 1
                inst.components.stewer.targettime = GLOBAL.GetTime()
                inst.components.stewer.product_spoilage = 0
            end
        end
    end)
	AddPrefabPostInit("archive_cookpot", function(inst)
        if inst.components.stewer then
            inst.components.stewer.onspoil = function() 
                inst.components.stewer.spoiltime = 1
                inst.components.stewer.targettime = GLOBAL.GetTime()
                inst.components.stewer.product_spoilage = 0
            end
        end
    end)
	AddPrefabPostInit("portablecookpot", function(inst)
        if inst.components.stewer then
            inst.components.stewer.onspoil = function() 
                inst.components.stewer.spoiltime = 1
                inst.components.stewer.targettime = GLOBAL.GetTime()
                inst.components.stewer.product_spoilage = 0
            end
        end
    end)
	AddPrefabPostInit("portablespicer", function(inst)
        if inst.components.stewer then
            inst.components.stewer.onspoil = function() 
                inst.components.stewer.spoiltime = 1
                inst.components.stewer.targettime = GLOBAL.GetTime()
                inst.components.stewer.product_spoilage = 0
            end
        end
    end)
end

-- Dragonfly Drops Coffee Plants.
local DF_COFFEE = GetModConfigData("df_coffee")
if DF_COFFEE == 0 then
	AddPrefabPostInit("dragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
		end
	end)
elseif DF_COFFEE == 1 then
	AddPrefabPostInit("dragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
		end
	end)
elseif DF_COFFEE == 2 then
	AddPrefabPostInit("dragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
		end
	end)
elseif DF_COFFEE == 3 then
	AddPrefabPostInit("dragonfly", function(inst)
		if GLOBAL.TheWorld.ismastersim then
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00) 
			inst.components.lootdropper:AddChanceLoot("dug_kyno_coffeebush", 1.00)
		end
	end)
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
	"kyno_bacon_cooked", "gorge_bread", "gorge_potato_chips"}) do
        local foods_name = foods
        AddPrefabPostInit(foods_name, function(inst)
            inst.components.inventoryitem.imagename = foods_name
            inst.components.inventoryitem.atlasname = foods_atlas
        end)
    end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------