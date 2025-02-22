return { 
	chicken_dodo = {
		unitname              = "chicken_dodo",
		name                  = "Dodo",
		description           = "Sacrifical Phermone Bomb",
		acceleration          = 18,
		activateWhenBuilt     = true,
		brakeRate             = 1.23,
		buildCostEnergy       = 0,
		buildCostMetal        = 0,
		builder               = false,
		buildPic              = "chicken_dodo.png",
		buildTime             = 170,
		canGuard              = true,
		canMove               = true,
		canPatrol             = true,
		category              = "LAND SINK",
		customParams          = {
			
		},
		explodeAs             = "DODO_DEATH",
		footprintX            = 2,
		footprintZ            = 2,
		iconType              = "chickendodo",
		idleAutoHeal          = 20,
		idleTime              = 300,
		kamikaze              = true,
		kamikazeDistance      = 30,
		leaveTracks           = true,
		maxDamage             = 400,
		maxSlope              = 36,
		maxVelocity           = 9,
		movementClass         = "AKBOT2",
		movestate             = 2,
		noAutoFire            = false,
		noChaseCategory       = "SHIP FIXEDWING SATELLITE GUNSHIP",
		objectName            = "chicken_dodo.s3o",
		onoffable             = true,
		power                 = 170,
		reclaimable           = false,
		selfDestructAs        = "DODO_DEATH",
		script                = "chicken_dodo.lua",
		selfDestructCountdown = 0,
		sfxtypes              = {
			explosiongenerators = {
				"custom:blood_spray",
				"custom:green_goo",
				"custom:dirt",
			},
		},
		sightDistance         = 500,
		sonarDistance         = 500,
		trackOffset           = 1,
		trackStrength         = 6,
		trackStretch          = 1,
		trackType             = "ChickenTrack",
		trackWidth            = 10,
		turnRate              = 2400,
		upright               = false,
		waterline             = 4,
		weaponDefs = {
			DODO_DEATH = {
				name = "Phermone Explosion",
				areaofeffect = 300,
				craterboost =  1,
				cratermult = 3.5,
				edgeeffectiveness = 0.4,
				impulseboost = 0,
				impulsefactor = 0.4,
				explosionspeed = 500, -- try to make it instant.
				explosiongenerator = "custom:large_green_goo",
				soundhit = "weapon/chickens/dodo_die",
				explosionScar = false,
				damage = {
					default = 500,
					chicken = 50,
				},
				customParams = {
					blastwave_size = 180,
					blastwave_impulse = 0,
					blastwave_speed = 0,
					blastwave_life = 140,
					blastwave_lossfactor = 0.85,
					blastwave_damage = 100,
					blastwave_spawnceg = "dodo_goo_splashes",
					blastwave_spawncegfreq = 25,
					blastwave_healing = 200,
					blastwave_onlyfriendly = 1,
					blastwave_nofriendly = 1,
					blastwave_luaspawnonly = 1,
				},
			},
		},
	} 
}
