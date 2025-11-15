local spSetUnitPosition = Spring.SetUnitPosition
local spGetUnitPosition = Spring.GetUnitPosition

function gadget:GetInfo()
    return {
        name = "Nudge Unit",
        desc = "Some units block units being built diorectly to the right and below",
        author = "macrodemon",
        date = "2025",
        license = "GNU GPL, v2 or later",
        layer = 0,
        enabled = true,
        handler = true
    }
end

if not gadgetHandler:IsSyncedCode() then
    return false
end

local function getOffest(unitDefID)
    local x = (UnitDefs[unitDefID].customParams.nudgeoncreatex)
    local z = (UnitDefs[unitDefID].customParams.nudgeoncreatez)
    local scale = (UnitDefs[unitDefID].customParams.nudgeoncreatescale)
    --Spring.Echo(unitDefID, x, z, scale)
    if x == nil then
        x = 0
    end
    if z == nil then
        z = 0
    end
    if scale == nil then 
        scale = 1
    end
    return x, 0, z, scale
end


function gadget:UnitCreated(unitID, unitDefID, unitTeam, builderID)
    local x, y, z = spGetUnitPosition(unitID)
    local xo, yo, zo, scale = getOffest(unitDefID)
    --Spring.Echo(unitDefID, xo, zo)
    spSetUnitPosition(unitID, x+xo, y+yo, z+zo)
    --GG.UnitScale(unitID, scale)
end

function gadget:Initialize()
end

function gadget:GameOver()
    gadgetHandler:RemoveGadget(self)
end
