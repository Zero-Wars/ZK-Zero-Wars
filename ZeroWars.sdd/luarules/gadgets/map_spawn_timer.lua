function gadget:GetInfo()
    return {
        name = "Map spawn timer",
        desc = "Creates indicator on the map to show progress to next wave spawning",
        author = "macrodemon",
        date = "2025",
        layer = 0,
        enabled = true
    }
end

if gadgetHandler:IsSyncedCode() then
    return
end
----- Unsynced -----

local UPDATEFRAME = 30
local SPAWNFRAME = 1000
local currentFrame = 0

local spIsGUIHidden = Spring.IsGUIHidden
local spGetGroundHeight = Spring.GetGroundHeight

local glText = gl.Text
local glColor = gl.Color
local glBlending = gl.Blending
local glDepthTest = gl.DepthTest
local glDrawGroundQuad = gl.DrawGroundQuad
local glDrawGroundCircle = gl.DrawGroundCircle

local glPushMatrix = gl.PushMatrix
local glTranslate = gl.Translate
local glRotate = gl.Rotate
local glPopMatrix = gl.PopMatrix

local height = 1023
local width = 37
local x1,y1,x2,y2 = 2129, 1025, 6033, 1025


local function DrawRect()
    local percentage = ((currentFrame % SPAWNFRAME) + SPAWNFRAME) / SPAWNFRAME - 1
    local offset = height * percentage
    glPushMatrix()
    glTranslate(0, 0.5, 0)
    glColor(0,0,0,0.6)
    glDrawGroundQuad(x1, y1 , x1 + width, y1 + height - offset, false, -0.5, -0.5, 0.5, 0.5)
    glDrawGroundQuad(x2, y2 , x2 + width, y2 + height - offset, false, -0.5, -0.5, 0.5, 0.5)
    
    glColor(0.8,0.8,0,0.6)
    glDrawGroundQuad(x1, y1 + height - offset, x1 + width, y1 + height, false, -0.5, -0.5, 0.5, 0.5)
    glDrawGroundQuad(x2, y2 + height - offset, x2 + width, y2 + height, false, -0.5, -0.5, 0.5, 0.5)
    glPopMatrix()
end


function gadget:GameFrame(frame)
    --if frame > 0 and frame % SPAWNFRAME == 0 then
        currentFrame = frame
    --end
end

function gadget:DrawWorld()
	if spIsGUIHidden() then
		return
	end

	glDepthTest(true)
	glBlending(GL.SRC_ALPHA, GL.ONE_MINUS_SRC_ALPHA)
    gl.LineWidth(6.0)
    DrawRect()
    glColor(1,1,1,1)
	glDepthTest(true)
end 
