-- Used by singularities.

return {
	["black_hole_200"] = {
		usedefaultexplosions = false,
		sparks = {
			air                = true,
			ground             = true,
			water              = true,
			underwater         = true,
			class              = [[CSimpleParticleSystem]],
			properties = {
				airdrag            = 1,
				colormap           = [[0 .8 1 .1   0 0 0 0]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 120,
				emitvector         = [[0,1,0]],
				gravity            = [[0, 0, 0]],
				numparticles       = 24,
				particlelife       = 120,
				particlelifespread = 0,
				particlesize       = 100, -- this is the value for creating new ones. It would be nice to autogenerate this from a template.
				particlesizespread = 0,
				particlespeed      = 0.15,
				particlespeedspread = 0.05,
				pos                = [[0, 0, 0]],
				sizegrowth         = -1,
				sizemod            = 0.96,
				texture            = [[chargeparticles]],
			},
		},
	},
	["gravitywell_200"] = {
		usedefaultexplosions = false,
		sparks = {
			air                = true,
			ground             = true,
			water              = true,
			underwater         = true,
			class              = [[CSimpleParticleSystem]],
			properties = {
				airdrag            = 1,
				colormap           = [[0 .8 1 .1   0 0 0 0]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 120,
				emitvector         = [[0,1,0]],
				gravity            = [[0, 0, 0]],
				numparticles       = 24,
				particlelife       = 120,
				particlelifespread = 0,
				particlesize       = 0, -- this is the value for creating new ones. It would be nice to autogenerate this from a template.
				particlesizespread = 0,
				particlespeed      = 0.15,
				particlespeedspread = 0.05,
				pos                = [[0, 0, 0]],
				sizegrowth         = 2,
				sizemod            = 0.96,
				texture            = [[chargeparticles]],
			},
		},
	},
	["black_hole_400"] = {
		usedefaultexplosions = false,
		sparks = {
			air                = true,
			ground             = true,
			water              = true,
			underwater         = true,
			class              = [[CSimpleParticleSystem]],
			properties = {
				airdrag            = 1,
				colormap           = [[0 .8 1 .1   0 0 0 0]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 120,
				emitvector         = [[0,1,0]],
				gravity            = [[0, 0, 0]],
				numparticles       = 24,
				particlelife       = 120,
				particlelifespread = 0,
				particlesize       = 200, -- this is the value for creating new ones. It would be nice to autogenerate this from a template.
				particlesizespread = 0,
				particlespeed      = 0.15,
				particlespeedspread = 0.05,
				pos                = [[0, 0, 0]],
				sizegrowth         = -1,
				sizemod            = 0.96,
				texture            = [[chargeparticles]],
			},
		},
	},
	["black_hole_300"] = {
		usedefaultexplosions = false,
		sparks = {
			air                = true,
			ground             = true,
			water              = true,
			underwater         = true,
			class              = [[CSimpleParticleSystem]],
			properties = {
				airdrag            = 1,
				colormap           = [[0 .8 1 .1   0 0 0 0]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 120,
				emitvector         = [[0,1,0]],
				gravity            = [[0, 0, 0]],
				numparticles       = 24,
				particlelife       = 120,
				particlelifespread = 0,
				particlesize       = 300, -- this is the value for creating new ones. It would be nice to autogenerate this from a template.
				particlesizespread = 0,
				particlespeed      = 0.15,
				particlespeedspread = 0.05,
				pos                = [[0, 0, 0]],
				sizegrowth         = -2.5,
				sizemod            = 0.96,
				texture            = [[chargeparticles]],
			},
		},
	},
	["black_hole_1280"] = {
		usedefaultexplosions = false,
		sparks = {
			air                = true,
			ground             = true,
			water              = true,
			underwater         = true,
			class              = [[CSimpleParticleSystem]],
			properties = {
				airdrag            = 1,
				colormap           = [[0 .8 1 .1   0 0 0 0]],
				directional        = true,
				emitrot            = 0,
				emitrotspread      = 120,
				emitvector         = [[0,1,0]],
				gravity            = [[0, 0, 0]],
				numparticles       = 24,
				particlelife       = 120,
				particlelifespread = 0,
				particlesize       = 1280, -- this is the value for creating new ones. It would be nice to autogenerate this from a template.
				particlesizespread = 0,
				particlespeed      = 0.15,
				particlespeedspread = 0.05,
				pos                = [[0, 0, 0]],
				sizegrowth         = -5,
				sizemod            = 0.96,
				texture            = [[chargeparticles]],
			},
		},
	},
}
