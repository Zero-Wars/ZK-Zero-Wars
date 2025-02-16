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

local factory        = deepcopy(UnitDefs["factoryplane"])
factory.name         = [[Airplane Plant T1]]
factory.buildoptions = {
    [[builder]],
    [[planefighter]],
    [[planescout]],
    [[planelightscout]],
}
return { factoryplane1 = factory }


