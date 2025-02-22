local name = "commweapon_leolaser_shotgun_disrupt"
local weaponDef = {
	name                    = [[LEO Disruptor Shotgun]],
	areaOfEffect            = 15,
	avoidFeature            = false,
	coreThickness           = 0.4,
	craterBoost             = 0,
	craterMult              = 0,
	beamTTL                 = 6,
	beamDecay               = 0.9,
	sprayangle				= 1100,
	accuracy				= 800,
	edgeeffectiveness		= 0.4,
	minIntensity            = 0.1,
	projectiles				= 22,
	customParams        = {
		light_camera_height = 1800,
		light_radius = 90,
		light_color = [[0.3 0 0.4]],
		timeslow_damagefactor = [[3]],
	},

	damage                  = {
		default = 10.1*0.8,
	},

	duration                = 0.1,
	explosionGenerator      = [[custom:flash2purple]],
	fireStarter             = 50,
	impulseBoost            = 0,
	impulseFactor           = 0,
	interceptedByShieldType = 1,
	range                   = 280,
	reloadtime              = 0.3,
	rgbColor                = [[0.3 0 0.4]],
	--soundHit                = [[weapon/laser/emerald_hit]],
	soundStart              = [[weapon/laser/leo_shotgun_disrupt]],
	soundStartVolume        = 0.7,
	soundTrigger            = false,
	thickness               = 1.1,
	tolerance               = 10000,
	turret                  = true,
	largebeamlaser			= true,
	texture1                = [[lightlaser]],
	texture2                = [[flare]],
	texture3                = [[flare]],
	beamDecay 				= 0.8,
	beamBurst				= true,
	beamTTL					= 13,
	weaponType              = [[BeamLaser]],
	--weaponVelocity          = 880,
}

return name, weaponDef
