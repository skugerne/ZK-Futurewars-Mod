return { 
	cloakskirm = {
		unitname               = "cloakskirm",
		name                   = "Waylayer",
		description            = "Ambusher Skirmish Bot (Laser-Guided)",
		acceleration           = 0.9,
		brakeRate              = 2.25,
		buildCostMetal         = 130,
		buildPic               = "cloakskirm.png",
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		canCloak			   = true,
		category               = "LAND",
		collisionVolumeOffsets = "0 -5 0",
		collisionVolumeScales  = "26 39 26",
		collisionVolumeType    = "CylY",
		corpse                 = "DEAD",
		stealth = true,
		activateWhenBuilt = true,
		initCloaked = true,
		cloakCostMoving = 1,
		cloakCost    = 0.1,

		customParams           = {
			modelradius    = "18",
			midposoffset   = "0 6 0",
			--reload_move_penalty = 0.8,
			cus_noflashlight = 1,
			cloakregen		 = 12,
			recloaktime = 210,
			cloaker_bestowed_radius = 75,
			cloakstrikeduration = 90,
			cloakstrikespeed = 1.25,
			cloakstrikeslow = 1.0,
		},
		explodeAs              = "BIG_UNITEX",
		footprintX             = 2,
		footprintZ             = 2,
		iconType               = "kbotskirm",
		leaveTracks            = true,
		maxDamage              = 360,
		maxSlope               = 36,
		maxVelocity            = 2.4,
		maxReverseVelocity     = 2.4,
		maxWaterDepth          = 20,
		minCloakDistance       = 200,
		
		movementClass          = "KBOT2",
		noChaseCategory        = "TERRAFORM FIXEDWING SUB",
		objectName             = "sphererock.s3o",
		script                 = "cloakskirm.lua",
		selfDestructAs         = "BIG_UNITEX",

		sfxtypes               = {
			explosiongenerators = {
				"custom:rockomuzzle",
			},
		},
		sightDistance          = 530,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 0.8,
		trackType              = "ComTrack",
		trackWidth             = 16,
		turnRate               = 2040,
		upright                = true,
		weapons                = {
			{
				def                = "BOT_ROCKET",
				onlyTargetCategory = "LOWFLYING LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
			{
				def                = "TRACKER",
				onlyTargetCategory = "LOWFLYING LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
		},
		weaponDefs             = {
			BOT_ROCKET = {
				name                    = "Laser guided Rocket",
				areaOfEffect            = 48,
				burnblow                = true,
				cegTag                  = "missiletrailyellow",
				craterBoost             = 0,
				craterMult              = 0,
				customParams        = {
					burst = Shared.BURST_RELIABLE,

					light_camera_height = 1600,
					light_color = "0.90 0.65 0.30",
					light_radius = 250,
					reload_move_mod_time = 3,
					tracker = 1,
					cloakstrike = 1.33,
				},
				damage                  = {
					default = 300.01,
				},

				fireStarter             = 70,
				flightTime              = 8,
				impulseBoost            = 0,
				impulseFactor           = 0.2,
				interceptedByShieldType = 2,
				model                   = "wep_m_ajax.s3o",
				noSelfDamage            = true,
				tolerance               = 65536/4,
				turnRate                = 9000,
				range                   = 470,
				reloadtime              = 3.5,
				smokeTrail              = false,
				soundHit                = "weapon/missile/sabot_hit",
				soundHitVolume          = 8,
				soundStart              = "weapon/missile/sabot_fire",
				soundStartVolume        = 7,
				startVelocity           = 100,
				tracks                  = true,
				turret                  = true,
				weaponAcceleration      = 500,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 600,
			},
			TRACKER = {
				name                    = "Missile Target Painter",
				areaOfEffect            = 20,
				beamTime                = 0.01,
				coreThickness           = 0.5,
				craterBoost             = 0,
				craterMult              = 0,
				cylinderTargeting       = 1,
				customParams            = {
					targeter = 1,
					--burst = Shared.BURST_RELIABLE,
					stats_hide_damage = 1, -- continuous laser
					stats_hide_reload = 1,
					light_color = "1.25 0 0",
					light_radius = 30,
					combatrange = 460,
				},
				damage                  = {
					default = 0.00,
				},
				--explosionGenerator      = "custom:flash1red",
				fireTolerance           = 8192, -- 45 degrees
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 0,
				largeBeamLaser          = true,
				laserFlareSize          = 2,
				leadLimit               = 18,
				minIntensity            = 0.01,
				noSelfDamage            = true,
				range                   = 475,
				reloadtime              = 1/30,
				sweepfire               = false,
				rgbColor                = "0.3 0 0",
				rgbColor2			    = "0.5 0 0",
				soundStart              = "weapon/laser/tracker",
				--soundHit		= "trackercompleted.wav"
				soundStartVolume        = 15,
				texture1                = "tracker",
				--texture2              = "flare",
				texture3                = "flare",
				texture4                = "smallflare",
				thickness               = 2,
				tolerance               = 65536/4,
				turret                  = true,
				weaponType              = "BeamLaser",
				weaponVelocity          = 1500,
			},
		},
		featureDefs            = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 2,
				footprintZ       = 2,
				object           = "rocko_d.dae",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = "debris2x2c.s3o",
			},

		},
	} 
}
