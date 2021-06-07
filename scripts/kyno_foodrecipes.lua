local kyno_foods =
{
	-- Shipwrecked Foods.
	coffee =
	{
		test = function(cooker, names, tags) return names.kyno_coffeebeans_cooked and (names.kyno_coffeebeans_cooked == 4 or 
		(names.kyno_coffeebeans_cooked == 3 and (tags.dairy or tags.sweetener))) and not names.kyno_coffeebeans end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		secondaryfoodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 3,
		hunger = 9.375,
		sanity = -5,
		cooktime = 0.5,
		oneat_desc = "Speeds the body",
		floater = {"med", nil, 0.65},
	},
	
	bisque =
	{
		test = function(cooker, names, tags) return (names.kyno_limpets or names.kyno_limpets_cooked == 3) and tags.frozen end,
		priority = 30,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 60,
		hunger = 18.75,
		sanity = 5,
		cooktime = 1,
		potlevel = "high",
		floater = {"med", nil, 0.65},
	},
	
	jellyopop = 
	{
		test = function(cooker, names, tags) return tags.fish and tags.frozen and names.twigs end,
		priority = 20,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SUPERFAST,
		health = 20,
		hunger = 12.5,
		sanity = 0,
		cooktime = 0.5,
		temperature = TUNING.COLD_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
		potlevel = "med",
		floater = {"med", nil, 0.65},
	},
	
	musselbouillabaise =
	{
		test = function(cooker, names, tags) return (names.kyno_mussel and names.kyno_mussel == 3)
		and tags.veggie and not tags.inedible and not tags.sweetener and not names.kyno_mussel_cooked end,
		priority = 30,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 60,
		hunger = 37.5,
		sanity = 15,
		cooktime = 2,
		floater = {"med", nil, 0.65},

	},
	
	sharkfinsoup = 
	{
		test = function(cooker, names, tags) return names.kyno_shark_fin end,
		priority = 20,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 40,
		hunger = 12.5,
		sanity = -10,
		cooktime = 1,
		potlevel = "med",
		oneat_desc = "Increases naughtiness",
		floater = {"med", nil, 0.65},
	},
	
	sweetpotatosouffle =
	{
		test = function(cooker, names, tags) return (names.kyno_sweetpotato == 2) and tags.egg and tags.egg >= 2 and not (names.kyno_sweetpotato_cooked) and not (names.potato or names.potato_cooked) end,
		priority = 30,
		foodtype = FOODTYPE.VEGGIE,
		secondaryfoodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 37.5,
		sanity = 15,
		cooktime = 2,
		floater = {"med", nil, 0.65},

	},
	
	caviar = 
	{
		test = function(cooker, names, tags) return (names.kyno_roe or names.kyno_roe_cooked) and tags.veggie and not tags.sweetener and not tags.dairy end,
		priority = 30,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 3,
		hunger = 12.5,
		sanity = 15,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	tropicalbouillabaisse =
	{
		test = function(cooker, names, tags) return tags.fish and (names.eel or names.eel_cooked or names.pondeel) and (names.wobster_sheller_land) 
		and (names.barnacle or names.barnacle_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 60,
		hunger = 37.5,
		sanity = 15,
		cooktime = 2,
		temperature = TUNING.COLD_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
		oneat_desc = "Speeds the body",
		floater = {"med", nil, 0.65},
	},
	
	-- Hamlet Foods.
	feijoada =
	{
		test = function(cooker, names, tags) return (names.kyno_beanbugs or names.kyno_beanbugs_cooked == 3) and tags.meat end,
		priority = 30,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 20,
		hunger = 75,
		sanity = 15,
		cooktime = 3.5,
		floater = {"med", nil, 0.65},
	},
	
	gummy_cake =
	{
		test = function(cooker, names, tags) return (names.kyno_gummybug or names.kyno_gummybug_cooked) and tags.sweetener end,
		priority = 1,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_PRESERVED,
		health = -3,
		hunger = 150,
		sanity = -5,
		cooktime = 2,
		potlevel = "high",
		floater = {"med", nil, 0.65},
	},
	
	hardshell_tacos =
	{
		test = function(cooker, names, tags) return (names.slurtle_shellpieces == 2) and tags.veggie end,
		priority = 1,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_SLOW,
		health = 20,
		hunger = 37.5,
		sanity = 5,
		cooktime = 2,
		potlevel = "high",
		floater = {"med", nil, 0.65},
	},
	
	icedtea = 
	{
		test = function(cooker, names, tags) return (names.rabbit == 2) and tags.sweetener and tags.frozen and not tags.meat and not tags.egg and not tags.fish end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_FAST,
		temperature = TUNING.COLD_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
		health = 3,
		hunger = 12.5,
		sanity = 33,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},
		prefabs = { "buff_sleepresistance" },
        oneat_desc = STRINGS.UI.COOKBOOK.FOOD_EFFECTS_SLEEP_RESISTANCE,
        oneatenfn = function(inst, eater)
            if eater.components.grogginess ~= nil and
				(eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled()) and
					not (eater.components.health ~= nil and eater.components.health:IsDead()) and
					not eater:HasTag("playerghost") then
                if eater.components.grogginess ~= nil then
                    eater.components.grogginess:ResetGrogginess()
                end
                if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() then
                    eater.components.debuffable:AddDebuff("shroomsleepresist", "buff_sleepresistance")
                end
            end
        end,
	},
	
	tea = 
	{
		test = function(cooker, names, tags) return (names.rabbit == 2) and tags.sweetener and not tags.frozen and not tags.meat and not tags.egg and not tags.fish end,
		priority = 25,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_FAST,
		temperature = TUNING.HOT_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
		health = 3,
		hunger = 12.5,
		sanity = 33,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},
		prefabs = { "buff_sleepresistance" },
        oneat_desc = STRINGS.UI.COOKBOOK.FOOD_EFFECTS_SLEEP_RESISTANCE,
        oneatenfn = function(inst, eater)
            if eater.components.grogginess ~= nil and
				(eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled()) and
					not (eater.components.health ~= nil and eater.components.health:IsDead()) and
					not eater:HasTag("playerghost") then
                if eater.components.grogginess ~= nil then
                    eater.components.grogginess:ResetGrogginess()
                end
                if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() then
                    eater.components.debuffable:AddDebuff("shroomsleepresist", "buff_sleepresistance")
                end
            end
        end,
	},
	
	nettlelosange = 
	{
		test = function(cooker, names, tags) return (names.firenettles == 3) end,
		priority = 0,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		temperature = TUNING.HOT_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_LONG,
		health = 20,
		hunger = 25,
		sanity = -10,
		cooktime = .5,
		floater = {"med", nil, 0.65},
	},
	
	snakebonesoup = 
	{
		test = function(cooker, names, tags) return (names.boneshard == 2) and (tags.meat == 2) end,
		priority = 20,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 40,
		hunger = 25,
		sanity = 10,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	steamedhamsandwich = 
	{
		test = function(cooker, names, tags) return (names.meat or names.meat_cooked == 2) and (names.foliage or names.kyno_foliage_cooked) and (names.kelp or names.kelp_cooked) end,
		priority = 5,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 62.5,
		sanity = 15,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	-- Unimplemented Foods. 
	
	bubbletea = 
	{
		test = function(cooker, names, tags) return names.robin_winter and (tags.sweetener == 2) and tags.frozen and not tags.meat and not tags.egg and not tags.fish end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_FAST,
		health = 20,
		hunger = 12.5,
		sanity = 33,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},

		prefabs = { "buff_sleepresistance" },
        oneat_desc = STRINGS.UI.COOKBOOK.FOOD_EFFECTS_SLEEP_RESISTANCE,
        oneatenfn = function(inst, eater)
            if eater.components.grogginess ~= nil and
				(eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled()) and
					not (eater.components.health ~= nil and eater.components.health:IsDead()) and
					not eater:HasTag("playerghost") then
                if eater.components.grogginess ~= nil then
                    eater.components.grogginess:ResetGrogginess()
                end
                if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() then
                    eater.components.debuffable:AddDebuff("shroomsleepresist", "buff_sleepresistance")
                end
            end
        end,
	},
	
	frenchonionsoup = 
	{
		test = function(cooker, names, tags) return (names.onion or names.onion_cooked == 2) and tags.veggie and (names.foliage or names.kyno_foliage_cooked) end,
		priority = 5,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 40,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1,
		floater = {"med", nil, 0.65},

	},
	
	slaw = 
	{
		test = function(cooker, names, tags) return (names.kyno_fennel or names.kyno_fennel_cooked == 2) and (names.kyno_radish or names.kyno_radish_cooked) end,
		priority = 20,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 25,
		sanity = 10,
		cooktime = 1.5,
		potlevel = "high",
		floater = {"med", nil, 0.65},
	},
	
	lotusbowl = 
	{
		test = function(cooker, names, tags) return (names.kyno_lotus_flower or names.kyno_lotus_flower_cooked == 3) end,
		priority = 30,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FASTISH,
		health = 8,
		hunger = 12.5,
		sanity = 50,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},
	},
	
	poi = 
	{
		test = function(cooker, names, tags) return (names.kyno_taroroot or names.kyno_taroroot_cooked == 3) and not tags.inedible end,
		priority = 30,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 62.5,
		sanity = 5,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	jellybean_sanity =
	{
		test = function(cooker, names, tags) return names.royal_jelly and (names.green_cap or names.green_cap_cooked == 3) and not tags.inedible and not tags.monster end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		perishtime = nil,
		health = 2,
		hunger = 0, 
		sanity = 5,
		cooktime = 2.5,
		stacksize = 3,
		oneat_desc = "Restores sanity over time",
		floater = {"med", nil, 0.65},

        prefabs = { "kyno_sanityregenbuff" },
        oneatenfn = function(inst, eater)
            if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() and
                not (eater.components.health ~= nil and eater.components.health:IsDead()) and
                not eater:HasTag("playerghost") then
                eater.components.debuffable:AddDebuff("kyno_sanityregenbuff", "kyno_sanityregenbuff")
            end
        end,
	},
	
	jellybean_hunger =
	{
		test = function(cooker, names, tags) return names.royal_jelly and names.butter and tags.sweetener and not tags.inedible and not tags.monster end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		perishtime = nil,
		health = 2,
		hunger = 5, 
		sanity = 0,
		cooktime = 2.5,
		stacksize = 3,
		oneat_desc = "Restores hunger over time",
		floater = {"med", nil, 0.65},

        prefabs = { "kyno_hungerregenbuff" },
        oneatenfn = function(inst, eater)
            if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() and
                not (eater.components.health ~= nil and eater.components.health:IsDead()) and
                not eater:HasTag("playerghost") then
                eater.components.debuffable:AddDebuff("kyno_hungerregenbuff", "kyno_hungerregenbuff")
            end
        end,
	},
	
	jellybean_super =
	{
		test = function(cooker, names, tags) return (names.royal_jelly == 4) and not tags.inedible and not tags.monster end,
		priority = 30,
		foodtype = FOODTYPE.GOODIES,
		perishtime = nil,
		health = 2,
		hunger = 2, 
		sanity = 2,
		cooktime = 2.5,
		stacksize = 3,
		oneat_desc = "Restores all over time",
		floater = {"med", nil, 0.65},

        prefabs = { "kyno_superregenbuff" },
        oneatenfn = function(inst, eater)
            if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() and
                not (eater.components.health ~= nil and eater.components.health:IsDead()) and
                not eater:HasTag("playerghost") then
                eater.components.debuffable:AddDebuff("kyno_superregenbuff", "kyno_superregenbuff")
            end
        end,
	},
	
	cucumbersalad =
	{
		test = function(cooker, names, tags) return names.kyno_cucumber and tags.veggie >= 2 and not tags.meat and not tags.inedible 
		and not tags.egg and not tags.sweetener and not tags.fruit and not (names.kyno_taroroot or names.kyno_taroroot_cooked) end,
		priority = 30,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 10,
		hunger = 25,
		sanity = 15,
		cooktime = 1.2,
		floater = {"med", nil, 0.65},
		prefabs = { "buff_moistureimmunity" },
		oneat_desc = STRINGS.UI.COOKBOOK.FOOD_EFFECTS_DRY,
        oneatenfn = function(inst, eater)
            if eater.components.debuffable ~= nil and eater.components.debuffable:IsEnabled() and
                not (eater.components.health ~= nil and eater.components.health:IsDead()) and
                not eater:HasTag("playerghost") then
                eater.components.debuffable:AddDebuff("buff_moistureimmunity", "buff_moistureimmunity")
            end
       	end,
	},
	
	waterycressbowl =
	{
		test = function(cooker, names, tags) return (names.kyno_waterycress == 2) and names.succulent_picked and tags.veggie and not tags.inedible and not tags.egg
		and not tags.sweetener and not tags.fruit and not tags.meat end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_SLOW,
		health = 20,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1,
		temperature = TUNING.COLD_FOOD_BONUS_TEMP,
		temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
		floater = {"med", nil, 0.65},
	},
	
	-- Secret Custom Foods. Why are you here by the way?
	
	bowlofgears = 
	{
		test = function(cooker, names, tags) return (names.gears and names.gears == 2) and not tags.frozen end,
		priority = 1,
		foodtype = FOODTYPE.GEARS,
		perishtime = nil,
		health = 135,
		hunger = 150,
		sanity = 150,
		cooktime = 2,
		oneat_desc = "Upgrades the chassis",
		floater = {"med", nil, 0.65},
	},
	
	longpigmeal = 
	{
		test = function(cooker, names, tags) return (names.kyno_humanmeat or names.kyno_humanmeat_cooked or names.kyno_humanmeat_dried) and not tags.inedible end,
		priority = 1,
		foodtype = FOODTYPE.MEAT,
		secondaryfoodtype = FOODTYPE.MONSTER,
		perishtime = TUNING.PERISH_MED,
		health = -100,
		hunger = 150,
		sanity = -300,
		cooktime = 1,
		oneat_desc = "Hurts the body",
		floater = {"med", nil, 0.65},
	},
	
	duckyouglermz =
	{
		test = function(cooker, names, tags) return names.poop and names.guano and names.glommerfuel and names.kyno_salt end,
		priority = 100,
		foodtype = FOODTYPE.SEEDS,
		perishtime = nil,
		health = 0,
		hunger = 0,
		sanity = 0,
		cooktime = 5,
		oneat_desc = "Glermz's special dish",
		floater = {"med", nil, 0.65},
	},
	
	-- The Gorge Foods.
	
	gorge_bread = 
	{
		test = function(cooker, names, tags) return (names.kyno_flour and names.kyno_flour == 3 or (names.kyno_flour and names.kyno_flour == 4)) end,
		priority = 1,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_SLOW,
		health = 3,
		hunger = 12.5,
		sanity = 0,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_potato_chips = 
	{
		test = function(cooker, names, tags) return (names.potato or names.potato_cooked == 3) and names.kyno_spotspice and not (names.garlic or names.garlic_cooked) 
		and not tags.fish and not tags.meat end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 3,
		hunger = 25,
		sanity = 5,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_vegetable_soup =
	{
		test = function(cooker, names, tags) return (names.carrot or names.carrot_cooked) and (names.onion or names.onion_cooked) and
		(names.corn or names.corn_cooked) and (names.foliage or names.kyno_foliage_cooked) and not (names.potato or names.potato_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_SLOW,
		health = 8,
		hunger = 25,
		sanity = 10,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_jelly_sandwich = 
	{
		test = function(cooker, names, tags) return names.gorge_bread and (names.berries or names.berries_cooked or names.berries_juicy or names.berries_juicy_cooked) 
		and not tags.inedible and not tags.veggie and not tags.meat and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 3,
		hunger = 37.5,
		sanity = 15,
		cooktime = .5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_fish_stew =
	{
		test = function(cooker, names, tags) return (tags.fish == 2) and (names.asparagus or names.asparagus_cooked) and names.kyno_spotspice and not names.twigs
		and not names.gorge_bread end,
		priority = 30,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 20,
		hunger = 75,
		sanity = 5,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_onion_cake =
	{
		test = function(cooker, names, tags) return (names.onion or names.onion_cooked == 3) and names.kyno_flour and not tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 5,
		hunger = 37.5,
		sanity = 15,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_potato_pancakes = 
	{
		test = function(cooker, names, tags) return (names.potato or names.potato_cooked == 3) and names.kyno_flour and not tags.egg and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 3,
		hunger = 12.5,
		sanity = 33,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_potato_soup = 
	{
		test = function(cooker, names, tags) return (names.potato or names.potato_cooked == 3) and names.succulent_picked end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 25,
		sanity = 10,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_fishball_skewers = 
	{
		test = function(cooker, names, tags) return (tags.fish == 2) and names.twigs and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 37.5,
		sanity = 10,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_meat_skewers =
	{
		test = function(cooker, names, tags) return (names.kyno_bacon or names.kyno_bacon_cooked == 2) and names.twigs and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 20,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_stone_soup = 
	{
		test = function(cooker, names, tags) return names.rocks and tags.veggie end,
		priority = 1,
		foodtype = FOODTYPE.VEGGIE,
		secondaryfoodtype = FOODTYPE.ELEMENTAL,
		perishtime = TUNING.PERISH_SLOW,
		health = -10,
		hunger = 25,
		sanity = 5,
		cooktime = .60,
		floater = {"med", nil, 0.65},
	},
	
	gorge_croquette = 
	{
		test = function(cooker, names, tags) return (names.potato == 2) and tags.egg and names.kyno_flour and not names.potato_cooked end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 12.5,
		sanity = 20,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_roast_vegetables = 
	{
		test = function(cooker, names, tags) return names.onion_cooked and names.asparagus_cooked and names.garlic_cooked and names.carrot_cooked end,
		priority = 30,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 25,
		hunger = 40,
		sanity = 20,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_meatloaf =
	{
		test = function(cooker, names, tags) return (names.kyno_bacon or names.kyno_bacon_cooked == 2) and names.kyno_flour and tags.veggie and not (names.foliage or names.kyno_foliage_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 25,
		sanity = 5,
		cooktime = 1.5,
		potlevel = "low",
		floater = {"med", nil, 0.65},
	},
	
	gorge_carrot_soup =
	{
		test = function(cooker, names, tags) return (names.carrot or names.carrot_cooked == 3) and names.kyno_spotspice end,
		priority = 15,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 10,
		hunger = 37.5,
		sanity = 10,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_fishpie =
	{
		test = function(cooker, names, tags) return (tags.fish == 2) and names.kyno_flour and tags.veggie and not names.gorge_bread end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},

	gorge_fishchips =
	{
		test = function(cooker, names, tags) return tags.fish and names.kyno_flour and (names.potato or names.potato_cooked == 2) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 40,
		hunger = 75,
		sanity = 1,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_meatpie = 
	{
		test = function(cooker, names, tags) return tags.meat and (names.kyno_flour == 2) and tags.veggie and not (names.potato or names.potato_cooked) 
		and not (names.onion or names.onion_cooked) and not (names.kyno_bacon or names.kyno_bacon_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 3,
		hunger = 50,
		sanity = 20,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_sliders = 
	{
		test = function(cooker, names, tags) return (names.kyno_bacon or names.kyno_bacon_cooked == 2) and names.kyno_flour and (names.foliage or names.kyno_foliage_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 5,
		hunger = 12.5,
		sanity = 25,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_jelly_roll = 
	{
		test = function(cooker, names, tags) return (names.berries or names.berries_cooked or names.berries_juicy or names.berries_juicy_cooked == 3) and names.kyno_flour 
		and not names.kyno_syrup and not tags.sweetener and not tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 8,
		hunger = 25,
		sanity = 15,
		cooktime = .5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_carrot_cake =
	{
		test = function(cooker, names, tags) return (names.carrot == 3) and names.kyno_flour and not names.kyno_spotspice and not names.carrot_cooked end,
		priority = 20,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 15,
		hunger = 37.5,
		sanity = 5,
		cooktime = .75,
		oneat_desc = "The cake is a lie!",
		floater = {"med", nil, 0.65},
	},
	
	gorge_garlicmashed =
	{
		test = function(cooker, names, tags) return (names.garlic or names.garlic_cooked == 2) and (names.potato or names.potato_cooked) and names.kyno_spotspice 
		and not names.gorge_bread and not tags.meat and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 5,
		hunger = 37.5,
		sanity = 15,
		cooktime = .60,
		floater = {"med", nil, 0.65},
	},
	
	gorge_garlicbread = 
	{
		test = function(cooker, names, tags) return names.gorge_bread and (names.garlic or names.garlic_cooked == 2) and not tags.meat and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_SLOW,
		health = 30,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_tomato_soup = 
	{
		test = function(cooker, names, tags) return (names.tomato or names.tomato_cooked == 3) and names.kyno_spotspice and not names.gorge_bread and not tags.meat 
		and not tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 15,
		hunger = 35,
		sanity = 15,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_sausage =
	{
		test = function(cooker, names, tags) return (names.kyno_bacon or names.kyno_bacon_cooked == 3) and names.kyno_spotspice and not tags.inedible end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 37.5,
		sanity = 10,
		cooktime = 0.8,
		floater = {"med", nil, 0.65},
	},
	
	gorge_candiedfish =
	{
		test = function(cooker, names, tags) return (tags.fish == 2) and names.kyno_syrup end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 5,
		hunger = 25,
		sanity = 33,
		cooktime = 1.5,
		potlevel = "low",
		floater = {"med", nil, 0.65},
	},
	
	gorge_stuffedmushroom =
	{
		test = function(cooker, names, tags) return (names.kyno_white_cap or names.kyno_white_cap_cooked == 2) and tags.veggie and not (names.foliage or names.kyno_foliage_cooked)
		and not names.succulent_picked and not tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 20,
		hunger = 20,
		sanity = 20,
		cooktime = 0.8,
		potlevel = "low",
		floater = {"med", nil, 0.65},
	},
	
	gorge_bruschetta = 
	{
		test = function(cooker, names, tags) return names.gorge_bread and names.kyno_spotspice and (names.tomato or names.tomato_cooked == 2) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 8,
		hunger = 37.5,
		sanity = 5,
		cooktime = 1.7,
		floater = {"med", nil, 0.65},
	},
	
	gorge_hamburger =
	{
		test = function(cooker, names, tags) return names.gorge_bread and tags.meat and (names.kyno_bacon or names.kyno_bacon_cooked) and (names.foliage or names.kyno_foliage_cooked)
		and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 5,
		hunger = 62.5,
		sanity = 5,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_fishburger =
	{
		test = function(cooker, names, tags) return names.gorge_bread and tags.fish and (names.kyno_bacon or names.kyno_bacon_cooked) and (names.foliage or names.kyno_foliage_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 30,
		hunger = 62.5,
		sanity = 5,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_mushroomburger =
	{
		test = function(cooker, names, tags) return names.gorge_bread and (names.kyno_white_cap or names.kyno_white_cap_cooked == 2) and (names.foliage or names.kyno_foliage_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 5,
		hunger = 62.5,
		sanity = 30,
		cooktime = .70,
		floater = {"med", nil, 0.65},
	},
	
	gorge_fish_steak =
	{
		test = function(cooker, names, tags) return names.fishmeat_cooked and (names.foliage or names.kyno_foliage_cooked) and names.kyno_spotspice and not names.fishmeat end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 25,
		sanity = 5,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_curry = 
	{
		test = function(cooker, names, tags) return tags.meat and tags.veggie and (names.kyno_spotspice == 2) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		secondaryfoodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 37.5,
		sanity = 15,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_spaghetti =
	{
		test = function(cooker, names, tags) return tags.meat and names.kyno_flour and names.kyno_spotspice and (names.tomato or names.tomato_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 10,
		hunger = 75,
		sanity = 20,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_poachedfish =
	{
		test = function(cooker, names, tags) return (tags.fish == 2) and (names.foliage or names.kyno_foliage_cooked) and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 25,
		sanity = 25,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_shepherd_pie =
	{
		test = function(cooker, names, tags) return tags.meat and (names.onion or names.onion_cooked) and (names.garlic or names.garlic_cooked) and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 30,
		hunger = 75,
		sanity = 10,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_candy =
	{
		test = function(cooker, names, tags) return names.kyno_syrup and (tags.sweetener == 4) end,
		priority = 35,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_SUPERSLOW,
		health = -5,
		hunger = 25,
		sanity = 30,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_bread_pudding = 
	{
		test = function(cooker, names, tags) return (names.berries or names.berries_cooked or names.berries_juicy or names.berries_juicy_cooked) and (names.kyno_flour == 2)
		and names.kyno_syrup end,
		priority = 20,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 15,
		hunger = 40,
		sanity = 20,
		cooktime = 1.2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_berry_tart =
	{
		test = function(cooker, names, tags) return (names.berries or names.berries_cooked or names.berries_juicy or names.berries_juicy_cooked == 2) and names.kyno_flour
		and tags.sweetener and not names.kyno_syrup end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 25,
		hunger = 20,
		sanity = 15,
		cooktime = 1.2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_macaroni =
	{
		test = function(cooker, names, tags) return (names.kyno_flour == 2) and names.goatmilk and not tags.fish and not tags.meat and not names.gorge_bread and not tags.fruit end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 20,
		hunger = 37.5,
		sanity = 50,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_bagel_and_fish = 
	{
		test = function(cooker, names, tags) return names.gorge_bread and names.goatmilk and tags.fish and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 50,
		hunger = 37.5,
		sanity = 20,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_grilled_cheese =
	{
		test = function(cooker, names, tags) return names.gorge_bread and tags.dairy and not tags.fish and not tags.meat and not names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FAST,
		health = 30,
		hunger = 62.5,
		sanity = 25,
		cooktime = 0.5,
		potlevel = "low",
		floater = {"med", nil, 0.65},
	},
	
	gorge_creammushroom = 
	{
		test = function(cooker, names, tags) return names.goatmilk and (names.kyno_white_cap or names.kyno_white_cap_cooked == 2) and names.succulent_picked and
		not tags.meat and not tags.fish end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 25,
		sanity = 33,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_manicotti =
	{
		test = function(cooker, names, tags) return names.kyno_flour and names.goatmilk and names.kyno_spotspice and (names.tomato or names.tomato_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 8,
		hunger = 50,
		sanity = 33,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_cheeseburger =
	{
		test = function(cooker, names, tags) return names.gorge_bread and tags.meat and tags.dairy and (names.foliage or names.kyno_foliage_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FASTISH,
		health = 40,
		hunger = 75,
		sanity = 30,
		cooktime = 1.2,
		floater = {"med", nil, 0.65},

	},
	
	gorge_fettuccine = 
	{
		test = function(cooker, names, tags) return names.kyno_flour and (names.garlic or names.garlic_cooked) and names.succulent_picked and tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 40,
		hunger = 37.5,
		sanity = 10,
		floater = {"med", nil, 0.65},
	},
	
	gorge_onion_soup =
	{
		test = function(cooker, names, tags) return names.kyno_flour and tags.dairy and (names.onion or names.onion_cooked == 2) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_MED,
		health = 25,
		hunger = 62.5,
		sanity = -10,
		floater = {"med", nil, 0.65},
	},
	
	gorge_breaded_cutlet =
	{
		test = function(cooker, names, tags) return (tags.meat == 2) and (names.kyno_flour == 2) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 30,
		hunger = 75,
		sanity = 15,
		potlevel = "low",
		floater = {"med", nil, 0.65},
	},
	
	gorge_creamy_fish =
	{
		test = function(cooker, names, tags) return names.goatmilk and tags.veggie and tags.fish and names.kyno_spotspice and not names.gorge_bread end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 40,
		hunger = 75,
		sanity = 20,
		floater = {"med", nil, 0.65},
	},
	
	gorge_pizza =
	{
		test = function(cooker, names, tags) return tags.meat and names.kyno_flour and tags.dairy and (names.tomato or names.tomato_cooked) end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 40,
		hunger = 150,
		sanity = 20,
		cooktime = 2.5,
		floater = {"med", nil, 0.65},

	},
	
	gorge_pot_roast =
	{
		test = function(cooker, names, tags) return (tags.meat == 2) and tags.veggie and names.kyno_spotspice and not (names.potato or names.potato_cooked) and not tags.fish 
		and not tags.monster end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 150,
		sanity = 5,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_crab_cake = 
	{
		test = function(cooker, names, tags) return names.wobster_sheller_land and names.succulent_picked and names.kyno_flour and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 60,
		hunger = 37.5,
		sanity = 20,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_steak_frites =
	{
		test = function(cooker, names, tags) return (tags.meat == 2) and (names.potato or names.potato_cooked) and names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 30,
		hunger = 62.5,
		sanity = 15,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_shooter_sandwich =
	{
		test = function(cooker, names, tags) return tags.meat and names.gorge_bread and names.kyno_spotspice and not tags.fish end, 
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 8,
		hunger = 75,
		sanity = 15,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_bacon_wrapped =
	{
		test = function(cooker, names, tags) return tags.meat and (names.kyno_bacon or names.kyno_bacon_cooked == 2) and not tags.inedible and not names.gorge_bread 
		and not names.kyno_spotspice end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_MED,
		health = 25,
		hunger = 62.5,
		sanity = 20,
		cooktime = .75,
		floater = {"med", nil, 0.65},
	},
	
	gorge_crab_roll =
	{
		test = function(cooker, names, tags) return names.wobster_sheller_land and (names.foliage or names.kyno_foliage_cooked) and (names.kyno_white_cap or names.kyno_white_cap_cooked) 
		and names.kyno_flour end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 60,
		hunger = 75,
		sanity = 25,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	gorge_meat_wellington =
	{
		test = function(cooker, names, tags) return (tags.meat == 2) and names.gorge_bread and tags.veggie end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_SLOW,
		health = 40,
		hunger = 62.5,
		sanity = 15,
		cooktime = 1,
		floater = {"med", nil, 0.65},

	},
	
	gorge_crab_ravioli =
	{
		test = function(cooker, names, tags) return names.wobster_sheller_land and names.kyno_flour and tags.dairy and tags.veggie end,
		priority = 35,
		foodtype = FOODTYPE.MEAT,
		perishtime = TUNING.PERISH_FAST,
		health = 60,
		hunger = 37.5,
		sanity = 50,
		cooktime = 1.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_caramel_cube =
	{
		test = function(cooker, names, tags) return (names.kyno_syrup == 2) and (tags.dairy == 2) end,
		priority = 20,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_FASTISH,
		health = -25,
		hunger = 37.5,
		sanity = 100,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
	
	gorge_scone =
	{
		test = function(cooker, names, tags) return tags.fruit and (names.kyno_flour == 2) and tags.dairy end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FASTISH,
		health = 5,
		hunger = 37.5,
		sanity = 40,
		cooktime = 0.5,
		floater = {"med", nil, 0.65},
	},
	
	gorge_trifle =
	{
		test = function(cooker, names, tags) return tags.fruit and names.kyno_flour and (tags.dairy == 2) end,
		priority = 35,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FASTISH,
		health = 15,
		hunger = 37.5,
		sanity = 60,
		cooktime = 1,
		floater = {"med", nil, 0.65},

	},
	
	gorge_cheesecake =
	{
		test = function(cooker, names, tags) return (names.berries or names.berries_cooked or names.berries_juicy or names.berries_juicy_cooked == 2) and names.kyno_flour
		and tags.dairy end,
		priority = 20,
		foodtype = FOODTYPE.VEGGIE,
		perishtime = TUNING.PERISH_FASTISH,
		health = 20,
		hunger = 75,
		sanity = 25,
		cooktime = 2,
		floater = {"med", nil, 0.65},
	},
	
	kyno_syrup =
	{
		test = function(cooker, names, tags) return names.kyno_sap and (names.kyno_sap == 4 or 
		(names.kyno_sap == 3 and (tags.dairy or tags.sweetener))) and not tags.monster end,
		priority = 35,
		foodtype = FOODTYPE.GOODIES,
		perishtime = TUNING.PERISH_SUPERSLOW,
		health = 3,
		hunger = 9.375,
		sanity = 0,
		cooktime = 1,
		floater = {"med", nil, 0.65},
	},
}

for k, recipe in pairs(kyno_foods) do
	recipe.name = k
	recipe.weight = 1
	recipe.cookbook_atlas = "images/cookbookimages/kyno_cookbook.xml"
	recipe.cookbook_tex = k..".tex"
end

return kyno_foods