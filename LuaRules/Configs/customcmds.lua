--------------------------------------------------------------------------------
--
--  Proposed Command ID Ranges:
--
--    all negative:  Engine (build commands)
--       0 -   999:  Engine
--    1000 -  9999:  Group AI
--   10000 - 19999:  LuaUI
--   20000 - 29999:  LuaCob
--   30000 - 39999:  LuaRules
--

-- if you add a command, please order it by ID!
local cmds = {
	--RETREAT = 10000,
	RETREAT_ZONE = 10001,
	RESETFIRE = 10003,
	RESETMOVE = 10004,
	BUILDPREV = 10005,
	RADIALBUILDMENU = 10006,
	SET_AI_START = 10007,
	BUILD = 10010,
	NEWTON_FIREZONE = 10283,
	STOP_NEWTON_FIREZONE = 10284,
	SET_FERRY = 11000,
	SUBMUNITION_TARGET = 11321,
	UPGRADE_UNIT = 11432,
	CHEAT_GIVE = 13337,
	FACTORY_GUARD = 13921,
	AREA_GUARD = 13922,

	-- ORBIT_DRAW is an evil on the order of CMD.SET_WANTED_MAX_SPEED.
	-- It is required because ORBIT needs two parameters but this
	-- causes it to not draw in the command queue.
	-- See https://springrts.com/mantis/view.php?id=4931
	ORBIT = 13923,
	ORBIT_DRAW = 13924,

	GLOBAL_BUILD = 13925, -- global build command state toggle command
	GBCANCEL = 13926, -- global build command area cancel cmd
	STOP_PRODUCTION = 13954,
	SELECTION_RANK = 13987,
	FORMATION_RANK = 13988,
	SELECT_MISSILES = 14001,
	BUILD_PLATE = 14002,

	AREA_MEX = 30100,
	AREA_TERRA_MEX = 30101,
	STEALTH = 31100,
	CLOAK_SHIELD = 31101,
	RAW_MOVE = 31109, --cmd_raw_move.lua
	RAW_BUILD = 31110, --cmd_raw_move.lua -- unregistered raw move
	EMBARK = 31200, --unit_transport_ai_button.lua
	DISEMBARK = 31201, --unit_transport_ai_button.lua
	TRANSPORTTO = 31202, --unit_transport_ai_button.lua
	EXTENDED_LOAD = 31203, --unit_transport_pickup_floating_amphib.lua
	EXTENDED_UNLOAD = 31204, --unit_transport_pickup_floating_amphib.lua
	LOADUNITS_SELECTED = 31205,
	AUTO_CALL_TRANSPORT = 31206, --unit_transport_ai_button.lua
	MORPH_UPGRADE_INTERNAL = 31207,
	UPGRADE_STOP = 31208,
	MORPH = 31210, -- up to 32209
	MORPH_STOP = 32210, -- up to 33209
	REARM = 33410, -- bomber control
	FIND_PAD = 33411, -- bomber control
	UNIT_FLOAT_STATE = 33412,
	EXCLUDE_PAD = 33413,
	PRIORITY = 34220,
	MISC_PRIORITY = 34221,
	RETREAT = 34223,
	RETREATSHIELD = 34224,
	UNIT_BOMBER_DIVE_STATE = 34281, -- bomber dive
	AP_FLY_STATE = 34569, -- unit_air_plants
	AP_AUTOREPAIRLEVEL = 34570, -- unit_air_plants
	UNIT_SET_TARGET = 34923, -- unit_target_on_the_move
	UNIT_CANCEL_TARGET = 34924,
	UNIT_SET_TARGET_CIRCLE = 34925,
	ONECLICK_WEAPON = 35000,
	ANTINUKEZONE = 35130, -- ceasefire
	PLACE_BEACON = 35170,
	WAIT_AT_BEACON = 35171,
	ABANDON_PW = 35200,
	RECALL_DRONES = 35300,
	TOGGLE_DRONES = 35301,
	GREYGOO = 35600,
	GOO_GATHER = 35646,
	PUSH_PULL = 35666, -- weapon_impulse
	WANT_ONOFF = 35667,
	UNIT_KILL_SUBORDINATES = 35821, -- unit_capture
	DISABLE_ATTACK = 35822, -- unit_launcher
	UNIT_AI = 36214,
	FIRE_AT_SHIELD = 36215,
	FIRE_TOWARDS_ENEMY = 362516,
	WANT_CLOAK = 37382,
	PREVENT_OVERKILL = 38291,
	PREVENT_BAIT = 38293,
	TRANSFER_UNIT = 38292,
	DONT_FIRE_AT_RADAR = 38372, -- fire at radar toggle gadget
	JUMP = 38521,
	TIMEWARP = 38522,
	TURN = 38530,
	WANTED_SPEED = 38825,
	SWEEPFIRE = 38886, -- cmd_sweepfire gadget
	SWEEPFIRE_CANCEL = 38887,
	SWEEPFIRE_MINES = 38888,
	FIRECYCLE = 38889, -- cmd_firecycle gadget
	OVERRECLAIM = 38950,
	AIR_STRAFE = 39381,
	AUTOJUMP = 39382, -- Tactical AI / Jump Fall Avoidance
	ARMORSTATE = 39383, -- Bastion / Azimuth command.
	IMMEDIATETAKEOFF = 39384, -- Airpad abort.
	-- terraform
	RAMP = 39734,
	LEVEL = 39736,
	RAISE = 39737,
	SMOOTH = 39738,
	RESTORE = 39739,
	BUMPY = 39740,
	
	TERRAFORM_INTERNAL = 39801,
}
-- not included here, just listed
--[[
PURCHASE = 32601	-- planetwars, range up to 32601 + #purchases
MORPH_STOP = 32210	-- range up to 32210 + #morphs
MORPH = 31210		-- ditto
]]--

-- deprecated
--[[
PLANTBOMB =     	32523
AUTOREPAIR =    	33250 	-- up to 33250 + 3
AUTORECLAIM =   	33251
AUTOASSIST  =   	33252
AUTOATTACK  =   	33253
PRIORITY=			34220
CobButton =         	34520 	-- up to 32520 + different cob buttons
SCRAMBLE =      	35128
WRECK =         	36734
RESTOREBOMB = 		39735
]]--
return cmds
