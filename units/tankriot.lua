return { 
	tankriot = {
		unitname            = "tankriot",
		name                = "Cobbler",
		description         = "Heavy Riot Support Tank",
		acceleration        = 0.109,
		brakeRate           = 0.428,
		buildCostMetal      = 500,
		builder             = false,
		buildPic            = "tankriot.png",
		canGuard            = true,
		canMove             = true,
		canPatrol           = true,
		category            = "LAND",
		selectionVolumeOffsets = "0 0 0",
		selectionVolumeScales  = "55 55 55",
		selectionVolumeType    = "ellipsoid",
		corpse              = "DEAD",
		customParams        = {
			cus_noflashlight  = 1,
			selection_scale   = 0.92,
			aim_lookahead     = 160,
			outline_x = 110,
			outline_y = 110,
			outline_yoff = 13.5,
		},
		explodeAs           = "BIG_UNITEX",
		footprintX          = 4,
		footprintZ          = 4,
		iconType            = "tankriot",
		idleAutoHeal        = 5,
		idleTime            = 1800,
		leaveTracks         = true,
		maxDamage           = 1800,
		maxSlope            = 18,
		maxVelocity         = 1.75,
		maxWaterDepth       = 22,
		movementClass       = "TANK4",
		noAutoFire          = false,
		noChaseCategory     = "GUNSHIP FIXEDWING TERRAFORM SATELLITE SUB",
		objectName          = "corbanish.s3o",
		script              = "tankriot.lua",
		selfDestructAs      = "BIG_UNITEX",
		sightDistance       = 400,
		trackOffset         = 8,
		trackStrength       = 10,
		trackStretch        = 1,
		trackType           = "StdTank",
		trackWidth          = 50,
		turninplace         = 0,
		turnRate            = 568,
		weapons             = {
			{
				def                = "TAWF_BANISHER",
				mainDir            = "0 0 1",
				onlyTargetCategory = "LAND SINK TURRET SHIP SWIM FLOAT HOVER",
			},
		},
		weaponDefs          = {
			fragment = {
				name                    = "R-62 Bomblet",
				areaOfEffect            = 144,
				avoidFeature            = true,
				avoidFriendly           = true,
				burnblow                = true,
				craterBoost             = 1,
				craterMult              = 0.5,
				customParams            = {
					isFlak = 3,
					flaktime = 1/30,
					light_camera_height = 1500,
				},
				damage                  = {
					default = 40.1,
				},
				edgeEffectiveness       = 0.75,
				explosionGenerator      = "custom:MEDMISSILE_EXPLOSION",
				impulseBoost            = 30,
				impulseFactor           = 0.6,
				interceptedByShieldType = 1,
				noSelfDamage            = true,
				mygravity               = 0.02,
				soundHit                = "weapon/cannon/generic_cannon",
				soundStart              = "weapon/cannon/outlaw_gun",
				soundStartVolume        = 3,
				turret                  = true,
				weaponType              = "Cannon",
				weaponVelocity          = 1000,
			},
			TAWF_BANISHER = {
				name                    = "R-22 Heavy Canister Missile",
				areaOfEffect            = 160,
				cegTag                  = "BANISHERTRAIL",
				craterBoost             = 1,
				craterMult              = 2,
				customParams            = {
					burst = Shared.BURST_RELIABLE,
					force_ignore_ground = "1",
					script_reload = "4.4",
					script_burst = "4",
					numprojectiles1 = 7, -- how many of the weapondef we spawn. OPTIONAL. Default: 1.
					projectile1 = "tankriot_fragment",
					--spreadradius1 = 4, -- used in clusters. OPTIONAL. Default: 100.
					clustervec1 = "randomxyz", -- accepted values: randomx, randomy, randomz, randomxy, randomxz, randomyz, random. OPTIONAL. default: random.
					use2ddist = 0, -- should we check 2d or 3d distance? OPTIONAL. Default: 0.
					spawndist = 115, -- at what distance should we spawn the projectile(s)? REQUIRED.
					useheight = 1,
					minvelocity = -9.5,
					cruisealt = 200,
					cruisedist = 200,
					cruise_noascension = 1,
					cruiserandomradius = 75,
					cas_nocruisecheck = 1,
					timeoutspawn = 1, -- Can this missile spawn its subprojectiles when it times out? OPTIONAL. Default: 1.
					vradius1 = "-5,-2,-5,5,-1,5", -- velocity that is randomly added. covers range of +-vradius. OPTIONAL. Default: 4.2
					groundimpact = 1, -- check the distance between ground and projectile? OPTIONAL.
					reaim_time = 60, -- Fast update not required (maybe dangerous)
					light_color = "1.4 1 0.7",
					light_radius = 320,
				},
				damage                  = {
					default = 40.1 * 5,
				},
				edgeEffectiveness       = 0.4,
				explosionGenerator      = "custom:xamelimpact",
				fireStarter             = 20,
				flightTime              = 20,
				impulseBoost            = 0,
				impulseFactor           = 0.6,
				interceptedByShieldType = 2,
				model                   = "corbanishrk.s3o",
				noSelfDamage            = true,
				range                   = 600,
				reloadtime              = 0.3,
				smokeTrail              = false,
				soundHit                = "weapon/cannon/outlaw_gun",
				soundStart              = "weapon/missile/banisher_fire",
				startVelocity           = 200,
				tolerance               = 9000,
				tracks                  = true,
				trajectoryHeight        = 1.4,
				turnRate                = 42000,
				turret                  = true,
				weaponAcceleration      = 300,
				weaponType              = "MissileLauncher",
				weaponVelocity          = 1200,
			},
		},
		featureDefs         = {
			DEAD  = {
				blocking         = true,
				featureDead      = "HEAP",
				footprintX       = 3,
				footprintZ       = 3,
				object           = "corbanish_dead.s3o",
			},
			HEAP  = {
				blocking         = false,
				footprintX       = 3,
				footprintZ       = 3,
				object           = "debris3x3a.s3o",
			},
		},
	} 
}
