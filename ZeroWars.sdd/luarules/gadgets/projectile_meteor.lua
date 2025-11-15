if not gadgetHandler:IsSyncedCode() then return end

function gadget:GetInfo()
    return {
        name = "Nudge Projectile into space",
        desc = "Use to spawn meteor from space",
        author = "macrodemon",
        date = "2025",
        license = "GNU GPL, v2 or later",
        layer = 0,
        enabled = true,
        handler = true
    }
end

local meteorWeaponDefsAccuracy = {}
local meteorWeaponDefs = {}
for wdid = 1, #WeaponDefs do
	local wd = WeaponDefs[wdid]
	if wd.customParams and wd.customParams.meteor then
		meteorWeaponDefs[wdid] = true
        meteorWeaponDefsAccuracy[wdid] = wd.customParams.accuracy or 0
	end
end

local function isMeteor(weaponDefID)
    if meteorWeaponDefs[weaponDefID] then
        return true
    end
    return false
end

local function randomOffset(accuracy)
    return (math.random() * (accuracy * 2)) - accuracy
end 

function gadget:ProjectileCreated(projectileID , proOwnerID, weaponDefID)
    if not projectileID then
		return
	end   
    --Spring.Echo(projectileID)
    if not isMeteor(weaponDefID) then
	  return
	end
    --Spring.Echo("meteor")
    
    local x,y,z = Spring.GetProjectilePosition(projectileID)
    local targetType, targetData  = Spring.GetProjectileTarget(projectileID) 
    local tx,ty,tz
    Spring.Echo("target", targetType, targetData)
    if targetType == 103 then
        tx,ty,tz = targetData[1],targetData[2],targetData[3]
    end
    if targetType == 117 then
        tx,ty,tz = Spring.GetUnitPosition(targetData)
    end
    Spring.Echo("Accuracy", meteorWeaponDefsAccuracy[weaponDefID])
    Spring.Echo("B:",tx,ty,tz)
    tx = tx + randomOffset(meteorWeaponDefsAccuracy[weaponDefID])
    tz = tz + randomOffset(meteorWeaponDefsAccuracy[weaponDefID])
    Spring.Echo("A:",tx,ty,tz)
    Spring.SetProjectilePosition(projectileID, x, y + 500, z)
    Spring.SetProjectileTarget (projectileID,  tx,ty,tz)
    
end

function gadget:Initialize()
    for weaponDefID, _ in pairs(meteorWeaponDefs) do
		Script.SetWatchWeapon(weaponDefID, true)
	end
    --Spring.Echo(meteorWeaponDefs)
end

function gadget:GameOver()
    gadgetHandler:RemoveGadget(self)
end
