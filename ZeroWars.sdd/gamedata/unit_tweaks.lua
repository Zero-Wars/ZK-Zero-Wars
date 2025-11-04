local unit_tweaks = {
    chicken_drone_starter = {
        customParams = {
            statsname = nil,
            com_drone = true,
            morphto_1 = [[heroknight]],
            morphcost_1 = 1,
            morphtime_1 = 1,
            morphto_2 = [[heroduck]],
            morphcost_2 = 1,
            morphtime_2 = 1,
            morphto_3 = [[heropuppy]],
            morphcost_3 = 1,
            morphtime_3 = 1,
            morphto_4 = [[herosniper]],
            morphcost_4 = 1,
            morphtime_4 = 1,
            morphto_5 = [[herodante]],
            morphcost_5 = 1,
            morphtime_5 = 1,
            morphto_6 = [[heromoderator]],
            morphcost_6 = 1,
            morphtime_6 = 1,
            morphto_7 = [[heroflea]],
            morphcost_7 = 1,
            morphtime_7 = 1
        }
    },
    factorycloak = {
        buildoptions = {
            [[builder]], [[cloakraid]], [[cloakheavyraid]], [[cloakskirm]],
            [[cloakriot]], [[cloakassault]], [[cloakarty]], [[cloaksnipe]],
            [[cloakaa]], [[cloakbomb]]
    },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[cloakraid]],
            pos_weird_raider = [[cloakheavyraid]],
            pos_skirmisher = [[cloakskirm]],
            pos_riot = [[cloakriot]],
            pos_anti_air = [[cloakaa]],
            pos_assault = [[cloakassault]],
            pos_artillery = [[cloakarty]],
            pos_heavy_something = [[cloaksnipe]],
            pos_special = [[cloakbomb]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactorycloak.lua]],
        yardMap = ""
    },
    factoryshield = {
        buildoptions = { [[builder]] },
        customParams = { pos_constructor = [[builder]], invulnerable = true },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryshield.lua]],
        yardMap = ""
    },
    factoryveh = {
        buildoptions = { [[builder]] },
        customParams = { pos_constructor = [[builder]], invulnerable = true },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryveh.lua]],
        yardMap = ""
    },
    factorytank = {
        buildoptions = {
            [[builder]], [[tankraid]], [[tankheavyraid]], [[tankriot]],
            [[tankarty]], [[tankheavyarty]], [[tankaa]], [[tankassault]],
            [[tankheavyassault]]
        },
        customParams = {

        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactorytank.lua]],
        yardMap = ""
    },
    factoryhover = {
        buildoptions = {
            [[builder]], [[hoverraid]], [[hoverheavyraid]],
            [[hoverdepthcharge]], [[hoverriot]], [[hoverskirm]], [[hoverarty]],
            [[hoveraa]], [[hoverassault]], [[hoverminer]], [[hovershotgun]]
        },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[hoverraid]],
            pos_weird_raider = [[hoverheavyraid]],
            pos_skirmisher = [[hoverskirm]],
            pos_riot = [[hoverriot]],
            pos_anti_air = [[hoveraa]],
            pos_assault = [[hoverassault]],
            pos_artillery = [[hoverarty]],
            pos_heavy_something = [[hovershotgun]],
            pos_special = [[hoverdepthcharge]],
            pos_utility = [[hoverminer]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryhover.lua]],
        yardMap = ""
    },
    factoryamph = {
        buildoptions = {
            [[builder]], [[amphraid]], [[amphimpulse]], [[amphfloater]],
            [[amphriot]], [[amphsupport]], [[amphassault]], [[cgrebe]], [[amphaa]], [[amphbomb]]
        },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[amphraid]],
            pos_weird_raider = [[amphimpulse]],
            pos_skirmisher = [[amphfloater]],
            pos_riot = [[amphriot]],
            pos_anti_air = [[amphaa]],
            pos_assault = [[cgrebe]],
            pos_heavy_something = [[amphassault]],
            pos_special = [[amphbomb]],
            pos_utility = [[amphsupport]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryamph.lua]],
        yardMap = ""
    },
    factoryjump = {
        buildoptions = {
            [[builder]], [[jumpscout]], [[jumpraid]], [[jumpskirm]],
            [[jumpblackhole]], [[jumpaa]], [[jumpassault]], [[jumpbomb]],
            [[jumpsumo]], [[jumparty]]
        },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[jumpraid]],
            pos_weird_raider = [[jumpscout]],
            pos_skirmisher = [[jumpskirm]],
            pos_riot = [[jumpblackhole]],
            pos_anti_air = [[jumpaa]],
            pos_assault = [[jumpassault]],
            pos_artillery = [[jumparty]],
            pos_heavy_something = [[jumpsumo]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryjump.lua]],
        yardMap = ""
    },
    factoryspider = {
        buildoptions = {
            [[builder]],
            [[spiderscout]],
            [[spiderassault]],
            [[spideremp]],
            [[spiderriot]],
            [[spiderskirm]],
            [[spidercrabe]],
            [[spideraa]],
            [[spiderantiheavy]],
            [[cspideranarchid]],
            invulnerable = true
        },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[spiderscout]],
            pos_weird_raider = [[spideremp]],
            pos_skirmisher = [[spiderskirm]],
            pos_riot = [[spiderriot]],
            pos_anti_air = [[spideraa]],
            pos_assault = [[spiderassault]],
            pos_artillery = [[cspideranarchid]],
            pos_heavy_something = [[spidercrabe]],
            pos_special = [[spiderantiheavy]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryspider.lua]],
        yardMap = ""
    },
    factorygunship = {
        buildoptions = {
            [[builder]], [[gunshipbomb]], [[gunshipemp]], [[gunshipraid]],
            [[gunshipskirm]], [[gunshipheavyskirm]], [[gunshipassault]],
            [[gunshipkrow]], [[gunshipaa]], [[dronelight]]
        },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[gunshipraid]],
            pos_weird_raider = [[gunshipemp]],
            pos_skirmisher = [[gunshipskirm]],
            pos_riot = [[gunshipbomb]],
            pos_anti_air = [[gunshipaa]],
            pos_assault = [[gunshipassault]],
            pos_artillery = [[gunshipheavyskirm]],
            pos_heavy_something = [[gunshipkrow]],
            pos_special = [[dronelight]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactorygunship.lua]],
        yardMap = ""
    },
    factoryplane = {
        buildoptions = {
            [[builder]], [[planefighter]], [[planeheavyfighter]],
            [[bomberprec]], [[bomberriot]], [[bomberdisarm]], [[bomberheavy]],
            [[planescout]], [[planelightscout]], [[bomberstrike]]
    },
        customParams = {
            pos_constructor = [[builder]],
            pos_raider = [[planefighter]],
            pos_weird_raider = [[planeheavyfighter]],
            pos_skirmisher = [[bomberstrike]],
            pos_riot = [[bomberriot]],
            pos_assault = [[bomberprec]],
            pos_artillery = [[planelightscout]],
            pos_heavy_something = [[bomberheavy]],
            pos_special = [[bomberdisarm]],
            pos_utility = [[planescout]],
            invulnerable = true
        },
        metalCost = 800,
        buildDistance = 800,
        script = [[cfactoryplane.lua]],
        yardMap = ""
    },
    chicken = {
        metalCost = 60,
        energyCost = 60,
        buildtime = 60,
        footprintX = 2,
        footprintZ = 2
    },
    chicken_leaper = {
        metalCost = 440,
        energyCost = 440,
        buildtime = 440,
        maxVelocity = 3.2,
        weaponDefs = { WEAPON = { range = 65, impulseBoost = 1250 } }
    },
    chickens = { metalCost = 90, energyCost = 90, buildtime = 90 },
    chickenwurm = { metalCost = 400, energyCost = 400, buildtime = 400 },
    chicken_dodo = {
        metalCost = 120,
        energyCost = 120,
        buildtime = 120,
        footprintX = 3,
        footprintZ = 3
    },
    chickena = { metalCost = 440, energyCost = 440, buildtime = 440 },
    chickenc = { metalCost = 800, energyCost = 800, buildtime = 800 },
    chicken_roc = { metalCost = 1600, energyCost = 1600, buildtime = 1600 },
    chickenf = {
        metalCost = 300,
        energyCost = 300,
        buildtime = 300,
        footprintX = 3,
        footprintZ = 3
    },
    chicken_blimpy = {
        metalCost = 640,
        energyCost = 640,
        buildtime = 640,
        turnRate = 3000,
        turnRadius = 450,
        weaponDefs = { DODOBOMB = { reloadtime = 4 } },
        footprintX = 3,
        footprintZ = 3
    },
    chicken_spidermonkey = {
        metalCost = 640,
        energyCost = 640,
        buildtime = 320
    },
    chicken_sporeshooter = {
        metalCost = 820,
        energyCost = 820,
        buildtime = 820
    },
    chickenr = {
        metalCost = 180,
        energyCost = 180,
        buildtime = 180,
        noChaseCategory = [[TERRAFORM FIXEDWING SUB]]
    },
    chicken_shield = {
        metalCost = 600,
        energyCost = 600,
        buildtime = 600,
        weaponDefs = {
            SHIELD = {
                shieldPower = 2000,
                shieldPowerRegen = 30,
                shieldRadius = 100,
                shieldStartingPower = 2000
            }
        }
    },
    chicken_tiamat = {
        metalCost = 1800,
        energyCost = 2000,
        buildtime = 2000,
        weaponDefs = {
            SHIELD = {
                shieldPower = 2000,
                shieldPowerRegen = 30,
                shieldRadius = 100,
                shieldStartingPower = 0
            }
        }
    },
    chickenblobber = {
        metalCost = 2600,
        energyCost = 2800,
        buildtime = 2800,
        noChaseCategory = [[TERRAFORM FIXEDWING SUB]]
    },
    chicken_dragon = {
        metalCost = 7000,
        energyCost = 7000,
        buildtime = 7000
    },
    cloakbomb = {
        canCloak = true,
        initCloaked = true,
        cloakCost = 0,
        cloakCostMoving = 0,
        minCloakDistance = 125,
        kamikaze = true,
        kamikazeDistance = 85,
        weaponDefs = { cloakbomb_DEATH = { areaOfEffect = 600 } }
    },
    amphbomb = { weaponDefs = { AMPHBOMB_DEATH = { areaOfEffect = 300 } } },
    jumpbomb = {
        canCloak = true,
        initCloaked = true,
        cloakCost = 0,
        cloakCostMoving = 0,
        minCloakDistance = 125,
        weaponDefs = { jumpbomb_DEATH = { areaOfEffect = 180 } }
    },
    shieldbomb = { weaponDefs = { shieldbomb_DEATH = { areaOfEffect = 300 } } },
    dronecarry = { metalCost = 80, maxDamage = 80, reclaimable = true },
    dronelight = { metalCost = 60, maxDamage = 150, reclaimable = true },
    droneheavyslow = { metalCost = 120, maxDamage = 300, reclaimable = true },
    hoverassault = { maxDamage = 1000, maxVelocity = 2.8 },
    striderdetriment = {
        selfDestructAs = [[ATOMIC_BLAST]],
        collisionVolumeOffsets = [[0 10 0]],
        collisionVolumeScales = [[92 120 92]],
        customparams = { modelradius = [[40]] }
    },
    staticrearm = {
        script = [[cstaticrearm.lua]],
        workerTime   = 30,
        customparams = {
            invulnerable = true
        },
        weapons      = {

            {
                def                = [[DISRUPTOR]],
                badTargetCategory  = [[FIXEDWING]],
                onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
            },

        },
        weaponDefs = {
            DISRUPTOR = {
                name                    = [[Disruptor Pulse Beam]],
                areaOfEffect            = 48,
                beamdecay               = 0.9,
                beamTime                = 1 / 30,
                beamttl                 = 30,
                coreThickness           = 0.3,
                craterBoost             = 0,
                craterMult              = 0,

                customParams            = {
                    timeslow_damage = [[2500]],
                },

                damage                  = {
                    default = 1400,
                },

                explosionGenerator      = [[custom:flash2purple]],
                fireStarter             = 30,
                impactOnly              = true,
                impulseBoost            = 0,
                impulseFactor           = 0.4,
                interceptedByShieldType = 1,
                largeBeamLaser          = true,
                laserFlareSize          = 4.33,
                minIntensity            = 1,
                noSelfDamage            = true,
                range                   = 750,
                reloadtime              = 4,
                rgbColor                = [[0.3 0 0.4]],
                soundStart              = [[weapon/laser/heavy_laser5]],
                soundStartVolume        = 5,
                soundTrigger            = true,
                sweepfire               = false,
                texture1                = [[largelaser]],
                texture2                = [[flare]],
                texture3                = [[flare]],
                texture4                = [[smallflare]],
                thickness               = 16,
                tolerance               = 18000,
                turret                  = true,
                weaponType              = [[BeamLaser]],
                weaponVelocity          = 500,
            },

        },
    },
    nebula = {
        name        = [[Nebula]],
        description = [[Atmospheric Mothership]],
        explodeAs   = [[LARGE_BUILDINGEX]],
        health      = 11000,
        metalCost   = 8000,
        weaponDefs  = {
            SHIELD = {
                name                = [[Energy Shield]],
                shieldStartingPower = 3600
            },
        },
    },
    shieldshield = {
        name        = [[Aspis]],
        description = [[Area Shield Walker]],
        weaponDefs  = {
            COR_SHIELD_SMALL = {
                name                = [[Energy Shield]],
                shieldStartingPower = 3600
            },
        },
    },
    spiderassault = { footprintX = 3, footprintZ = 3 },
    striderarty = {
        name                   = [[Merlin]],
        description            = [[Heavy Saturation Artillery Strider]],
        metalCost   = 4000,
    }, 
    tankheavyarty = { weaponDefs = { PLASMA = { range = 700, reloadtime = 0.111 } } },
}
if Game.modShortName == "ZKFW" then -- future wars uses a different knight and adds a few units. Reflect that here.
	unit_tweaks["heroknight"] = {
		collisionVolumeOffsets = "0 0 0",
		collisionVolumeScales  = "36 60 36",
		collisionVolumeType    = "cylY",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "45 45 45",
		selectionVolumeType    = "ellipsoid",
		script = "fw_heroknight.lua",
	}
	unit_tweaks["cstriderfunnelweb"] = {
		buildoptions        = {
     			[[staticmissilesilo]],
      			[[striderantiheavy]],
        		[[striderscorpion]],
        		[[striderdante]],
        		[[striderarty]],
        		[[cstriderfunnelweb]],
        		[[striderbantha]],
        		[[striderdetriment]],
        		[[nebula]],
			    [[striderrazorback]],
			    [[striderraider]],
    		}
	}
end

return unit_tweaks
