local assets =
{
	Asset("ANIM", "anim/kyno_crop_seeds.zip"),
	Asset("ANIM", "anim/kyno_sweetpotato.zip"),
	
	Asset("IMAGE", "images/inventoryimages/kyno_foodimages.tex"),
	Asset("ATLAS", "images/inventoryimages/kyno_foodimages.xml"),
	Asset("ATLAS_BUILD", "images/inventoryimages/kyno_foodimages.xml", 256),
}

local prefabs = 
{
	"kyno_sweetpotato",
	"kyno_sweetpotato_cooked",
	"kyno_sweetpotato_seeds",
	"spoiled_food",
}

local function onpicked(inst)
    TheWorld:PushEvent("beginregrowth", inst)
    inst:Remove()
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("kyno_sweetpotato")
    inst.AnimState:SetBuild("kyno_sweetpotato")
    inst.AnimState:PlayAnimation("planted")
    inst.AnimState:SetRayTestOnBB(true)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("pickable")
    inst.components.pickable.picksound = "dontstarve/wilson/pickup_plants"
    inst.components.pickable:SetUp("kyno_sweetpotato", 10)
    inst.components.pickable.onpickedfn = onpicked

    inst.components.pickable.quickpick = true

    MakeSmallBurnable(inst)
    MakeSmallPropagator(inst)

    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

    return inst
end

local function sweetpotato()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst)

	inst.AnimState:SetBank("kyno_sweetpotato")
	inst.AnimState:SetBuild("kyno_sweetpotato")
	inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("veggie")
	inst:AddTag("cookable")
	inst:AddTag("modded_crop")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("inspectable")
	inst:AddComponent("bait")
	inst:AddComponent("tradable")

   	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 1
	inst.components.edible.hungervalue = 12.5
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = FOODTYPE.VEGGIE

	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_FAST)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"

	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_foodimages.xml"
	inst.components.inventoryitem.imagename = "kyno_sweetpotato"

	inst:AddComponent("cookable")
	inst.components.cookable.product = "kyno_sweetpotato_cooked"

	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	MakeHauntableLaunchAndPerish(inst)

	return inst
end

local function sweetpotato_cooked()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst)

	inst.AnimState:SetBank("kyno_sweetpotato")
	inst.AnimState:SetBuild("kyno_sweetpotato")
	inst.AnimState:PlayAnimation("cooked")
	
	inst:AddTag("veggie")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("inspectable")
	inst:AddComponent("bait")
	inst:AddComponent("tradable")

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 3
	inst.components.edible.hungervalue = 12.5
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = FOODTYPE.VEGGIE
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_MED)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_foodimages.xml"
	inst.components.inventoryitem.imagename = "kyno_sweetpotato_cooked"

	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	MakeHauntableLaunchAndPerish(inst)

	return inst
end

local function can_plant_seed(inst, pt, mouseover, deployer)
	local x, z = pt.x, pt.z
	return TheWorld.Map:CanTillSoilAtPoint(x, 0, z, true)
end

local function OnDeploy(inst, pt, deployer, rot)
    local plant = SpawnPrefab("plant_normal_ground")
    plant.components.crop:StartGrowing(inst.components.plantable.product, inst.components.plantable.growtime)
    plant.Transform:SetPosition(pt.x, 0, pt.z)
    plant.SoundEmitter:PlaySound("dontstarve/wilson/plant_seeds")
    inst:Remove()
end

local function sweetpotato_seeds()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst)

	inst.AnimState:SetBank("kyno_crop_seeds")
	inst.AnimState:SetBuild("kyno_crop_seeds")
	inst.AnimState:PlayAnimation("sweetpotato")
	inst.AnimState:SetRayTestOnBB(true)
	
	inst:AddTag("deployedplant")
	inst:AddTag("deployedfarmplant")
	inst:AddTag("oceanfishing_lure")
	inst:AddTag("cookable")

	inst.overridedeployplacername = "seeds_placer"
	inst._custom_candeploy_fn = can_plant_seed

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("inspectable")
	inst:AddComponent("bait")
	inst:AddComponent("tradable")

	inst:AddComponent("edible")
	inst.components.edible.healthvalue = 0
	inst.components.edible.hungervalue = 4.6875
	inst.components.edible.sanityvalue = 0
	inst.components.edible.foodtype = FOODTYPE.SEEDS
	
	inst:AddComponent("perishable")
	inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERSLOW)
	inst.components.perishable:StartPerishing()
	inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/kyno_foodimages.xml"
	inst.components.inventoryitem.imagename = "kyno_sweetpotato_seeds"
	
	inst:AddComponent("cookable")
	inst.components.cookable.product = "seeds_cooked"
	
	inst:AddComponent("plantable")
	inst.components.plantable.growtime = TUNING.SEEDS_GROW_TIME
	inst.components.plantable.product = "kyno_sweetpotato"
	
	inst:AddComponent("deployable")
	inst.components.deployable:SetDeployMode(DEPLOYMODE.CUSTOM)
	inst.components.deployable.restrictedtag = "plantkin"
	inst.components.deployable.ondeploy = OnDeploy

	inst:AddComponent("oceanfishingtackle")
	inst.components.oceanfishingtackle:SetupLure({build = "oceanfishing_lure_mis", symbol = "hook_seeds", single_use = true, lure_data = TUNING.OCEANFISHING_LURE.SEED})

	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	MakeHauntableLaunchAndPerish(inst)

	return inst
end

return Prefab("kyno_sweetpotato_ground", fn, assets, prefabs),
Prefab("kyno_sweetpotato", sweetpotato, assets, prefabs),
Prefab("kyno_sweetpotato_cooked", sweetpotato_cooked, assets, prefabs),
Prefab("kyno_sweetpotato_seeds", sweetpotato_seeds, assets, prefabs)