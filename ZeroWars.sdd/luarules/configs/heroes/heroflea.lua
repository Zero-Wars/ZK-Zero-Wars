VFS.Include("LuaRules/Configs/customcmds.h.lua")

local heroflea = {
    onReady = {
        { "Scale",         -0.05 },
        { "EnableCommand", CMD.MANUALFIRE, false }
    },
    onLevelUp = {
        { "HP",    0.25 },
        { "Scale", 0.1 }
    },
    path1 = {
        {
            name = "Adv Beamlaser",
            desc = "+50% Damage\n Required Upgrades 0",
            params = {
                { "WeaponDamage", 1, 0.5 },
                { "WeaponDamage", 2, 0.5 }
            },
            requiredUpgrades = 0
        },
        {
            name = "Energy Crystal",
            desc = "+50% Damage\n Required Upgrades 1",
            params = {
                { "WeaponDamage", 1, 0.5 },
                { "WeaponDamage", 2, 0.5 }
            },
            requiredUpgrades = 1
        },
        {
            name = "Beam Bundling",
            desc = "+50% Damage\n Required Upgrades 4",
            params = {
                { "WeaponDamage", 1, 0.5 },
                { "WeaponDamage", 2, 0.5 }
            },
            requiredUpgrades = 4
        },
        {
            name = "Power Crystal",
            desc = "+50% Damage\n Required Upgrades 6",
            params = {
                { "WeaponDamage", 1, 0.5 },
                { "WeaponDamage", 2, 0.5 }
            },
            requiredUpgrades = 6
        }
    },
    path2 = {
        {
            name = "WeaponRange",
            desc = "+10% Weapon Range \n Required Upgrades 0",
            params = {
                { "WeaponRange", 1, 0.2 }
            },
            requiredUpgrades = 0
        },
        {
            name = "WeaponRange",
            desc = "+30% Weapon Range \n Required Upgrades 1",
            params = {
                { "WeaponRange", 1, 0.1 }
            },
            requiredUpgrades = 1
        },
        {
            name = "WeaponRange",
            desc = "+30% Weapon Range \n Required Upgrades 4",
            params = {
                { "WeaponRange", 1, 0.1 }
            },
            requiredUpgrades = 4
        },
        {
            name = "WeaponRange",
            desc = "+30% Weapon Range \n Required Upgrades 6",
            params = {
                { "WeaponRange", 1, 0.1 }
            },
            requiredUpgrades = 6
        }
    },
    path3 = {
        {
            name = "Light Armour",
            desc = "+200 HP \n Required Upgrades 0",
            params = {
                { "Armour", "200" }
            },
            requiredUpgrades = 0
        },
        {
            name = "Ultra-Light Armour",
            desc = "+10% Movement Speed\n Required Upgrades 1",
            params = {
                { "MoveSpeed", "0.08" }
            },
            requiredUpgrades = 1
        },
        {
            name = "Ultra Armour",
            desc = "+500 HP \n Required Upgrades 4",
            params = {
                {
                    "Armour",
                    "500"
                }
            },
            requiredUpgrades = 4
        },
        {
            name = "Ultimate Ultra Armour",
            desc = "+500 HP and +10% Movement Speed \n Required Upgrades 6",
            params = {
                { "Armour",    "500" },
                { "MoveSpeed", "0.08" }
            },
            requiredUpgrades = 6
        }
    },
    path4 = {
        {
            name = "Disarm Blaster",
            desc = "Unlock Disarm Blaster\n Required Upgrades 6",
            params = {
                {"EnableCommand", CMD.MANUALFIRE, true}
            },
            requiredUpgrades = 6
        },
        {
            name = "Disarm Blaster AOE",
            desc = "+75% AOE \n Required Upgrades 8",
            params = {
                {"WeaponAOE", 3, 0.75}
            },
            requiredUpgrades = 8
        },
        {
            name = "Disarm Blaster AOE",
            desc = "+75% AOE \n Required Upgrades 10",
            params = {
                {"WeaponAOE", 3, 0.75}
            },
            requiredUpgrades = 10
        },
        {
            name = "Disarm Blaster AOE",
            desc = "+75% AOE \n Required Upgrades 12",
            params = {
                {"WeaponAOE", 3, 0.75}
            },
            requiredUpgrades = 12
        }
    }
}

return "heroflea", heroflea
