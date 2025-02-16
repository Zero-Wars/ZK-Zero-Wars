VFS.Include("LuaRules/Configs/customcmds.h.lua")

local herosniper = {
    onReady = {
        {"Scale", -0.05},
        {"EnableCommand", CMD.MANUALFIRE, false}
    },
    onLevelUp = {
        {"HP", 0.25},
        {"Scale", 0.05}
    },
    path1 = {
        {
            name = "Higher Calibre",
            desc = "+25% Damage \n Required Upgrades 0",
            params = {
                {"WeaponDamage", 1, 0.25}
            },
            requiredUpgrades = 0
        },
        {
            name = "Shrapnel",
            desc = "+25% AOE \n Required Upgrades 1",
            params = {
                {"WeaponAOE", 1, 0.25}
            },
            requiredUpgrades = 1
        },
        {
            name = "Improved Percing",
            desc = "+25% Damage \n Required Upgrades 4",
            params = {
                {"WeaponDamage", 1, 0.25}
            },
            requiredUpgrades = 4
        },
        {
            name = "Improved Piercing",
            desc = "+25% Damage \n Required Upgrades 6",
            params = {
                {"WeaponDamage", 1, 0.25}
            },
            requiredUpgrades = 6
        }
    },
    path2 = {
        {
            name = "Extended Mag",
            desc = "+20% Fire Rate \n Required Upgrades 0",
            params = {
                {"WeaponReload", 1, 0.2}
            },
            requiredUpgrades = 0
        },
        {
            name = "Improved Firerate",
            desc = "+20% Fire Rate \n Required Upgrades 1",
            params = {
                {"WeaponReload", 1, 0.2}
            },
            requiredUpgrades = 1
        },
        {
            name = "Semi-Automatic",
            desc = "+20% Fire Rate \n Required Upgrades 4",
            params = {
                {"WeaponReload", 1, 0.2}
            },
            requiredUpgrades = 4
        },
        {
            name = "Belt-Fed",
            desc = "+20% Fire Rate \n Required Upgrades 6",
            params = {
                {"WeaponReload", 1, 0.2}
            },
            requiredUpgrades = 6
        }
    },
    path3 = {
        {
            name = "Light Armour",
            desc = "+500 HP \n Required Upgrades 0",
            params = {
                {"Armour", "500"}
            },
            requiredUpgrades = 0
        },
        {
            name = "Medium Armour",
            desc = "+500 HP \n Required Upgrades 1",
            params = {
                {"Armour", "500"}
            },
            requiredUpgrades = 1
        },
        {
            name = "Heavy Armour",
            desc = "+500 HP \n Required Upgrades 4",
            params = {
                { "Armour", "500"}
            },
            requiredUpgrades = 4
        },
        {
            name = "Ultimate Armour",
            desc = "+500 HP \n Required Upgrades 6",
            params = {
                {
                    "Armour",
                    "500"
                }
            },
            requiredUpgrades = 6
        }
    },
    path4 = {
        {
            name = "Higher Calibre Rifle",
            desc = "Higher Calibre Rifle \n Required Upgrades 6",
            params = {
                {"EnableCommand", CMD.MANUALFIRE, true}
            },
            requiredUpgrades = 6
        },
        {
            name = "Higher Calibre",
            desc = "+50% Damage \n +25% AOE \n Required Upgrades 8",
            params = {
                {"WeaponDamage", 2, 0.50},
                {"WeaponAOE", 2, 0.25}
            },
            requiredUpgrades = 8
        },
        {
            name = "H.E.A.T Ammo",
            desc = "+50% Damage \n +25% AOE \n Required Upgrades 10",
            params = {
                {"WeaponDamage", 2, 0.50},
                {"WeaponAOE", 2, 0.25}
            },
            requiredUpgrades = 10
        },
        {
            name = "Max Calibre",
            desc = "+50% WeaponDamage \n +25% AOE \n Required Upgrades 12",
            params = {
                {"WeaponDamage", 2, 0.50},
                {"WeaponAOE", 2, 0.25}
            },
            requiredUpgrades = 12
        }
    }
}
return "herosniper", herosniper
