local name = "commweapon_leolaser"
local weaponDef = {
	name                    = [[LEO Laser Cannon]],
	areaOfEffect            = 15,
	avoidFeature            = false,
	coreThickness           = 0.4,
	craterBoost             = 0,
	craterMult              = 0,
	beamTTL                 = 12,
	beamDecay               = 0.85,
	burst					= 14,
	burstRate				= 1/30,
	sprayangle				= 200,
	edgeeffectiveness		= 0.4,
	minIntensity            = 0.5,
	customParams        = {
		light_camera_height = 1800,
		light_radius = 80,
		light_color = [[0.043 0.7 0.274]],
	},

	damage                  = {
		default = 15.1,
	},

	duration                = 0.1,
	explosionGenerator      = [[custom:beamlaser_hit_emerald]],
	fireStarter             = 50,
	impulseBoost            = 0,
	impulseFactor           = 0,
	interceptedByShieldType = 1,
	range                   = 280,
	reloadtime              = 0.6,
	rgbColor                = [[0.043 0.7 0.274]],
	soundHit                = [[weapon/laser/emerald_hit]],
	soundStart              = [[weapon/laser/laser_chaingun_fw]],
	soundStartVolume        = 0.7,
	soundTrigger            = true,
	thickness               = 2.25,
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
