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

local factory        = deepcopy(UnitDefs["factoryveh"])
factory.name         = [[Rover Assembly T2]]
factory.buildoptions = {
    [[builder]],
    [[vehscout]],
    [[vehraid]],
    [[vehsupport]],
    [[vehriot]],
    [[vehassault]],
    [[vehcapture]],
    [[veharty]],
    [[vehheavyarty]],
    [[vehaa]],
}
return { factoryveh2 = factory }


