return {
  heroflea = {
    name                   = [[4HND Scout Flea]],
    description            = [[A flea so sharp-eyed he can spot a dog scratching from orbit. His ability will disarm his enemies, literally and emotionally.]],
    acceleration           = 2.1,
    brakeRate              = 12.6,
    buildPic               = [[spiderscout.png]],
    canGuard               = true,
    canMove                = true,
    canPatrol              = true,
    canManualFire          = true,

    category               = [[LAND SMALL TOOFAST]],
    cloakCost              = 0,
    collisionVolumeOffsets = [[0 0 0]],
    collisionVolumeScales  = [[20 20 20]],
    collisionVolumeType    = [[ellipsoid]],
    selectionVolumeOffsets = [[0 0 0]],
    selectionVolumeScales  = [[42 42 42]],
    selectionVolumeType    = [[ellipsoid]],
    corpse                 = [[DEAD]],

    customParams           = {
      hero            = true,
      modelradius     = [[10]],
      idle_cloak      = 1,
      selection_scale = 1, -- Maybe change later
      aim_lookahead   = 80,
    },

    explodeAs              = [[TINY_BUILDINGEX]],
    footprintX             = 2,
    footprintZ             = 2,
    iconType               = [[commander1]],
    idleAutoHeal           = 250,
    idleTime               = 200,
    leaveTracks            = true,
    maxDamage              = 450,
    maxSlope               = 72,
    maxWaterDepth          = 15,
    metalCost = 1500,
    minCloakDistance       = 130,
    movementClass          = [[TKBOT2]],
    moveState              = 0,
    noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
    objectName             = [[arm_flea.s3o]],
    pushResistant          = 0,
    script                 = [[spiderscout.lua]],
    selfDestructAs         = [[TINY_BUILDINGEX]],

    sfxtypes               = {

      explosiongenerators = {
        [[custom:digdig]],
      },

    },

    sightDistance          = 700,
    speed                  = 144,
    trackOffset            = 0,
    trackStrength          = 8,
    trackStretch           = 1,
    trackType              = [[ChickenTrackPointy]],
    trackWidth             = 18,
    turnRate               = 2520,

    weapons                = {

      {
        def                = [[LASER]],
        onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
        maxAngleDif        = 360,
      },
      {
        def                = [[AALASER]],
        onlyTargetCategory = [[FIXEDWING GUNSHIP]],
      },
      {
        def = [[SHOCKRIFLE]],
        onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]]
      }
    },

    weaponDefs             = {

      LASER = {
        name                    = [[Micro Laser]],
        areaOfEffect            = 8,
        beamTime                = 0.1,
        burstrate               = 0.2,
        coreThickness           = 0.5,
        craterBoost             = 0,
        craterMult              = 0,

        customParams            = {
          light_color = [[0.8 0.8 0]],
          light_radius = 50,
        },

        damage                  = {
          default = 200,
          planes  = 480
        },

        explosionGenerator      = [[custom:beamweapon_hit_yellow_tiny]],
        fireStarter             = 50,
        impactOnly              = true,
        impulseBoost            = 0,
        impulseFactor           = 0.4,
        interceptedByShieldType = 1,
        laserFlareSize          = 3.22,
        leadLimit               = 0,
        minIntensity            = 1,
        noSelfDamage            = true,
        range                   = 250,
        reloadtime              = 0.233,
        rgbColor                = [[1 1 0]],
        soundStart              = [[weapon/laser/small_laser_fire]],
        soundTrigger            = true,
        thickness               = 2.14476105895272,
        tolerance               = 10000,
        turret                  = true,
        weaponType              = [[BeamLaser]],
        weaponVelocity          = 600,
      },
      AALASER = {
        name                    = [[Anti-Air Laser Battery]],
        areaOfEffect            = 12,
        beamDecay               = 0.736,
        beamTime                = 1/30,
        beamttl                 = 15,
        canattackground         = false,
        coreThickness           = 0.5,
        craterBoost             = 0,
        craterMult              = 0,
        cylinderTargeting       = 1,

        customParams            = {
          isaa = [[1]],
          light_color = [[0.2 1.2 1.2]],
          light_radius = 120,
        },

        damage                  = {
          default = 32,
          planes  = 32,
        },

        explosionGenerator      = [[custom:flash_teal7]],
        fireStarter             = 100,
        impactOnly              = true,
        impulseFactor           = 0,
        interceptedByShieldType = 1,
        laserFlareSize          = 3.25,
        minIntensity            = 1,
        noSelfDamage            = true,
        range                   = 850,
        reloadtime              = 0.1,
        rgbColor                = [[0 1 1]],
        soundStart              = [[weapon/laser/rapid_laser]],
        soundStartVolume        = 4,
        thickness               = 2.165,
        tolerance               = 8192,
        turret                  = true,
        weaponType              = [[BeamLaser]],
        weaponVelocity          = 2200,
      },
      SHOCKRIFLE = {
        name = [[Pulsed Particle Projector]],
        avoidGround = false,
        avoidFriendly = false,
        avoidFeature = false,
        avoidNeutral = false,
        commandFire = true,
        areaOfEffect = 128,
        craterBoost = 0,
        craterMult = 0,
        customParams = {
          burst = Shared.BURST_RELIABLE,
          light_radius = 0,
          restrict_in_widgets = 1,
          disarmDamageMult = 1,
          disarmDamageOnly = 1,
          disarmTimer      = 12,
        },
        
        damage = { default = 16000 },
        paralyzer = false,
        paralyzeTime = 5,
        explosionGenerator = [[custom:EMPMISSILE_EXPLOSION]],
        fireTolerance = 512, -- 2.8 degrees
        impulseBoost = 0,
        impulseFactor = 0,
        interceptedByShieldType = 1,
        noSelfDamage = true,
        range = 580,
        reloadtime = 16,
        rgbColor = [[0.1 0.8 0.1]],
        size = 5,
        sizeDecay = 0,
        soundHit = [[weapon/missile/emp_missile_hit]],
        soundStart = [[weapon/gauss_fire]],
        turret = true,
        weaponType = [[LightningCannon]],
        weaponVelocity = 850
      }
    },

    featureDefs            = {

      DEAD = {
        blocking    = false,
        featureDead = [[HEAP]],
        footprintX  = 1,
        footprintZ  = 1,
        object      = [[flea_d.dae]],
      },

      HEAP = {
        blocking   = false,
        footprintX = 1,
        footprintZ = 1,
        object     = [[debris1x1b.s3o]],
      },

    },

  }
}
