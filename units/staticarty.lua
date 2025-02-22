return { 
	staticarty = {
		unitname                      = "staticarty",
		name                          = "Garmr Cannon",
		description                   = "Tactical Artillery Battery",
		activateWhenBuilt             = true,
		buildCostMetal                = 6000,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 8,
		buildingGroundDecalSizeY      = 8,
		buildingGroundDecalType       = "staticarty_aoplane.dds",
		buildPic                      = "staticarty.png",
		category                      = "SINK",
		corpse                        = "DEAD",
		customParams                  = {
			keeptooltip        = "any string I want",
			neededlink         = 150,
			pylonrange         = 200,
			aimposoffset       = "0 26 0",
			midposoffset       = "0 10 0",
			bait_level_default = 1,
			superweapon        = 1,
			superweaponcoef    = 0.2,
			superweapondenom   = 2.5,
		},
		explodeAs                     = "LARGE_BUILDINGEX",
		footprintX                    = 5,
		footprintZ                    = 5,
		highTrajectory                = 2,
		iconType                      = "staticarty",
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		maxDamage                     = 9000,
		maxSlope                      = 18,
		maxWaterDepth                 = 0,
		noAutoFire                    = false,
		noChaseCategory               = "FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER",
		objectName                    = "corbhmth.s3o",
		onoffable                     = false,
		script                        = "staticarty.lua",
		selfDestructAs                = "LARGE_BUILDINGEX",
		sfxtypes               = {
			explosiongenerators = {
				"custom:LARGE_MUZZLE_FLASH_FX",
			},
		},
		sightDistance                 = 660,
		useBuildingGroundDecal        = true,
		yardMap                       = "ooooo ooooo ooooo ooooo ooooo",
		weapons                       = {
			{
				def                = "PLASMA",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
			{
				def                = "PLASMALOWTRAJ",
				onlyTargetCategory = "SWIM LAND SINK TURRET FLOAT SHIP HOVER",
			},
		},
		weaponDefs                    = {
			PLASMA = {
				name                    = "Tempest Shells",
				areaOfEffect            = 192,
				avoidFeature            = false,
				avoidGround             = true,
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					light_color = "1.4 0.8 0.3",
					reveal_unit = 14,
					script_reload = "7.5",
					script_burst = "3",
					numprojectiles1 = 10, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticarty_secondary",
					--spreadradius1 = 4, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 800, -- at what distance should we spawn the projectile(s)? REQUIRED.
					vradius1 = "-3,-6,-3,3,-3,3", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					useheight = 1,
					minvelocity = -9.5,
					stats_damage =  200*10,
					groundimpact = 1,
					shield_damage = 200*10,
				},
				damage                  = {
					default = 200*10,
				},
				heightboostfactor       = 1, -- no auto calculated range bonus. Uses OD to gain range instead!
				edgeEffectiveness       = 0.1,
				explosionGenerator      = "custom:100rlexplode",
				fireStarter             = 120,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				mygravity               = 0.6,
				range                   = 2000,
				reloadtime              = 10/30,
				soundHit                = "weapon/cannon/frag_impact",
				soundStart              = "weapon/cannon/behe_fire_new",
				sprayangle              = 400,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 733, -- 1100 for 3000
			},
			PLASMALOWTRAJ = {
				name                    = "FENIX Shells",
				areaOfEffect            = 192,
				avoidFeature            = false,
				avoidGround             = true,
				craterBoost             = 0,
				craterMult              = 0,
				customParams            = {
					light_color = "1.4 0.8 0.3",
					reveal_unit = 14,
					script_reload = "7.5",
					script_burst = "3",
					numprojectiles1 = 10, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticarty_fragment_dummy",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-3.5,2,-3.5,3.5,4,3.5",
					noairburst = "March of progress", -- if true, this projectile will skip all airburst checks
					onexplode = "The unity prevails", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					shield_damage = (2000) + 1000,
				},
				damage                  = {
					default = 2000.1,
				},
				edgeEffectiveness       = 0.1,
				explosionGenerator      = "custom:nce_128_lp",
				heightboostfactor       = 1, -- no auto calculated range bonus. Uses OD to gain range instead!
				fireStarter             = 120,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				mygravity               = 0.20,
				range                   = 2000,
				reloadtime              = 10/30,
				soundHit                = "weapon/cannon/frag_impact",
				soundStart              = "weapon/cannon/behe_fire_new",
				sprayangle              = 400,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 414, -- 620 for 3000
			},
			SECONDARY = {
				name                    = "Aerial Clusterbomb",
				areaOfEffect            = 128,
				craterBoost             = 0,
				craterMult              = 1.3,
				projectiles             = 8,
				sprayAngle				= 1080,
				explosionScar           = false,
				customParams            = {
					force_ignore_ground = "1",
					light_color = "1.5 1.13 0.6",
					light_radius = 100,
					numprojectiles1 = 3, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticarty_fragment_dummy",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 0,
					timeoutspawn = 0,
					vradius1 = "-3.5,2,-3.5,3.5,4,3.5",
					noairburst = "March of progress", -- if true, this projectile will skip all airburst checks
					onexplode = "The unity prevails", -- if true, this projectile will cluster when it explodes
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					shield_damage = (100*3) + 200,
				},
				damage                  = {
					default = 200.5,
				},
				edgeEffectiveness       = 0.3,
				explosionGenerator      = "custom:nce_128",
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 800,
				reloadtime              = 5.5,
				mygravity               = 0.75,
				soundHit                = "weapon/clusters/cluster_grenade_hit2",
				soundHitVolume			= 3,
				soundStart              = "weapon/cannon/behe_fire2",
				size                    = 5, -- maybe find a good size that is bigger than default
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 900,
				mygravity               = 0.1,
			},
			FRAGMENT_DUMMY = {
				name                    = "Fragment",
				accuracy                = 400,
				areaOfEffect            = 162,
				avoidFeature            = false,
				explosionScar           = false,
				craterBoost             = 0,
				craterMult              = 0,
				--cegTag                  = "flamer",
				customParams              = {
					numprojectiles1 = 1, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "staticarty_tritary",
					--spreadradius = 8, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "derpderpderpderpderpderpderpderpderpderp", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					keepmomentum1 = 1,
					timeoutspawn = 0,
					noairburst = "Burning time", -- if true, this projectile will skip all airburst checks
					spawndist = 69420, -- at what distance should we spawn the projectile(s)? REQUIRED.
					timeddeploy = 3,
					--lups_heat_fx = "firewalker",
					light_camera_height = 2500,
					light_color = "0.25 0.13 0.05",
					light_radius = 500,
					shield_damage = 100,
					bogus = 1,
				},
				damage                  = {
					default = 0,
				},
				--explosionGenerator      = "custom:napalm_firewalker_small",
				firestarter             = 180,
				impulseBoost            = 0,
				impulseFactor           = 0.4,
				interceptedByShieldType = 1,
				myGravity               = 0.33,
				noExplode               = true,
				projectiles             = 10,
				range                   = 900,
				reloadtime              = 12,
				rgbColor                = "1 0.95 0.4",
				size 					= 6,
				thickness               = 6,
				soundHit                = "nosound",
				soundStart              = "weapon/cannon/frag_impact",
				soundStartVolume        = 3.2,
				sprayangle              = 2500,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 320,
			},
			TRITARY = {
				name                    = "Flechette",
				areaOfEffect            = 216,
				explosionScar           = false,
				customParams            = {
					force_ignore_ground = "1",
					light_color = "1.5 1.13 0.6",
					light_radius = 100,
				},
				damage                  = {
					default = 100.5,
				},
				edgeEffectiveness       = 0.3,
				explosionGenerator      = "custom:ROACHPLOSION",
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				range                   = 800,
				reloadtime              = 5.5,
				soundHit                = "weapon/cannon/cannon_hit3",
				soundHitVolume			= 3,
				soundStart              = "weapon/cannon/behe_fire2",
				size                    = 6, -- maybe find a good size that is bigger than default
				thickness               = 6,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 900,
				mygravity               = 0.1,
			},
		},
		featureDefs                   = {
			DEAD = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 5,
				footprintZ       = 5,
				object           = "corbhmth_dead.s3o",
			},
			HEAP = {
				blocking         = false,
				footprintX       = 5,
				footprintZ       = 5,
				object           = "debris4x4b.s3o",
			},
		},
	} 
}
