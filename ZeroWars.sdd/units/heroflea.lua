return {
  heroflea = {
    name                   = [[Hero Flea]],
    description            = [[Ultralight Scout Spider Flea]],
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
    health                 = 300,
    iconType               = [[commander1]],
    idleAutoHeal           = 250,
    idleTime               = 200,
    leaveTracks            = true,
    maxDamage              = 300,
    maxSlope               = 72,
    maxWaterDepth          = 15,
    metalCost              = 25,
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
      },
      {
        def                = [[AALASER]],
        badTargetCategory  = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
        onlyTargetCategory = [[FIXEDWING FLOAT GUNSHIP]],
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
        name                    = [[AA Micro Laser]],
        areaOfEffect            = 8,
        beamTime                = 0.1,
        burstrate               = 0.2,
        coreThickness           = 0.5,
        craterBoost             = 0,
        craterMult              = 0,

        customParams            = {
          light_color = [[0 0.8 0]],
          light_radius = 50,
        },

        damage                  = {
          default = 0,
          planes  = 200
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
        range                   = 500,
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
