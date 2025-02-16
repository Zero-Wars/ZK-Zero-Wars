function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local factory        = deepcopy(UnitDefs["factorygunship"])
factory.name         = [[Gunship Plant T1]]
factory.buildoptions = {
    [[builder]],
    [[gunshipraid]],
    [[gunshipaa]],
    [[dronelight]],
}
return { factorygunship1 = factory }


