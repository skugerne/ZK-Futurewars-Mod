include "constants.lua"

local scriptReload = include("scriptReload.lua")

-- Pieces
local base = piece 'base'
local body = piece 'body'
local turret = piece 'turret'
local launcher1 = piece 'launcher1'
local launcher2 = piece 'launcher2'
local firepoint1 = piece 'firepoint1'
local firepoint2 = piece 'firepoint2'
local laser = piece 'laseremit1'

local lastfire = -1
local lasttarget = 0
local currenttarget = 1
local ready = false
local lockprogress = 0
local loaded = 4

local aiming = false
local shot = 0
local gun = {
	[0] = {firepoint = firepoint1, loaded = true},
	[1] = {firepoint = firepoint2, loaded = true},
	[2] = {firepoint = firepoint1, loaded = true},
	[3] = {firepoint = firepoint2, loaded = true},
}

local SIG_AIM = 1
local SIG_SPIN = 2

local RESTORE_DELAY = 2000

local gameSpeed = Game.gameSpeed

local function TracerThread()
	while true do
		Sleep(33)
		if lasttarget == 0 and currenttarget ~= 1 then
			lasttarget = currenttarget
		end
		if lasttarget ~= currenttarget or lastfire < Spring.GetGameFrame() - 5 then
			lockprogress = 0
			ready = false
		end
		if lockprogress > 20 and not ready and currenttarget then
			ready = true
			local x, y, z = Spring.GetUnitPosition(currenttarget)
			GG.PlayFogHiddenSound("sounds/weapon/laser/archer-trackingcomplete.wav", 2, x, y, z)
		end
		lasttarget = currenttarget
	end
end

local function Spinner()
	Signal(SIG_SPIN)
	SetSignalMask(SIG_SPIN)
	while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
		Sleep(1000)
	end
	while not aiming do
		Turn(turret, y_axis, math.rad(45), math.rad(20))
		WaitForTurn(turret, y_axis)
		Sleep(1000)
		Turn(turret, y_axis, math.rad(-45), math.rad(20))
		WaitForTurn(turret, y_axis)
		Sleep(1000)
	end
end

local function RestoreAfterDelay()
	Sleep(RESTORE_DELAY)
	Turn(launcher1, x_axis, math.rad(-30), math.rad(50))
	Turn(launcher2, x_axis, math.rad(-30), math.rad(50))
	aiming = false
	StartThread(Spinner)
end

function script.AimWeapon(num, heading, pitch)
	if num == 1 and not ready then
		return false
	end
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)

	aiming = true

	Turn(turret, y_axis, heading, math.rad(250))
	Turn(launcher1, x_axis, -pitch, math.rad(200))
	Turn(launcher2, x_axis, -pitch, math.rad(200))

	--local _, curHeading = Spring.GetUnitPieceDirection(unitID, turret)
	--local curPitch = Spring.GetUnitPieceDirection(unitID, launcher1)
	--
	--local diffHeading = math.pi - math.abs((curHeading - heading)%GG.Script.tau - math.pi)
	--local diffPitch = math.pi - math.abs((curPitch + pitch)%GG.Script.tau - math.pi)
	--
	--local sleepTime = (diffHeading/math.rad(200))*1000 - 300
	--Spring.Echo(sleepTime)
	--if sleepTime > 0 then
	--	Sleep(sleepTime)
	--end
	WaitForTurn(turret, y_axis)
	WaitForTurn(launcher1, x_axis)

	StartThread(RestoreAfterDelay)

	return true
end

local SleepAndUpdateReload = scriptReload.SleepAndUpdateReload

local function reload(num)
	scriptReload.GunStartReload(num)
	gun[num].loaded = false

	SleepAndUpdateReload(num, 6 * gameSpeed)

	if scriptReload.GunLoaded(num) then
		shot = 0
	end
	gun[num].loaded = true
	loaded = loaded + 1
end

function script.Shot(num)
	if num == 1 then
		EmitSfx(gun[shot].firepoint, GG.Script.UNIT_SFX1)
		StartThread(reload, shot)
		loaded = loaded - 1
		shot = (shot + 1)%4
	end
	if num == 2 then
		lastfire = Spring.GetGameFrame()
		lockprogress = lockprogress + 1
	end
end


function script.AimFromWeapon()
	return laser
end

function script.QueryWeapon(num, piecenum)
	if num == 2 then
		return laser
	end
	return gun[shot].firepoint
end

function script.BlockShot(num, targetID)
	currenttarget = targetID
	if num == 2 then
		return false
	end
	if gun[shot].loaded then
		return GG.Script.OverkillPreventionCheck(unitID, targetID, 420.1, 72, 30, 0.3, true)
	end
	return true
end

function script.Create()
	scriptReload.SetupScriptReload(4, 6 * gameSpeed)
	StartThread(GG.Script.SmokeUnit, unitID, {base})
	StartThread(RestoreAfterDelay)
	StartThread(TracerThread)
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if severity <= 0.25 then
		Explode(launcher1, SFX.NONE)
		Explode(launcher2, SFX.NONE)
		Explode(base, SFX.NONE)
		Explode(turret, SFX.NONE)
		return 1
	end
	if severity <= 0.50 then
		Explode(launcher1, SFX.NONE)
		Explode(launcher2, SFX.NONE)
		Explode(base, SFX.NONE)
		Explode(turret, SFX.NONE)
		return 1
	end
	if severity <= 0.99 then
		Explode(launcher1, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
		Explode(launcher2, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
		Explode(base, SFX.NONE)
		Explode(turret, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
		return 2
	end
	Explode(launcher1, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
	Explode(launcher2, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
	Explode(base, SFX.NONE)
	Explode(turret, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE_ON_HIT)
	return 2
end
