name = "Heap of Foods"
version = "1.5-A-FORK - Beta 2"
local myupdate = "Ingredients Rework!"

description = "󰀄 Adds 88 brand new Crock Pot dishes alongside new ingredients to use!\n\n󰀦 Guide on the mod page!\n\n󰀌 Mod Version: "..version.."\n\󰀧 Update: "..myupdate..""
author = "Original: Kyno - Fork: KreygasmTR"

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
}
