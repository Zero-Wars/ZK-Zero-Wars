function gadget:GetInfo()
    return {
        name = "Invulnerability",
        desc = "Prevents unit/building from recieving damage",
        author = "macrodemon",
        date = "2024",
        license = "GNU GPL, v2 or later",
        layer = 0,
        enabled = true,
        handler = true
    }
end

if not gadgetHandler:IsSyncedCode() then
    return false
end

local function isInvulnerable(unitDefID)
    return (UnitDefs[unitDefID].customParams.invulnerable)
end


function gadget:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, attackerID)
    if isInvulnerable(unitDefID) and not paralyzer then
        return 0, 0
    end
end

function gadget:Initialize()
end

function gadget:GameOver()
    gadgetHandler:RemoveGadget(self)
end
