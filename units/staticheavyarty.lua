return { 
	staticheavyarty = {
		unitname                      = "staticheavyarty",
		name                          = "Liberator",
		description                   = "Canister Barrage Artillery",
		buildCostMetal                = 10500,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 6,
		buildingGroundDecalSizeY      = 6,
		buildingGroundDecalType       = "staticheavyarty_aoplane.dds",
		buildPic                      = "staticheavyarty.png",
		category                      = "SINK",
		collisionVolumeOffsets        = "0 0 -7",
		collisionVolumeScales         = "65 194 65",
		collisionVolumeType           = "cylY",
		corpse                        = "DEAD",
		customParams                  = {
			aimposoffset = "0 50 -7",
			modelradius    = "35",
			selectionscalemult = 1,
    		superweapon    = 1,
    		neededlink     = 250,
   			pylonrange     = 150,
			outline_x = 270,
			outline_y = 270,
			outline_yoff = 90,
			bait_level_default = 4,
		},
		explodeAs                     = "ATOMIC_BLAST",
		footprintX                    = 4,
		footprintZ                    = 4,
		iconType                      = "lrpc",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		levelGround                   = false,
		losEmitHeight                 = 90,
		maxDamage                     = 10500,
		maxSlope                      = 18,
		maxWaterDepth                 = 0,
		minCloakDistance              = 150,
		noChaseCategory               = "FIXEDWING LAND SHIP SWIM GUNSHIP SUB HOVER",
		objectName                    = "armbrtha.s3o",
		script                        = "staticheavyarty.lua",
		selfDestructAs                = "ATOMIC_BLAST",
		sfxtypes                      = {
			explosiongenerators = {
				"custom:staticheavyarty_SHOCKWAVE",
				"custom:staticheavyarty_SMOKE",
				"custom:staticheavyarty_FLARE",
			},
		},
		sightDistance                 = 660,
		useBuildingGroundDecal        = true,
		yardMap                       = "oooo oooo oooo oooo",
		weapons                       = {
			{
				def                = "PLASMA",
				badTargetCategory  = "LAND SHIP HOVER SWIM",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
		},
		weaponDefs                    = {
			secondary = {
				name                    = "Cluster Bomb",
				accuracy                = 350,
				alphaDecay              = 0.7,
				areaOfEffect            = 0,
				burnblow                = true,
				craterBoost             = 0.15,
				craterMult              = 0.3,
				customParams        = {
					lups_noshockwave = "1",
					light_camera_height = 1600,
					light_color = "0.8 0.76 0.38",
					light_radius = 110,
					numprojectiles1 = 4, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticheavyarty_tritary",
					--spreadradius1 = 4, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 600, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius1 = "-8,-2,-8,8,3,8", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					useheight = 1, -- check the distance between ground and projectile? OPTIONAL.
				},
				damage                  = {
					default = 290.01*4,
				},
				edgeEffectiveness       = 0.5,
				explosionGenerator      = "custom:tremor",
				firestarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 275,
				reloadtime              = 0.5,
				rgbColor                = "1 0.95 0.4",
				separation              = 1.5,
				soundHit                = "weapon/clusters/cluster_light",
				soundStart              = "weapon/heavy_emg",
				stages                  = 10,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 550,
			},
			
			tritary = {
				name                    = "Heavy Fragment",
				alphaDecay              = 0.7,
				areaOfEffect            = 192,
				craterBoost             = 0.15,
				craterMult              = 0.3,
				customParams        = {
					lups_noshockwave = "1",
					light_camera_height = 1600,
					light_color = "0.8 0.76 0.38",
					light_radius = 110,
				},
				damage                  = {
					default = 290.01,
				},
				explosionScar           = false,
				edgeEffectiveness       = 0.5,
				explosionGenerator      = "custom:spidercrabe_EXPLOSION",
				firestarter             = 70,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				intensity               = 0.7,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 275,
				reloadtime              = 0.5,
				rgbColor                = "1 0.95 0.4",
				separation              = 1.5,
				soundHit                = "weapon/cannon/rhino4",
				soundStart              = "weapon/heavy_emg",
				stages                  = 10,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 550,
			},
	
			PLASMA = {
				name                    = "Cluster Artillery Shell",
				highTrajectory		    = 1,
				areaOfEffect            = 0,
				avoidFeature            = false,
				avoidGround             = false,
				cegTag                  = "vulcanfx",
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					restrict_in_widgets = 1,
					numprojectiles1 = 8, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticheavyarty_secondary",
					--spreadradius1 = 4, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 2200, -- at what distance should we spawn the projectile(s)? REQUIRED.
					vradius1 = "-5,-5,-5,5,5,5", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					useheight = 1, -- check the distance between ground and projectile? OPTIONAL.
					light_camera_height = 1500,
					light_radius = 120,
					script_reload = "14", -- NB: Superweapon field in CP makes this handled by FireControl.
					light_color = "2.4 1.5 0.6",
					reveal_unit = 26,
				},
				damage                  = {
					default = 9280,
				},
				explosionGenerator      = "custom:MEDMISSILE_EXPLOSION",
				fireTolerance           = 1820, -- 10 degrees
				impulseBoost            = 0.5,
				impulseFactor           = 0.2,
				interceptedByShieldType = 1,
				mygravity				= 0.25,
				sprayAngle				= 120,
				noSelfDamage            = true,
				range                   = 6000,
				reloadtime              = 1/30, -- force render our reload progress?
				soundHit                = "weapon/clusters/cluster_heavy",
				soundStart              = "weapon/cannon/large_cannon_fire",
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 1350,
			},
		},
		featureDefs                   = {
			DEAD  = {
				blocking         = true,
				collisionVolumeOffsets        = "0 0 -7",
				collisionVolumeScales         = "70 194 70",
				collisionVolumeType           = "cylY",
				featureDead      = "HEAP",
				footprintX       = 4,
				footprintZ       = 4,
				object           = "armbrtha_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 4,
				footprintZ       = 4,
				object           = "debris4x4c.s3o",
			},
		},
	}
}
