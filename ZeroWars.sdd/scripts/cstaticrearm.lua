include "constants.lua"

local base = piece 'base'
local body = piece 'body'
local land1 = piece 'land1'
local land2 = piece 'land2'
local land3 = piece 'land3'
local land4 = piece 'land4'
local radar = piece 'radar'

local nanoPieces = {radar}
local smokePiece = {base,land1,land2,land3,land4}

local spGetUnitWeaponState = Spring.GetUnitWeaponState
local spSetUnitWeaponState = Spring.SetUnitWeaponState
local spGetUnitRulesParam  = Spring.GetUnitRulesParam
local spGetGameFrame       = Spring.GetGameFrame

local waveWeaponDef = WeaponDefNames["shieldriot_blast"]
local WAVE_RELOAD = math.floor(waveWeaponDef.reload * Game.gameSpeed)
local WAVE_TIMEOUT = math.ceil(waveWeaponDef.damageAreaOfEffect / waveWeaponDef.explosionSpeed)* (1000 / Game.gameSpeed) + 200 -- empirically maximum delay of damage was (damageAreaOfEffect / explosionSpeed) - 4 frames

local SIG_ACTIVATE = 8

local function SpinRadar()
	while select(5, Spring.GetUnitHealth(unitID)) < 1 do
		Sleep(400)
	end
	Spin(radar, y_axis, math.rad(90))
end

function script.Activate()
	StartThread(SpinRadar)
end

function script.Deactivate()
	Signal(SIG_ACTIVATE)
end

function script.Create()
	pos = Spring.GetUnitPosition(unitID)
	StartThread(GG.Script.SmokeUnit, unitID, smokePiece)
	StartThread(SpinRadar)
	Spring.SetUnitNanoPieces(unitID, nanoPieces)
end

function script.QueryLandingPads()
	return {land1, land2, land3, land4}
end


function script.FireWeapon(num)

end

function script.AimWeapon(num, heading, pitch)
	return true
end

function script.AimFromWeapon(num)
	return radar
end

function script.QueryWeapon(num)
    return radar
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity <= .25 then
		Explode(base, SFX.NONE)
		Explode(land1, SFX.NONE)
		Explode(land2, SFX.NONE)
		Explode(land3, SFX.NONE)
		Explode(land4, SFX.NONE)
		return 1
	elseif severity <= .50 then
		Explode(base, SFX.NONE)
		Explode(body, SFX.SHATTER)
		Explode(land1, SFX.NONE)
		Explode(land2, SFX.NONE)
		Explode(land3, SFX.NONE)
		Explode(land4, SFX.NONE)
		Explode(radar, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE)
		return 1
	elseif severity <= .99 then
		Explode(base, SFX.NONE)
		Explode(body, SFX.SHATTER)
		Explode(land1, SFX.NONE)
		Explode(land2, SFX.NONE)
		Explode(land3, SFX.NONE)
		Explode(land4, SFX.NONE)
		Explode(radar, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE)
		return 2
	else
		Explode(base, SFX.NONE)
		Explode(body, SFX.SHATTER)
		Explode(land1, SFX.NONE)
		Explode(land2, SFX.NONE)
		Explode(land3, SFX.NONE)
		Explode(land4, SFX.NONE)
		Explode(radar, SFX.FALL + SFX.SMOKE + SFX.FIRE + SFX.EXPLODE)
		return 2
	end
end