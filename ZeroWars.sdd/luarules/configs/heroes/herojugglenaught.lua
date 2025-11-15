VFS.Include("LuaRules/Configs/customcmds.h.lua")

local herojugglenaught = {
    onReady = {
        {"Scale", 0 },
        {"WeaponRange", 2, -1},
        {"WeaponRange", 3, -1},
        {"WeaponRange", 4, -1},
        {"WeaponRange", 5, -1},
        {"EnableCommand", CMD.MANUALFIRE, false},
        {"EnableCommand", CMD_JUMP, true}
    },
    onLevelUp = {
        {"HP", 0.25},
        {"Scale", 0.05}
    },
    path1 = {
        {
            name = "Focused Laser",
            desc = "+30% Damage",
            params = {
                {"WeaponDamage", 8, 0.30},
            },
            requiredUpgrades = 0
        },
        {
            name = "Targeting Cicuits",
            desc = "+50% range \n Required Upgrades 1",
            params = {
                {"WeaponRange", 1, 0.5},
                {"WeaponRange", 8, 0.5},
            },
            requiredUpgrades = 1
        },
        {
            name = "Adv Beamlaser",
            desc = "+50% Damage",
            params = {
                { "WeaponDamage", 8, 0.5 },
            },
            requiredUpgrades = 2
        },
        {
            name = "Power Crystal",
            desc = "+50% Damage",
            params = {
                { "WeaponDamage", 8, 0.5 },
            },
            requiredUpgrades = 3
        }
    },
    path2 = {
        {
            name = "Attraction Gravity",
            desc = "Unlock Attraction \n Required Upgrades 0",
            params = {
                {"WeaponRange", 2, 1},
                {"WeaponRange", 3, 1}
            },
            requiredUpgrades = 0
        },
        {
            name = "Pull Gravity Reload",
            desc = "+30% Fire Rate",
            params = {
                {"WeaponReload", 2, 0.30},
                {"WeaponReload", 3, 0.30}
            },
            requiredUpgrades = 1
        },
        {
            name = "Pull Gravity Range",
            desc = "25% Increased range",
            params = {               
                {"WeaponRange", 2, 0.25},
                {"WeaponRange", 3, 0.25}
            },
            requiredUpgrades = 2
        },
        {
            name = "Pull Gravity Overdrive",
            desc = "Inreases pull power",
            params = {
                {"WeaponBurst", 2, 40},
                {"WeaponBurst", 3, 40},
            },
            requiredUpgrades = 3
        }
    },
    path3 = {
        {
            name = "Repulse Gravity",
            desc = "Unlock Attraction \n Required Upgrades 0",
            params = {
                {"WeaponRange", 4, 1},
                {"WeaponRange", 5, 1}
            },
            requiredUpgrades = 0
        },
        {
            name = "Push Gravity Reload",
            desc = "+30% Fire Rate",
            params = {
                {"WeaponReload", 4, 0.30},
                {"WeaponReload", 5, 0.30}
            },
            requiredUpgrades = 1
        },
        {
            name = "Push Gravity Range",
            desc = "25% Increased range",
            params = {               
                {"WeaponRange", 4, 0.25},
                {"WeaponRange", 5, 0.25}
            },
            requiredUpgrades = 2
        },
        {
            name = "Push Gravity Overdrive",
            desc = "Inreases pull power",
            params = {
                {"WeaponBurst", 4, 40},
                {"WeaponBurst", 5, 40},
            },
            requiredUpgrades = 3
        }
    },
    path4 = {
        {
            name = "Meteor",
            desc = "Unlock Comet Catcher \n Required Upgrades 6",
            params = {
                {"EnableCommand", CMD.MANUALFIRE, true}
            },
            requiredUpgrades = 6
        },
        {
            name = "More rocks",
            desc = "+3 Rocks \n Required Upgrades 8",
            params = {
                {"WeaponBurst", 7, 3}
            },
            requiredUpgrades = 8
        },
        {
            name = "A few more rocks",
            desc = "+3 Rocks \n Required Upgrades 10",
            params = {
                {"WeaponBurst", 7, 3}
            },
            requiredUpgrades = 10
        },
        {
            name = "All the rocks",
            desc = "+3 Rocks \n Required Upgrades 12",
            params = {
                {"WeaponBurst", 7, 3}
            },
            requiredUpgrades = 12
        }
    }
}
return "herojugglenaught", herojugglenaught
