name = "Heap of Foods: Forked"
version = "2.1-A - Fork Update 1.4"
local myupdate = "Vegetables Overload!"

description = "󰀄 Adds 92 brand new Crock Pot dishes alongside new ingredients to use!\n\n󰀦 Guide on the mod page!\n\n󰀌 Mod Version: "..version.."\n\󰀧 Update: "..myupdate..""
author = "Original: Kyno, Fork: KreygasmTR"

api_version = 10

dst_compatible = true
all_clients_require_mod = true
client_only_mod = false

server_filter_tags = {"Heap of Foods", "HOF", "Cooking", "Entertainment", "Kyno"}

icon = "ModiconHOF.tex"
icon_atlas = "ModiconHOF.xml"

configuration_options =
{
    {
        name = "keep_food_spoilage_k",
        label = "Keep Food Spoilage",
        hover = "Should food not spoil if it's in a Crock Pot, etc.",
        options =
        {
            {description = "No", 
			hover = "Food will spoil in Crock Pot, Portable Crock Pot, etc.",
			data = 0},
            {description = "Yes", 
			hover = "Food will not spoil in Crock Pot, Portable Crock Pot, etc.",
			data = 1},
        },
        default = 0,
    },
	{
        name = "df_coffee",
        label = "Coffee Plant Drop Rate",
        hover = "Choose how many Coffee Plants Dragonfly should drop.",
        options =
        {
            {description = "4", 
			hover = "Dragonfly will drop 4 Coffee Plants.",
			data = 0},
            {description = "8", 
			hover = "Dragonfly will drop 8 Coffee Plants.",
			data = 1},
			{description = "12", 
			hover = "Dragonfly will drop 12 Coffee Plants.",
			data = 2},
			{description = "16", 
			hover = "Dragonfly will drop 16 Coffee Plants.",
			data = 3},
        },
        default = 0,
    },
	{
		name = "worldfood",
		label = "Natural Spawns",
		hover = "Should Wild Wheats, Radishes and other plants spawn naturally in the world?",
		options =
		{
			{description = "No", 
			hover = "Nothing will spawn naturally.",
			data = 0},
            {description = "Yes", 
			hover = "New plants will spawn naturally during world generation.",
			data = 1},
        },
        default = 1,
	},
	{	
		name = "butleramount",
		label = "Butter Amount",
		hover = "Sets the buttler amount got from grinding.",
		options =	{
						{description = "One", data = 1 },
						{description = "Two", data = 2 },
						{description = "Three", data = 3 },
						{description = "Four", data = 4 },
						{description = "Five", data = 5 },
						{description = "Six", data = 6 },
					},
		default = 2,
    },
}
